
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mfwpar () ;
 int mtwpar (int) ;

__attribute__((used)) static __inline__ void __GX_ResetWriteGatherPipe()
{
 while(mfwpar()&1);
 mtwpar(0x0C008000);
}
