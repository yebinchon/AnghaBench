
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 scalar_t__ GetNetworkAddress (int ,int ) ;

bool IsInNetwork(UINT uni_addr, UINT network_addr, UINT mask)
{
 if (GetNetworkAddress(uni_addr, mask) == GetNetworkAddress(network_addr, mask))
 {
  return 1;
 }
 return 0;
}
