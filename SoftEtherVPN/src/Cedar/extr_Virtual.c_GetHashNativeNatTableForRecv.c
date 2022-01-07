
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_2__ {scalar_t__ HashCodeForRecv; scalar_t__ Protocol; scalar_t__ PublicIp; scalar_t__ PublicPort; scalar_t__ DestIp; scalar_t__ DestPort; } ;
typedef TYPE_1__ NATIVE_NAT_ENTRY ;


 scalar_t__ INFINITE ;
 scalar_t__ NAT_TCP ;

UINT GetHashNativeNatTableForRecv(void *p)
{
 UINT r;
 NATIVE_NAT_ENTRY *e = (NATIVE_NAT_ENTRY *)p;
 if (e == ((void*)0))
 {
  return 0;
 }

 if (e->HashCodeForRecv != INFINITE)
 {
  return e->HashCodeForRecv;
 }

 r = 0;

 r += e->Protocol;
 r += e->PublicIp;
 r += e->PublicPort;

 if (e->Protocol == NAT_TCP)
 {
  r += e->DestIp;
  r += e->DestPort;
 }

 e->HashCodeForRecv = r;

 return r;
}
