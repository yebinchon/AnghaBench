
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int metadata; } ;
typedef int AVIOContext ;
typedef TYPE_1__ AVFormatContext ;


 int AV_DICT_DONT_STRDUP_VAL ;
 int av_dict_set (int *,char const*,char*,int ) ;
 int av_free (char*) ;
 char* av_malloc (unsigned int) ;
 int avio_read (int *,char*,unsigned int) ;
 int avio_skip (int *,unsigned int) ;

__attribute__((used)) static void read_string(AVFormatContext *avctx, AVIOContext *pb, const char *tag, unsigned size)
{
    char * value = av_malloc(size + 1);
    if (!value) {
        avio_skip(pb, size);
        return;
    }

    avio_read(pb, value, size);
    if (!value[0]) {
        av_free(value);
        return;
    }

    value[size] = 0;
    av_dict_set(&avctx->metadata, tag, value, AV_DICT_DONT_STRDUP_VAL);
}
