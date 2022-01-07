
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int NATIVE_NAT_ENTRY ;
typedef int NATIVE_NAT ;


 int NnDeleteSession (int *,int *) ;
 int * NnGetOldestNatEntryOfIp (int *,int ,int ) ;

void NnDeleteOldestNatSession(NATIVE_NAT *t, UINT ip, UINT protocol)
{
 NATIVE_NAT_ENTRY *e;

 if (t == ((void*)0))
 {
  return;
 }

 e = NnGetOldestNatEntryOfIp(t, ip, protocol);

 if (e != ((void*)0))
 {
  NnDeleteSession(t, e);
 }
}
