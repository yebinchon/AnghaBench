
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; int * schemas; } ;


 int free (int *) ;
 int tgFreeSchema (int *) ;
 TYPE_1__ tgSchemas ;

void tgFreeSchemas() {
  if (tgSchemas.schemas != ((void*)0)) {
    for (int s = 0; s < tgSchemas.size; ++s) {
      tgFreeSchema(&tgSchemas.schemas[s]);
    }
    free(tgSchemas.schemas);
    tgSchemas.size = 0;
  }
}
