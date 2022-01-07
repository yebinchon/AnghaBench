
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;



uint32_t sal_strlen(const char *buf)
{
 uint32_t size=0;

 while(*buf++) size++;

 return(size);
}
