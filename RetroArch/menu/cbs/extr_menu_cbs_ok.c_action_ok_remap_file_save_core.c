
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACTION_OK_REMAP_FILE_SAVE_CORE ;
 int generic_action_ok_remap_file_operation (char const*,char const*,unsigned int,size_t,size_t,int ) ;

__attribute__((used)) static int action_ok_remap_file_save_core(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   return generic_action_ok_remap_file_operation(path, label, type,
         idx, entry_idx, ACTION_OK_REMAP_FILE_SAVE_CORE);
}
