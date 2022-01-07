
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** disabled ;
 int printf (char*,char*) ;

int main(void)
{
  int i;
  for(i = 0; disabled[i]; i++)
    printf("%s\n", disabled[i]);

  return 0;
}
