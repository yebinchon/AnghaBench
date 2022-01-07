
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int metadata; } ;
typedef int ID3v2ExtraMeta ;
typedef TYPE_1__ AVFormatContext ;


 int ff_id3v2_parse_priv_dict (int *,int **) ;

int ff_id3v2_parse_priv(AVFormatContext *s, ID3v2ExtraMeta **extra_meta)
{
    return ff_id3v2_parse_priv_dict(&s->metadata, extra_meta);
}
