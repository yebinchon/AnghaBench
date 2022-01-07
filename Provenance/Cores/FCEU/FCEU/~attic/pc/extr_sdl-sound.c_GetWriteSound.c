
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32 ;


 scalar_t__ BufferIn ;
 scalar_t__ BufferSize ;

uint32 GetWriteSound(void)
{
 return(BufferSize - BufferIn);
}
