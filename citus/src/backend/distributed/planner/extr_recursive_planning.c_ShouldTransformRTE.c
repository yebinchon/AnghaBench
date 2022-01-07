
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ rtekind; scalar_t__ funcordinality; scalar_t__ lateral; } ;
typedef TYPE_1__ RangeTblEntry ;


 scalar_t__ RTE_FUNCTION ;

__attribute__((used)) static bool
ShouldTransformRTE(RangeTblEntry *rangeTableEntry)
{




 if (rangeTableEntry->rtekind != RTE_FUNCTION ||
  rangeTableEntry->lateral ||
  rangeTableEntry->funcordinality)
 {
  return 0;
 }
 return 1;
}
