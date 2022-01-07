
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ssize_t ;
typedef scalar_t__ int64_t ;


 int apply_patch_content (int **,int *,char*,char const*,int ,void*,scalar_t__) ;
 int filestream_read_file (char const*,void**,scalar_t__*) ;
 int free (void*) ;
 scalar_t__ path_is_valid (char const*) ;
 int string_is_empty (char const*) ;
 int ups_apply_patch ;

__attribute__((used)) static bool try_ups_patch(bool allow_ups, const char *name_ups,
      uint8_t **buf, ssize_t *size)
{
   if (allow_ups && !string_is_empty(name_ups))
      if (path_is_valid(name_ups))
      {
         int64_t patch_size;
         bool ret = 0;
         void *patch_data = ((void*)0);

         if (!filestream_read_file(name_ups, &patch_data, &patch_size))
            return 0;

         if (patch_size >= 0)
         {
            ret = apply_patch_content(
                  buf, size, "UPS", name_ups,
                  ups_apply_patch, patch_data, patch_size);
         }

         if (patch_data)
            free(patch_data);
         return ret;
      }
   return 0;
}
