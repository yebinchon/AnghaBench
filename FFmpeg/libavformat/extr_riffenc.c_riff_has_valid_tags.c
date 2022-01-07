
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int metadata; } ;
typedef TYPE_1__ AVFormatContext ;


 int AV_DICT_MATCH_CASE ;
 scalar_t__ av_dict_get (int ,scalar_t__*,int *,int ) ;
 scalar_t__** riff_tags ;

__attribute__((used)) static int riff_has_valid_tags(AVFormatContext *s)
{
    int i;

    for (i = 0; *riff_tags[i]; i++)
        if (av_dict_get(s->metadata, riff_tags[i], ((void*)0), AV_DICT_MATCH_CASE))
            return 1;

    return 0;
}
