
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mfspr (int) ;
 int mtspr (int,int) ;

__attribute__((used)) static void DisableWriteGatherPipe()
{
 mtspr(920,(mfspr(920)&~0x40000000));
}
