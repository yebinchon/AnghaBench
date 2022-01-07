
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int metadata; } ;
typedef TYPE_1__ AVFormatContext ;


 int av_dict_set (int *,char const*,char const*,int ) ;

__attribute__((used)) static void add_meta(AVFormatContext *s, const char *name, const char *value)
{
    if (value && value[0])
        av_dict_set(&s->metadata, name, value, 0);
}
