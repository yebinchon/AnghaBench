
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DisaPc ;
 scalar_t__ DisaWord (int) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static void GetOffset(char *text)
{
  int off=(short)DisaWord(DisaPc); DisaPc+=2;

  if (off<0) sprintf(text,"-$%x",-off);
  else sprintf(text,"$%x", off);
}
