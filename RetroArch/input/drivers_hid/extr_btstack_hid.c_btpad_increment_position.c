
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static void btpad_increment_position(uint32_t *ptr)
{
   *ptr = (*ptr + 1) % 64;
}
