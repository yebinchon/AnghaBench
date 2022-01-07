
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int metadata; int pb; } ;
typedef int ID3v2ExtraMeta ;
typedef TYPE_1__ AVFormatContext ;


 int id3v2_read_internal (int ,int *,TYPE_1__*,char const*,int **,unsigned int) ;

void ff_id3v2_read(AVFormatContext *s, const char *magic,
                   ID3v2ExtraMeta **extra_meta, unsigned int max_search_size)
{
    id3v2_read_internal(s->pb, &s->metadata, s, magic, extra_meta, max_search_size);
}
