
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ nhlines; } ;


 scalar_t__ __getCurrentHalfLine () ;
 TYPE_1__* currTiming ;

__attribute__((used)) static inline u32 __getCurrentFieldEvenOdd()
{
 u32 hline;

 hline = __getCurrentHalfLine();
 if(hline<currTiming->nhlines) return 1;

 return 0;
}
