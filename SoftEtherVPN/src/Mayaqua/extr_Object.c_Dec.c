
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_3__ {int Ready; scalar_t__ c; int lock; } ;
typedef TYPE_1__ COUNTER ;


 int KS_CURRENT_COUNT ;
 int KS_DEC (int ) ;
 int KS_DEC_COUNT ;
 int KS_INC (int ) ;
 int Lock (int ) ;
 int Unlock (int ) ;

UINT Dec(COUNTER *c)
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
  if (c->c != 0)
  {
   c->c--;
   ret = c->c;
  }
  else
  {
   ret = 0;
  }
 }
 Unlock(c->lock);


 KS_INC(KS_DEC_COUNT);
 KS_DEC(KS_CURRENT_COUNT);

 return ret;
}
