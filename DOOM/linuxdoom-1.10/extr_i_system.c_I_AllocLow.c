
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int byte ;


 scalar_t__ malloc (int) ;
 int memset (int *,int ,int) ;

byte* I_AllocLow(int length)
{
    byte* mem;

    mem = (byte *)malloc (length);
    memset (mem,0,length);
    return mem;
}
