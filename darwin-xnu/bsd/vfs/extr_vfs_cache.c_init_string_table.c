
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG_VFS_NAMES ;
 int M_CACHE ;
 int hashinit (int ,int ,int *) ;
 int string_ref_table ;
 int string_table_mask ;

__attribute__((used)) static void
init_string_table(void)
{
 string_ref_table = hashinit(CONFIG_VFS_NAMES, M_CACHE, &string_table_mask);
}
