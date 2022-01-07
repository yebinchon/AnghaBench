
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int input_remapping_set_defaults (int) ;

__attribute__((used)) static int action_start_remap_file_load(unsigned type, const char *label)
{
   input_remapping_set_defaults(1);
   return 0;
}
