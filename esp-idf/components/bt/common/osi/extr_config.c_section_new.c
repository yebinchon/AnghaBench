
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int entries; int name; } ;
typedef TYPE_1__ section_t ;


 int entry_free ;
 int list_new (int ) ;
 TYPE_1__* osi_calloc (int) ;
 int osi_strdup (char const*) ;

__attribute__((used)) static section_t *section_new(const char *name)
{
    section_t *section = osi_calloc(sizeof(section_t));
    if (!section) {
        return ((void*)0);
    }

    section->name = osi_strdup(name);
    section->entries = list_new(entry_free);
    return section;
}
