
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TrimLeft (char*) ;
 int TrimRight (char*) ;

void Trim(char *str)
{

 if (str == ((void*)0))
 {
  return;
 }


 TrimLeft(str);


 TrimRight(str);
}
