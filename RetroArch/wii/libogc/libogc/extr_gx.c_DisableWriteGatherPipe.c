
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mfhid2 () ;
 int mthid2 (int) ;

__attribute__((used)) static __inline__ void DisableWriteGatherPipe()
{
 mthid2((mfhid2()&~0x40000000));
}
