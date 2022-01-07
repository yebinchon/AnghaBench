
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
unsigned int Log2(unsigned int value)
{
 int x=0;

 value>>=1;
 while(value)
 {
  value>>=1;
  x++;
 }
 return(x?x:1);
}
