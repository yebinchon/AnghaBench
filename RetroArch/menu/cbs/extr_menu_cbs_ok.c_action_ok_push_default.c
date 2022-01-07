
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACTION_OK_DL_PUSH_DEFAULT ;
 int filebrowser_clear_type () ;
 int generic_action_ok_displaylist_push (char const*,int *,char const*,unsigned int,size_t,size_t,int ) ;

__attribute__((used)) static int action_ok_push_default(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   filebrowser_clear_type();
   return generic_action_ok_displaylist_push(path, ((void*)0), label, type, idx,
         entry_idx, ACTION_OK_DL_PUSH_DEFAULT);
}
