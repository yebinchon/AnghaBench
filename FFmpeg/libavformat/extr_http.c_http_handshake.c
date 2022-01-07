
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_10__ {int handshake_step; int is_connected_server; int reply_code; TYPE_1__* hd; } ;
typedef TYPE_2__ HTTPContext ;


 int AVERROR (int ) ;
 int AV_LOG_TRACE ;
 int EINVAL ;




 int av_log (TYPE_1__*,int ,char*,...) ;
 int ffurl_handshake (TYPE_1__*) ;
 int handle_http_errors (TYPE_1__*,int) ;
 int http_read_header (TYPE_1__*,int*) ;
 int http_write_reply (TYPE_1__*,int ) ;

__attribute__((used)) static int http_handshake(URLContext *c)
{
    int ret, err, new_location;
    HTTPContext *ch = c->priv_data;
    URLContext *cl = ch->hd;
    switch (ch->handshake_step) {
    case 130:
        av_log(c, AV_LOG_TRACE, "Lower protocol\n");
        if ((ret = ffurl_handshake(cl)) > 0)
            return 2 + ret;
        if (ret < 0)
            return ret;
        ch->handshake_step = 129;
        ch->is_connected_server = 1;
        return 2;
    case 129:
        av_log(c, AV_LOG_TRACE, "Read headers\n");
        if ((err = http_read_header(c, &new_location)) < 0) {
            handle_http_errors(c, err);
            return err;
        }
        ch->handshake_step = 128;
        return 1;
    case 128:
        av_log(c, AV_LOG_TRACE, "Reply code: %d\n", ch->reply_code);
        if ((err = http_write_reply(c, ch->reply_code)) < 0)
            return err;
        ch->handshake_step = 131;
        return 1;
    case 131:
        return 0;
    }

    return AVERROR(EINVAL);
}
