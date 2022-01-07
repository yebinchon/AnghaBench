
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int UBYTE ;


 int FILL_VIDEO (int *,int ,int ) ;

void ANTIC_VideoMemset(UBYTE *ptr, UBYTE val, ULONG size)
{
 FILL_VIDEO(ptr, val, size);
}
