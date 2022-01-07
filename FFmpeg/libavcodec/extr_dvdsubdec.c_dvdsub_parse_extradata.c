
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int extradata_size; int extradata; scalar_t__ priv_data; } ;
typedef int DVDSubContext ;
typedef TYPE_1__ AVCodecContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_free (char*) ;
 char* av_malloc (int) ;
 int ff_set_dimensions (TYPE_1__*,int,int) ;
 int memcpy (char*,int ,int) ;
 int parse_palette (int *,char*) ;
 int sscanf (char*,char*,int*,int*) ;
 int strcspn (char*,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int strspn (char*,char*) ;

__attribute__((used)) static int dvdsub_parse_extradata(AVCodecContext *avctx)
{
    DVDSubContext *ctx = (DVDSubContext*) avctx->priv_data;
    char *dataorig, *data;
    int ret = 1;

    if (!avctx->extradata || !avctx->extradata_size)
        return 1;

    dataorig = data = av_malloc(avctx->extradata_size+1);
    if (!data)
        return AVERROR(ENOMEM);
    memcpy(data, avctx->extradata, avctx->extradata_size);
    data[avctx->extradata_size] = '\0';

    for(;;) {
        int pos = strcspn(data, "\n\r");
        if (pos==0 && *data==0)
            break;

        if (strncmp("palette:", data, 8) == 0) {
            parse_palette(ctx, data + 8);
        } else if (strncmp("size:", data, 5) == 0) {
            int w, h;
            if (sscanf(data + 5, "%dx%d", &w, &h) == 2) {
               ret = ff_set_dimensions(avctx, w, h);
               if (ret < 0)
                   goto fail;
            }
        }

        data += pos;
        data += strspn(data, "\n\r");
    }

fail:
    av_free(dataorig);
    return ret;
}
