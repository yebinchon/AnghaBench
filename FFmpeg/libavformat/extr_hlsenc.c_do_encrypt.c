
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef int key ;
typedef int iv ;
struct TYPE_8__ {int sequence; } ;
typedef TYPE_1__ VariantStream ;
struct TYPE_9__ {char* iv; char* key_string; char* key; int (* io_open ) (TYPE_2__*,int **,int *,int ,int *) ;int * key_file; int * key_uri; int * iv_string; int * key_basename; int * key_url; int * url; struct TYPE_9__* priv_data; } ;
typedef TYPE_2__ HLSContext ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVIO_FLAG_WRITE ;
 int AV_LOG_ERROR ;
 int AV_WB64 (int *,int ) ;
 int EINVAL ;
 int ENOMEM ;
 int KEYSIZE ;
 int SEEK_CUR ;
 int av_log (TYPE_2__*,int ,char*) ;
 int * av_mallocz (int) ;
 int av_strlcat (int *,char*,int) ;
 int av_strlcpy (int *,int *,int) ;
 int avio_close (int *) ;
 int avio_seek (int *,int ,int ) ;
 int avio_write (int *,int *,int) ;
 int ff_data_to_hex (char*,int *,int,int ) ;
 int memcpy (int *,char*,int) ;
 int randomize (int *,int) ;
 int strlen (int *) ;
 int stub1 (TYPE_2__*,int **,int *,int ,int *) ;

__attribute__((used)) static int do_encrypt(AVFormatContext *s, VariantStream *vs)
{
    HLSContext *hls = s->priv_data;
    int ret;
    int len;
    AVIOContext *pb;
    uint8_t key[KEYSIZE];

    len = strlen(s->url) + 4 + 1;
    hls->key_basename = av_mallocz(len);
    if (!hls->key_basename)
        return AVERROR(ENOMEM);

    av_strlcpy(hls->key_basename, s->url, len);
    av_strlcat(hls->key_basename, ".key", len);

    if (hls->key_url) {
        av_strlcpy(hls->key_file, hls->key_url, sizeof(hls->key_file));
        av_strlcpy(hls->key_uri, hls->key_url, sizeof(hls->key_uri));
    } else {
        av_strlcpy(hls->key_file, hls->key_basename, sizeof(hls->key_file));
        av_strlcpy(hls->key_uri, hls->key_basename, sizeof(hls->key_uri));
    }

    if (!*hls->iv_string) {
        uint8_t iv[16] = { 0 };
        char buf[33];

        if (!hls->iv) {
            AV_WB64(iv + 8, vs->sequence);
        } else {
            memcpy(iv, hls->iv, sizeof(iv));
        }
        ff_data_to_hex(buf, iv, sizeof(iv), 0);
        buf[32] = '\0';
        memcpy(hls->iv_string, buf, sizeof(hls->iv_string));
    }

    if (!*hls->key_uri) {
        av_log(hls, AV_LOG_ERROR, "no key URI specified in key info file\n");
        return AVERROR(EINVAL);
    }

    if (!*hls->key_file) {
        av_log(hls, AV_LOG_ERROR, "no key file specified in key info file\n");
        return AVERROR(EINVAL);
    }

    if (!*hls->key_string) {
        if (!hls->key) {
            if ((ret = randomize(key, sizeof(key))) < 0) {
                av_log(s, AV_LOG_ERROR, "Cannot generate a strong random key\n");
                return ret;
            }
        } else {
            memcpy(key, hls->key, sizeof(key));
        }

        ff_data_to_hex(hls->key_string, key, sizeof(key), 0);
        if ((ret = s->io_open(s, &pb, hls->key_file, AVIO_FLAG_WRITE, ((void*)0))) < 0)
            return ret;
        avio_seek(pb, 0, SEEK_CUR);
        avio_write(pb, key, KEYSIZE);
        avio_close(pb);
    }
    return 0;
}
