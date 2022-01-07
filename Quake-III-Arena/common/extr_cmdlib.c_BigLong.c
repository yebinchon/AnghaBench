
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int byte ;



int BigLong (int l)
{
 byte b1,b2,b3,b4;

 b1 = l&255;
 b2 = (l>>8)&255;
 b3 = (l>>16)&255;
 b4 = (l>>24)&255;

 return ((int)b1<<24) + ((int)b2<<16) + ((int)b3<<8) + b4;
}
