
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int hlw; } ;


 int __getCurrentDisplayPosition (int*,int*) ;
 TYPE_1__* currTiming ;

__attribute__((used)) static inline u32 __getCurrentHalfLine()
{
 u32 vpos = 0;
 u32 hpos = 0;

 __getCurrentDisplayPosition(&hpos,&vpos);

 hpos--;
 vpos--;
 vpos <<= 1;

 return vpos+(hpos/currTiming->hlw);
}
