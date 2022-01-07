
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UInt8 ;
typedef int UInt32 ;
typedef int Boolean ;


 int OSTestAndSetClear (int ,int,int volatile*) ;

Boolean OSTestAndClear(UInt32 bit, volatile UInt8 * startAddress)
{
 return OSTestAndSetClear(bit, 0, startAddress);
}
