
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ partitionId; } ;
typedef TYPE_1__ Task ;
struct TYPE_10__ {scalar_t__ fragmentType; scalar_t__ fragmentReference; } ;
struct TYPE_9__ {scalar_t__ data; } ;
typedef TYPE_2__* StringInfo ;
typedef int ShardInterval ;
typedef TYPE_3__ RangeTableFragment ;


 scalar_t__ CITUS_RTE_REMOTE_QUERY ;
 int DEBUG2 ;
 int * FragmentInterval (TYPE_3__*) ;
 TYPE_2__* FragmentIntervalString (int *) ;
 scalar_t__ IsLoggableLevel (int ) ;
 int ShardIntervalsOverlap (int *,int *) ;
 int ereport (int ,int ) ;
 int errmsg (char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static bool
JoinPrunable(RangeTableFragment *leftFragment, RangeTableFragment *rightFragment)
{
 bool joinPrunable = 0;
 bool overlap = 0;
 ShardInterval *leftFragmentInterval = ((void*)0);
 ShardInterval *rightFragmentInterval = ((void*)0);






 if (leftFragment->fragmentType == CITUS_RTE_REMOTE_QUERY &&
  rightFragment->fragmentType == CITUS_RTE_REMOTE_QUERY)
 {
  Task *leftMergeTask = (Task *) leftFragment->fragmentReference;
  Task *rightMergeTask = (Task *) rightFragment->fragmentReference;


  if (leftMergeTask->partitionId != rightMergeTask->partitionId)
  {
   ereport(DEBUG2, (errmsg("join prunable for task partitionId %u and %u",
         leftMergeTask->partitionId,
         rightMergeTask->partitionId)));
   return 1;
  }
  else
  {
   return 0;
  }
 }






 leftFragmentInterval = FragmentInterval(leftFragment);
 rightFragmentInterval = FragmentInterval(rightFragment);

 overlap = ShardIntervalsOverlap(leftFragmentInterval, rightFragmentInterval);
 if (!overlap)
 {
  if (IsLoggableLevel(DEBUG2))
  {
   StringInfo leftString = FragmentIntervalString(leftFragmentInterval);
   StringInfo rightString = FragmentIntervalString(rightFragmentInterval);

   ereport(DEBUG2, (errmsg("join prunable for intervals %s and %s",
         leftString->data, rightString->data)));
  }

  joinPrunable = 1;
 }

 return joinPrunable;
}
