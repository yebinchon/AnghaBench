
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int webm ;
typedef int uint8_t ;
typedef int opus ;
typedef int oggs ;
struct TYPE_5__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_6__ {int send_started; int hd; int content_type; } ;
typedef TYPE_2__ IcecastContext ;


 int AV_LOG_WARNING ;
 int av_log (TYPE_1__*,int ,char*) ;
 int ffurl_write (int ,int const*,int) ;
 scalar_t__ memcmp (int const*,int const*,int) ;

__attribute__((used)) static int icecast_write(URLContext *h, const uint8_t *buf, int size)
{
    IcecastContext *s = h->priv_data;
    if (!s->send_started) {
        s->send_started = 1;
        if (!s->content_type && size >= 8) {
            static const uint8_t oggs[4] = { 0x4F, 0x67, 0x67, 0x53 };
            static const uint8_t webm[4] = { 0x1A, 0x45, 0xDF, 0xA3 };
            static const uint8_t opus[8] = { 0x4F, 0x70, 0x75, 0x73, 0x48, 0x65, 0x61, 0x64 };
            if (memcmp(buf, oggs, sizeof(oggs)) == 0) {
                av_log(h, AV_LOG_WARNING, "Streaming Ogg but appropriate content type NOT set!\n");
                av_log(h, AV_LOG_WARNING, "Set it with -content_type application/ogg\n");
            } else if (memcmp(buf, opus, sizeof(opus)) == 0) {
                av_log(h, AV_LOG_WARNING, "Streaming Opus but appropriate content type NOT set!\n");
                av_log(h, AV_LOG_WARNING, "Set it with -content_type audio/ogg\n");
            } else if (memcmp(buf, webm, sizeof(webm)) == 0) {
                av_log(h, AV_LOG_WARNING, "Streaming WebM but appropriate content type NOT set!\n");
                av_log(h, AV_LOG_WARNING, "Set it with -content_type video/webm\n");
            } else {
                av_log(h, AV_LOG_WARNING, "It seems you are streaming an unsupported format.\n");
                av_log(h, AV_LOG_WARNING, "It might work, but is not officially supported in Icecast!\n");
            }
        }
    }
    return ffurl_write(s->hd, buf, size);
}
