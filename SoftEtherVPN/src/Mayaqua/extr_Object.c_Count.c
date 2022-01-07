
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int Ready; int lock; int c; } ;
typedef TYPE_1__ COUNTER ;


 int Lock (int ) ;
 int Unlock (int ) ;

UINT Count(COUNTER *c)
{
 UINT ret;

 if (c == ((void*)0))
 {
  return 0;
 }
 if (c->Ready == 0)
 {
  return 0;
 }

 Lock(c->lock);
 {
  ret = c->c;
 }
 Unlock(c->lock);

 return ret;
}
