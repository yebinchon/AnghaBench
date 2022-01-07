
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT ;


 size_t NUM_GLOBAL_SERVER_FLAGS ;
 size_t* global_server_flags ;

void SetGlobalServerFlag(UINT index, UINT value)
{

 if (index >= NUM_GLOBAL_SERVER_FLAGS)
 {
  return;
 }

 global_server_flags[index] = value;
}
