
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FreeStrList (int *) ;
 int * eth_offload_list ;

void FreeEth()
{
 if (eth_offload_list != ((void*)0))
 {
  FreeStrList(eth_offload_list);
  eth_offload_list = ((void*)0);
 }
}
