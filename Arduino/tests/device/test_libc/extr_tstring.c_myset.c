
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void myset (char *target, char ch, int size)
{
  int i;

  for (i = 0; i < size; ++i)
    {
      target[i] = ch;
    }
}
