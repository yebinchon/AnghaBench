
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * value; int * name; } ;
typedef TYPE_1__ YuiRangeItem ;
struct TYPE_6__ {char* Name; int id; } ;
typedef TYPE_2__ GenericInterface_struct ;


 TYPE_1__* malloc (int) ;
 int sprintf (char*,char*,int) ;
 void* strdup (char*) ;

void cores_to_range(void * pointer, YuiRangeItem ** items) {
 GenericInterface_struct ** cores;
 GenericInterface_struct * core;
 int i;

 if (*items != ((void*)0)) return;

 cores = pointer;

 i = 0;
 core = cores[i];
 while(core) {
  i++;
  core = cores[i];
 }
 *items = malloc(sizeof(YuiRangeItem) * (i + 1));
 i = 0;
 core = cores[i];
 while(core) {
  char buffer[1024];
  (*items)[i].name = strdup(core->Name);
  sprintf(buffer, "%d", core->id);
  (*items)[i].value = strdup(buffer);
  i++;
  core = cores[i];
 }
 (*items)[i].name = ((void*)0);
 (*items)[i].value = ((void*)0);
}
