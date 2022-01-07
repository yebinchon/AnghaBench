
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* keyonce ;
 scalar_t__* keys ;

__attribute__((used)) static int _keyonly(int a)
{
 if(keys[a])
 {
  if(!keyonce[a])
  {
   keyonce[a]=1;
   return(1);
  }
 }
 else
  keyonce[a]=0;
 return(0);
}
