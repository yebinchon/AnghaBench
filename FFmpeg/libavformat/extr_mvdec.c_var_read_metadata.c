
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int metadata; int pb; } ;
typedef TYPE_1__ AVFormatContext ;


 int AV_DICT_DONT_STRDUP_VAL ;
 int av_dict_set (int *,char const*,char*,int ) ;
 char* var_read_string (int ,int) ;

__attribute__((used)) static void var_read_metadata(AVFormatContext *avctx, const char *tag, int size)
{
    char *value = var_read_string(avctx->pb, size);
    if (value)
        av_dict_set(&avctx->metadata, tag, value, AV_DICT_DONT_STRDUP_VAL);
}
