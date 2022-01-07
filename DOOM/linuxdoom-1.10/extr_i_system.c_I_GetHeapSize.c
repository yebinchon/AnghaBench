
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mb_used ;

int I_GetHeapSize (void)
{
    return mb_used*1024*1024;
}
