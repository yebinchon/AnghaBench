
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int symbols; } ;
typedef TYPE_1__ Coin ;


 int uivector_init (int *) ;

__attribute__((used)) static void coin_init(Coin* c)
{
  uivector_init(&c->symbols);
}
