
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_5__ {TYPE_1__* Session; } ;
struct TYPE_4__ {int Timeout; } ;
typedef TYPE_2__ CONNECTION ;


 int INFINITE ;
 int MAX (int,int) ;
 int rand () ;

UINT GenNextKeepAliveSpan(CONNECTION *c)
{
 UINT a, b;

 if (c == ((void*)0))
 {
  return INFINITE;
 }

 a = c->Session->Timeout;
 b = rand() % (a / 2);
 b = MAX(b, a / 5);

 return b;
}
