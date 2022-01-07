
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * Keep; } ;
typedef TYPE_1__ CLIENT ;


 int StopKeep (int *) ;

void CiFreeKeep(CLIENT *c)
{

 if (c == ((void*)0))
 {
  return;
 }

 StopKeep(c->Keep);
 c->Keep = ((void*)0);
}
