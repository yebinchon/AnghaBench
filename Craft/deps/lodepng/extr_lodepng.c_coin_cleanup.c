
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int symbols; } ;
typedef TYPE_1__ Coin ;


 int uivector_cleanup (int *) ;

__attribute__((used)) static void coin_cleanup(void* c)
{
  uivector_cleanup(&((Coin*)c)->symbols);
}
