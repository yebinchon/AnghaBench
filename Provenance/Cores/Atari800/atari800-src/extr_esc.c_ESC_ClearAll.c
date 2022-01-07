
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ** esc_function ;

void ESC_ClearAll(void)
{
 int i;
 for (i = 0; i < 256; i++)
  esc_function[i] = ((void*)0);
}
