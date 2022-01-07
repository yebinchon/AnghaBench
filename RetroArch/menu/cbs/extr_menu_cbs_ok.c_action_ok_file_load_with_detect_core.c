
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSG_UNKNOWN ;
 int file_load_with_detect_core_wrapper (int ,size_t,size_t,char const*,char const*,unsigned int,int) ;

__attribute__((used)) static int action_ok_file_load_with_detect_core(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{

   type = 0;
   label = ((void*)0);

   return file_load_with_detect_core_wrapper(
         MSG_UNKNOWN, idx, entry_idx,
         path, label, type, 0);
}
