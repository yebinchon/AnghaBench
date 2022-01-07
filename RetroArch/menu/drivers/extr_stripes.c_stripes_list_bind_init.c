
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int menu_file_list_cbs_t ;


 scalar_t__ stripes_list_bind_init_compare_label (int *) ;

__attribute__((used)) static int stripes_list_bind_init(menu_file_list_cbs_t *cbs,
      const char *path, const char *label, unsigned type, size_t idx)
{
   if (stripes_list_bind_init_compare_label(cbs) == 0)
      return 0;

   return -1;
}
