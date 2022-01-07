
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int ref; } ;
struct TYPE_5__ {TYPE_2__* Cancel; } ;
typedef TYPE_1__ ETH ;
typedef TYPE_2__ CANCEL ;


 int AddRef (int ) ;

CANCEL *EthGetCancel(ETH *e)
{
 CANCEL *c;

 if (e == ((void*)0))
 {
  return ((void*)0);
 }

 c = e->Cancel;
 AddRef(c->ref);

 return c;
}
