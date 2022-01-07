
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* num_of_file; void* pos_in_zip_directory; } ;
typedef TYPE_1__ unz_file_pos ;
typedef scalar_t__ unzFile ;
typedef void* uint32_t ;
struct TYPE_5__ {scalar_t__ entry_index; } ;
typedef TYPE_2__ mz_compat ;
typedef scalar_t__ int32_t ;


 int MZ_OK ;
 int UNZ_PARAMERROR ;
 scalar_t__ unzGetOffset (scalar_t__) ;

int unzGetFilePos(unzFile file, unz_file_pos *file_pos)
{
    mz_compat *compat = (mz_compat *)file;
    int32_t offset = 0;

    if (compat == ((void*)0) || file_pos == ((void*)0))
        return UNZ_PARAMERROR;

    offset = unzGetOffset(file);
    if (offset < 0)
        return offset;

    file_pos->pos_in_zip_directory = (uint32_t)offset;
    file_pos->num_of_file = (uint32_t)compat->entry_index;
    return MZ_OK;
}
