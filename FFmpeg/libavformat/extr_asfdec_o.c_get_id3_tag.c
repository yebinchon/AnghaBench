
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ID3v2ExtraMeta ;
typedef int AVFormatContext ;


 int ID3v2_DEFAULT_MAGIC ;
 int ff_id3v2_free_extra_meta (int **) ;
 int ff_id3v2_parse_apic (int *,int **) ;
 int ff_id3v2_parse_chapters (int *,int **) ;
 int ff_id3v2_read (int *,int ,int **,int) ;

__attribute__((used)) static void get_id3_tag(AVFormatContext *s, int len)
{
    ID3v2ExtraMeta *id3v2_extra_meta = ((void*)0);

    ff_id3v2_read(s, ID3v2_DEFAULT_MAGIC, &id3v2_extra_meta, len);
    if (id3v2_extra_meta) {
        ff_id3v2_parse_apic(s, &id3v2_extra_meta);
        ff_id3v2_parse_chapters(s, &id3v2_extra_meta);
    }
    ff_id3v2_free_extra_meta(&id3v2_extra_meta);
}
