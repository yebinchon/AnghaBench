
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int file_list_t ;


 int menu_entries_get_at_offset (int *,unsigned int,int *,int *,int *,int *,char const**) ;
 int strlcpy (char*,char const*,size_t) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void menu_action_setting_disp_set_label_menu_file_url_core(
      file_list_t* list,
      unsigned *w, unsigned type, unsigned i,
      const char *label,
      char *s, size_t len,
      const char *path,
      char *s2, size_t len2)
{
   const char *alt = ((void*)0);
   strlcpy(s, "(CORE)", len);

   menu_entries_get_at_offset(list, i, ((void*)0),
         ((void*)0), ((void*)0), ((void*)0), &alt);

   *w = (unsigned)strlen(s);
   if (alt)
      strlcpy(s2, alt, len2);
}
