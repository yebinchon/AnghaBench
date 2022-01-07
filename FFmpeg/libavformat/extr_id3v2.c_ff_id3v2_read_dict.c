
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ID3v2ExtraMeta ;
typedef int AVIOContext ;
typedef int AVDictionary ;


 int id3v2_read_internal (int *,int **,int *,char const*,int **,int ) ;

void ff_id3v2_read_dict(AVIOContext *pb, AVDictionary **metadata,
                        const char *magic, ID3v2ExtraMeta **extra_meta)
{
    id3v2_read_internal(pb, metadata, ((void*)0), magic, extra_meta, 0);
}
