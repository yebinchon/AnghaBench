
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACTION_OK_SET_DIRECTORY ;
 int MSG_UNKNOWN ;
 int filebrowser_clear_type () ;
 int generic_action_ok (int *,char const*,unsigned int,size_t,size_t,int ,int ) ;

int action_ok_path_use_directory(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   filebrowser_clear_type();
   return generic_action_ok(((void*)0), label, type, idx, entry_idx,
         ACTION_OK_SET_DIRECTORY, MSG_UNKNOWN);
}
