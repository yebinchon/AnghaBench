
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_5__ {TYPE_1__* Cedar; int * Account; } ;
struct TYPE_4__ {int * Client; } ;
typedef TYPE_2__ SESSION ;


 int CiNotify (int *) ;

void Notify(SESSION *s, UINT code)
{

 if (s == ((void*)0) || s->Account == ((void*)0) || s->Cedar->Client == ((void*)0))
 {
  return;
 }

 CiNotify(s->Cedar->Client);
}
