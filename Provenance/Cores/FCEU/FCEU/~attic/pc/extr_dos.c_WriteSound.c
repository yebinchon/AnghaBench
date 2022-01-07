
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;


 int WriteSBSound (int *,int,int) ;

void WriteSound(int32 *Buffer, int Count, int NoWaiting)
{
 WriteSBSound(Buffer,Count,NoWaiting);
}
