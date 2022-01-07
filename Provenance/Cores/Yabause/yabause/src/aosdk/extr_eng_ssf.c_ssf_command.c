
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;


 int AO_FAIL ;
 int AO_SUCCESS ;


s32 ssf_command(s32 command, s32 parameter)

{
 switch (command)
 {
  case 128:
   return AO_SUCCESS;

 }
 return AO_FAIL;
}
