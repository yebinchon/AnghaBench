
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
unsigned int count_positive8(const unsigned char *list)
{
 unsigned int c;

 for (c = 0; list[c] > 0; c++);

 return c;
}
