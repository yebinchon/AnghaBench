
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_19__ {int compareIntervalFunctionCall; } ;
struct TYPE_18__ {TYPE_5__* lessConsts; TYPE_4__* lessEqualConsts; TYPE_3__* greaterConsts; TYPE_2__* greaterEqualConsts; TYPE_1__* equalConsts; } ;
struct TYPE_17__ {int minValue; int maxValue; int maxValueExists; int minValueExists; } ;
struct TYPE_16__ {int constvalue; } ;
struct TYPE_15__ {int constvalue; } ;
struct TYPE_14__ {int constvalue; } ;
struct TYPE_13__ {int constvalue; } ;
struct TYPE_12__ {int constvalue; } ;
typedef TYPE_6__ ShardInterval ;
typedef TYPE_7__ PruningInstance ;
typedef int FunctionCallInfo ;
typedef int Datum ;
typedef TYPE_8__ ClauseWalkerContext ;


 scalar_t__ PerformValueCompare (int ,int ,int ) ;

__attribute__((used)) static bool
ExhaustivePruneOne(ShardInterval *curInterval,
       ClauseWalkerContext *context,
       PruningInstance *prune)
{
 FunctionCallInfo compareFunctionCall = (FunctionCallInfo) &
             context->compareIntervalFunctionCall;
 Datum compareWith = 0;


 if (!curInterval->minValueExists || !curInterval->maxValueExists)
 {
  return 0;
 }

 if (prune->equalConsts)
 {
  compareWith = prune->equalConsts->constvalue;

  if (PerformValueCompare(compareFunctionCall,
        compareWith,
        curInterval->minValue) < 0)
  {
   return 1;
  }

  if (PerformValueCompare(compareFunctionCall,
        compareWith,
        curInterval->maxValue) > 0)
  {
   return 1;
  }
 }
 if (prune->greaterEqualConsts)
 {
  compareWith = prune->greaterEqualConsts->constvalue;

  if (PerformValueCompare(compareFunctionCall,
        curInterval->maxValue,
        compareWith) < 0)
  {
   return 1;
  }
 }
 if (prune->greaterConsts)
 {
  compareWith = prune->greaterConsts->constvalue;

  if (PerformValueCompare(compareFunctionCall,
        curInterval->maxValue,
        compareWith) <= 0)
  {
   return 1;
  }
 }
 if (prune->lessEqualConsts)
 {
  compareWith = prune->lessEqualConsts->constvalue;

  if (PerformValueCompare(compareFunctionCall,
        curInterval->minValue,
        compareWith) > 0)
  {
   return 1;
  }
 }
 if (prune->lessConsts)
 {
  compareWith = prune->lessConsts->constvalue;

  if (PerformValueCompare(compareFunctionCall,
        curInterval->minValue,
        compareWith) >= 0)
  {
   return 1;
  }
 }

 return 0;
}
