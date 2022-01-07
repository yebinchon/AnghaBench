
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT ;


 size_t NUM_GLOBAL_SERVER_FLAGS ;
 size_t* global_server_flags ;

UINT GetGlobalServerFlag(UINT index)
{

 if (index >= NUM_GLOBAL_SERVER_FLAGS)
 {
  return 0;
 }

 return global_server_flags[index];
}
