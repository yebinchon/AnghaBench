
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int LockSettings; int Services; } ;
typedef int IPSEC_SERVICES ;
typedef TYPE_1__ IPSEC_SERVER ;


 int Copy (int *,int *,int) ;
 int IPsecNormalizeServiceSetting (TYPE_1__*) ;
 int Lock (int ) ;
 int Unlock (int ) ;

void IPsecServerGetServices(IPSEC_SERVER *s, IPSEC_SERVICES *sl)
{

 if (s == ((void*)0) || sl == ((void*)0))
 {
  return;
 }

 Lock(s->LockSettings);
 {
  IPsecNormalizeServiceSetting(s);

  Copy(sl, &s->Services, sizeof(IPSEC_SERVICES));
 }
 Unlock(s->LockSettings);
}
