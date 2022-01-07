
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* hostreg_r ;

__attribute__((used)) static void hostreg_clear(void)
{
 int i;
 for (i = 0; i < 4; i++)
  hostreg_r[i] = -1;
}
