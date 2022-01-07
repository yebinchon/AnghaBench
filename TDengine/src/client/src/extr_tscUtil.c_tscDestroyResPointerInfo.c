
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int numOfnchar; int * bytes; int ** buffer; int * tsrow; } ;
typedef TYPE_1__ SSqlRes ;


 int tfree (int *) ;

void tscDestroyResPointerInfo(SSqlRes* pRes) {

  for (int i = 0; i < pRes->numOfnchar; i++) {
    if (pRes->buffer[i] != ((void*)0)) {
      tfree(pRes->buffer[i]);
    }
  }

  tfree(pRes->tsrow);

  pRes->numOfnchar = 0;
  pRes->buffer = ((void*)0);
  pRes->bytes = ((void*)0);
}
