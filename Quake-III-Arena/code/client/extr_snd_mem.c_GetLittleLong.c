
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* data_p ;

__attribute__((used)) static int GetLittleLong(void)
{
 int val = 0;
 val = *data_p;
 val = val + (*(data_p+1)<<8);
 val = val + (*(data_p+2)<<16);
 val = val + (*(data_p+3)<<24);
 data_p += 4;
 return val;
}
