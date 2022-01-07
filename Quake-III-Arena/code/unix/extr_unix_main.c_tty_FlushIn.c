
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int read (int ,char*,int) ;

void tty_FlushIn()
{
  char key;
  while (read(0, &key, 1)!=-1);
}
