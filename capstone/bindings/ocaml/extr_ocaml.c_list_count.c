
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;



__attribute__((used)) static unsigned int list_count(uint8_t *list, unsigned int max)
{
 unsigned int i;

 for(i = 0; i < max; i++)
  if (list[i] == 0)
   return i;

 return max;
}
