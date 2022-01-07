
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FILEBROWSER_SELECT_FONT ;
 int action_ok_lookup_setting (char const*,char const*,unsigned int,size_t,size_t) ;
 int filebrowser_set_type (int ) ;

__attribute__((used)) static int action_ok_menu_font(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   filebrowser_set_type(FILEBROWSER_SELECT_FONT);
   return action_ok_lookup_setting(path, label, type, idx, entry_idx);
}
