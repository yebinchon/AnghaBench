
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int toupper (char) ;

void strupr (char *s)
{
    while (*s)
 *s++ = toupper(*s);
}
