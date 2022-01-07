
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SECTION_ID_LIBRARY_VERSION ;
 int SECTION_ID_PROGRAM_VERSION ;
 int mark_section_show_entries (int ,int,int *) ;

__attribute__((used)) static int opt_show_versions(void *optctx, const char *opt, const char *arg)
{
    mark_section_show_entries(SECTION_ID_PROGRAM_VERSION, 1, ((void*)0));
    mark_section_show_entries(SECTION_ID_LIBRARY_VERSION, 1, ((void*)0));
    return 0;
}
