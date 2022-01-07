
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_3__ {int Ready; int lock; scalar_t__ c; } ;
typedef TYPE_1__ COUNTER ;


 int KS_CURRENT_COUNT ;
 int KS_INC (int ) ;
 int KS_INC_COUNT ;
 int Lock (int ) ;
 int Unlock (int ) ;

UINT Inc(COUNTER *c)
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
  c->c++;
  ret = c->c;
 }
 Unlock(c->lock);


 KS_INC(KS_INC_COUNT);
 KS_INC(KS_CURRENT_COUNT);

 return ret;
}
