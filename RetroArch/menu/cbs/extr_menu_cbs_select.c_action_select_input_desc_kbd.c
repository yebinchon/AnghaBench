
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int action_right_input_desc_kbd (unsigned int,char const*,int) ;

__attribute__((used)) static int action_select_input_desc_kbd(const char *path,
      const char *label, unsigned type,
   size_t idx)
{
   return action_right_input_desc_kbd(type, label, 1);
}
