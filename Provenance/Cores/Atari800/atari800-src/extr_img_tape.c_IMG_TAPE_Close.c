
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* buffer; int file; scalar_t__ was_writing; } ;
typedef TYPE_1__ IMG_TAPE_t ;


 int CassetteFlush (TYPE_1__*) ;
 int fclose (int ) ;
 int free (TYPE_1__*) ;

void IMG_TAPE_Close(IMG_TAPE_t *file)
{
 if (file->was_writing)
  CassetteFlush(file);
 fclose(file->file);
 free(file->buffer);
 free(file);
}
