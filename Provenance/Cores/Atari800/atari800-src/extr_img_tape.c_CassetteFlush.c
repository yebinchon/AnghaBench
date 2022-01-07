
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ block_length; int file; } ;
typedef TYPE_1__ IMG_TAPE_t ;


 int TRUE ;
 scalar_t__ WriteRecord (TYPE_1__*) ;
 scalar_t__ fflush (int ) ;

__attribute__((used)) static int CassetteFlush(IMG_TAPE_t *file)
{
 if (file->block_length > 0)
  return WriteRecord(file) && fflush(file->file) == 0;
 return TRUE;
}
