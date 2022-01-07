
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_8__ {TYPE_2__* Account; TYPE_1__* Cedar; } ;
struct TYPE_7__ {int (* StatusPrinter ) (TYPE_3__*,int *) ;} ;
struct TYPE_6__ {int * Client; } ;
typedef TYPE_3__ SESSION ;


 int stub1 (TYPE_3__*,int *) ;

void PrintStatus(SESSION *s, wchar_t *str)
{

 if (s == ((void*)0) || str == ((void*)0) || s->Account == ((void*)0) || s->Cedar->Client == ((void*)0)
  || s->Account->StatusPrinter == ((void*)0))
 {
  return;
 }


 s->Account->StatusPrinter(s, str);
}
