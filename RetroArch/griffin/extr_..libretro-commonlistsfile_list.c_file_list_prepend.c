
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int file_list_t ;


 int file_list_insert (int *,char const*,char const*,unsigned int,size_t,size_t,int ) ;

bool file_list_prepend(file_list_t *list,
      const char *path, const char *label,
      unsigned type, size_t directory_ptr,
      size_t entry_idx)
{
   return file_list_insert(list, path,
      label, type,
      directory_ptr, entry_idx,
      0
   );
}
