
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UBYTE ;


 int ** esc_function ;

void ESC_Remove(UBYTE esc_code)
{
 esc_function[esc_code] = ((void*)0);
}
