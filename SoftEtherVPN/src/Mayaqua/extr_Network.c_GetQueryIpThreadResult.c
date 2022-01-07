
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Lock; int Ip; } ;
typedef TYPE_1__ QUERYIPTHREAD ;
typedef int IP ;


 int Copy (int *,int *,int) ;
 scalar_t__ IsZero (int *,int) ;
 int Lock (int ) ;
 int Unlock (int ) ;
 int Zero (int *,int) ;

bool GetQueryIpThreadResult(QUERYIPTHREAD *t, IP *ip)
{
 bool ret = 0;
 Zero(ip, sizeof(IP));

 if (t == ((void*)0) || ip == ((void*)0))
 {
  return 0;
 }

 Lock(t->Lock);

 if (IsZero(&t->Ip, sizeof(IP)))
 {
  ret = 0;
 }
 else
 {
  Copy(ip, &t->Ip, sizeof(IP));
 }

 Unlock(t->Lock);

 return ret;
}
