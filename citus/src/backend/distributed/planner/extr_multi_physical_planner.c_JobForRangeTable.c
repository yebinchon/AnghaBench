
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RangeTblEntry ;
typedef int List ;
typedef int Job ;
typedef scalar_t__ CitusRTEKind ;


 int Assert (int) ;
 scalar_t__ CITUS_RTE_REMOTE_QUERY ;
 int ExtractRangeTblExtraData (int *,scalar_t__*,int *,int *,int **) ;
 int * JobForTableIdList (int *,int *) ;
 int * NIL ;

__attribute__((used)) static Job *
JobForRangeTable(List *jobList, RangeTblEntry *rangeTableEntry)
{
 Job *searchedJob = ((void*)0);
 List *searchedTableIdList = NIL;
 CitusRTEKind rangeTableKind;

 ExtractRangeTblExtraData(rangeTableEntry, &rangeTableKind, ((void*)0), ((void*)0),
        &searchedTableIdList);

 Assert(rangeTableKind == CITUS_RTE_REMOTE_QUERY);

 searchedJob = JobForTableIdList(jobList, searchedTableIdList);

 return searchedJob;
}
