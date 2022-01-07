
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;


 int CCV_CLI_NONE ;

int ccv_cli_output_level_and_above(int level)
{
 if (level == CCV_CLI_NONE)
  return CCV_CLI_NONE;
 int i;
 uint32_t levels = 0;
 for (i = 0; i < 32; i++)
  if (level <= (1u << i))
   levels |= 1u << i;
 return (int)levels;
}
