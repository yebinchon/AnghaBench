
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int ETH ;


 int EthPutPacket (int *,void*,scalar_t__) ;

void EthPutPackets(ETH *e, UINT num, void **datas, UINT *sizes)
{
 UINT i;

 if (e == ((void*)0) || num == 0 || datas == ((void*)0) || sizes == ((void*)0))
 {
  return;
 }

 for (i = 0;i < num;i++)
 {
  EthPutPacket(e, datas[i], sizes[i]);
 }
}
