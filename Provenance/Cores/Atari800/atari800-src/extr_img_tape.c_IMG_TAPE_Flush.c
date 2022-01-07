
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ was_writing; } ;
typedef TYPE_1__ IMG_TAPE_t ;


 int CassetteFlush (TYPE_1__*) ;
 int TRUE ;

int IMG_TAPE_Flush(IMG_TAPE_t *file)
{
 if (file->was_writing)
  return CassetteFlush(file);
 return TRUE;
}
