
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_4__ {int NatTableForRecv; scalar_t__ IsRawIpMode; } ;
typedef int NATIVE_NAT_ENTRY ;
typedef TYPE_1__ NATIVE_NAT ;


 scalar_t__ NN_RAW_IP_PORT_END ;
 scalar_t__ NN_RAW_IP_PORT_START ;
 int NnSetNat (int *,scalar_t__,int ,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ Rand32 () ;
 TYPE_1__* SearchHash (int ,int *) ;

UINT NnMapNewPublicPort(NATIVE_NAT *t, UINT protocol, UINT dest_ip, UINT dest_port, UINT public_ip)
{
 UINT i;
 UINT base_port;
 UINT port_start = 1025;
 UINT port_end = 65500;

 if (t == ((void*)0))
 {
  return 0;
 }

 if (t->IsRawIpMode)
 {
  port_start = NN_RAW_IP_PORT_START;
  port_end = NN_RAW_IP_PORT_END;
 }

 base_port = Rand32() % (port_end - port_start) + port_start;

 for (i = 0;i < (port_end - port_start);i++)
 {
  UINT port;
  NATIVE_NAT_ENTRY tt;
  NATIVE_NAT *e;

  port = base_port + i;
  if (port > port_end)
  {
   port = port - port_end + port_start;
  }


  NnSetNat(&tt, protocol, 0, 0, dest_ip, dest_port, public_ip, port);

  e = SearchHash(t->NatTableForRecv, &tt);

  if (e == ((void*)0))
  {

   return port;
  }
 }

 return 0;
}
