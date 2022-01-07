
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int byte ;


 scalar_t__ malloc (int) ;
 int mb_used ;

byte* I_ZoneBase (int* size)
{
    *size = mb_used*1024*1024;
    return (byte *) malloc (*size);
}
