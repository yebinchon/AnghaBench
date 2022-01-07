
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ size; int schemas; } ;
typedef int STgSchema ;


 int calloc (int,int) ;
 int tgFreeSchemas () ;
 TYPE_1__ tgSchemas ;

void tgInitSchemas(int size) {
  tgFreeSchemas();
  tgSchemas.schemas = calloc(sizeof(STgSchema), size);
  tgSchemas.size = 0;
}
