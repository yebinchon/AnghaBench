
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memmove (char*,char*,scalar_t__) ;
 scalar_t__ strlen (char*) ;

void BotRemoveTildes(char *message)
{
 int i;


 for (i = 0; message[i]; i++)
 {
  if (message[i] == '~')
  {
   memmove(&message[i], &message[i+1], strlen(&message[i+1])+1);
  }
 }
}
