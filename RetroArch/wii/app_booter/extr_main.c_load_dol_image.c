
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int* text_start; int* text_pos; int* data_start; int* data_pos; int entry_point; int * data_size; int * text_size; } ;
typedef TYPE_1__ dolheader ;


 int memcpy (void*,void const*,int ) ;
 int sync_before_exec (void*,int ) ;

__attribute__((used)) static uint32_t load_dol_image(const void *dolstart)
{
 uint32_t i;
   dolheader *dolfile = ((void*)0);

 if(!dolstart)
  return 0;

 dolfile = (dolheader *) dolstart;

 for (i = 0; i < 7; i++)
 {
  if ((!dolfile->text_size[i]) || (dolfile->text_start[i] < 0x100))
   continue;

  memcpy((void *) dolfile->text_start[i], dolstart + dolfile->text_pos[i], dolfile->text_size[i]);
  sync_before_exec((void *) dolfile->text_start[i], dolfile->text_size[i]);
 }

 for (i = 0; i < 11; i++)
 {
  if ((!dolfile->data_size[i]) || (dolfile->data_start[i] < 0x100))
   continue;

  memcpy((void *) dolfile->data_start[i], dolstart + dolfile->data_pos[i], dolfile->data_size[i]);
  sync_before_exec((void *) dolfile->data_start[i], dolfile->data_size[i]);
 }

 return dolfile->entry_point;
}
