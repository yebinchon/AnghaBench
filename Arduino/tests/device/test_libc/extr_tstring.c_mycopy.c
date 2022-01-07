
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void mycopy (char *target, char *source, int size)
{
  int i;

  for (i = 0; i < size; ++i)
    {
      target[i] = source[i];
    }
}
