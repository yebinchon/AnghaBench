
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT ;



void ReplaceUnsafeCharInHttpTarget(char *target)
{
 UINT i;
 for(i = 0; target[i] ; i++) {
  if(target[i] == '<')
   target[i] = '(';
  else if(target[i] == '>')
   target[i] = ')';
 }
}
