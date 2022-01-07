
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX ;

void
fill (unsigned char dest[MAX*3])
{
  size_t i;
  for (i = 0; i < MAX*3; i++)
    dest[i] = (10 + i) % MAX;
}
