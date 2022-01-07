
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* data_p ;

__attribute__((used)) static short GetLittleShort(void)
{
 short val = 0;
 val = *data_p;
 val = val + (*(data_p+1)<<8);
 data_p += 2;
 return val;
}
