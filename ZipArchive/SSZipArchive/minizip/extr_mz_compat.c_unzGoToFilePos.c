
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int num_of_file; int pos_in_zip_directory; } ;
typedef TYPE_1__ unz_file_pos ;
typedef scalar_t__ unzFile ;
struct TYPE_6__ {int num_of_file; int pos_in_zip_directory; } ;
typedef TYPE_2__ unz64_file_pos ;
typedef int mz_compat ;


 int UNZ_PARAMERROR ;
 int unzGoToFilePos64 (scalar_t__,TYPE_2__*) ;

int unzGoToFilePos(unzFile file, unz_file_pos *file_pos)
{
    mz_compat *compat = (mz_compat *)file;
    unz64_file_pos file_pos64;

    if (compat == ((void*)0) || file_pos == ((void*)0))
        return UNZ_PARAMERROR;

    file_pos64.pos_in_zip_directory = file_pos->pos_in_zip_directory;
    file_pos64.num_of_file = file_pos->num_of_file;

    return unzGoToFilePos64(file, &file_pos64);
}
