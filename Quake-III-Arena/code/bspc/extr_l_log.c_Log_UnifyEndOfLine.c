
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memmove (char*,char*,scalar_t__) ;
 scalar_t__ strlen (char*) ;

void Log_UnifyEndOfLine(char *buf)
{
 int i;

 for (i = 0; buf[i]; i++)
 {
  if (buf[i] == '\n')
  {
   if (i <= 0 || buf[i-1] != '\r')
   {
    memmove(&buf[i+1], &buf[i], strlen(&buf[i])+1);
    buf[i] = '\r';
    i++;
   }
  }
 }
}
