
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct section {int id; scalar_t__ name; scalar_t__ unique_name; } ;
typedef int AVDictionary ;


 int AV_LOG_DEBUG ;
 int FF_ARRAY_ELEMS (struct section*) ;
 int av_log (int *,int ,char*,char const*,char*) ;
 scalar_t__ av_x_if_null (scalar_t__,scalar_t__) ;
 int mark_section_show_entries (int ,int,int *) ;
 struct section* sections ;
 int strcmp (char const*,scalar_t__) ;

__attribute__((used)) static int match_section(const char *section_name,
                         int show_all_entries, AVDictionary *entries)
{
    int i, ret = 0;

    for (i = 0; i < FF_ARRAY_ELEMS(sections); i++) {
        const struct section *section = &sections[i];
        if (!strcmp(section_name, section->name) ||
            (section->unique_name && !strcmp(section_name, section->unique_name))) {
            av_log(((void*)0), AV_LOG_DEBUG,
                   "'%s' matches section with unique name '%s'\n", section_name,
                   (char *)av_x_if_null(section->unique_name, section->name));
            ret++;
            mark_section_show_entries(section->id, show_all_entries, entries);
        }
    }
    return ret;
}
