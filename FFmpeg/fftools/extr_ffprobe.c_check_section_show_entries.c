
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct section {int* children_ids; scalar_t__ entries_to_show; scalar_t__ show_all_entries; } ;


 struct section* sections ;

__attribute__((used)) static inline int check_section_show_entries(int section_id)
{
    int *id;
    struct section *section = &sections[section_id];
    if (sections[section_id].show_all_entries || sections[section_id].entries_to_show)
        return 1;
    for (id = section->children_ids; *id != -1; id++)
        if (check_section_show_entries(*id))
            return 1;
    return 0;
}
