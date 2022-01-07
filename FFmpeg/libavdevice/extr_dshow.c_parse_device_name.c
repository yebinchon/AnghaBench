
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dshow_ctx {char** device_name; } ;
struct TYPE_3__ {char* url; struct dshow_ctx* priv_data; } ;
typedef TYPE_1__ AVFormatContext ;


 int av_free (char*) ;
 char* av_strdup (char*) ;
 int strcmp (char*,char*) ;
 char* strtok (char*,char*) ;

__attribute__((used)) static int parse_device_name(AVFormatContext *avctx)
{
    struct dshow_ctx *ctx = avctx->priv_data;
    char **device_name = ctx->device_name;
    char *name = av_strdup(avctx->url);
    char *tmp = name;
    int ret = 1;
    char *type;

    while ((type = strtok(tmp, "="))) {
        char *token = strtok(((void*)0), ":");
        tmp = ((void*)0);

        if (!strcmp(type, "video")) {
            device_name[0] = token;
        } else if (!strcmp(type, "audio")) {
            device_name[1] = token;
        } else {
            device_name[0] = ((void*)0);
            device_name[1] = ((void*)0);
            break;
        }
    }

    if (!device_name[0] && !device_name[1]) {
        ret = 0;
    } else {
        if (device_name[0])
            device_name[0] = av_strdup(device_name[0]);
        if (device_name[1])
            device_name[1] = av_strdup(device_name[1]);
    }

    av_free(name);
    return ret;
}
