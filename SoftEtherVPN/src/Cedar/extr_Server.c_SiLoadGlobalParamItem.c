
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT ;


 size_t* vpn_global_parameters ;

void SiLoadGlobalParamItem(UINT id, UINT value)
{

 if (id == 0)
 {
  return;
 }

 vpn_global_parameters[id] = value;
}
