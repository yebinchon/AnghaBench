
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32 ;
typedef int List ;


 int * ColocationGroupTableList (scalar_t__) ;
 int DeleteColocationGroup (scalar_t__) ;
 scalar_t__ INVALID_COLOCATION_ID ;
 int list_length (int *) ;

void
DeleteColocationGroupIfNoTablesBelong(uint32 colocationId)
{
 if (colocationId != INVALID_COLOCATION_ID)
 {
  List *colocatedTableList = ColocationGroupTableList(colocationId);
  int colocatedTableCount = list_length(colocatedTableList);

  if (colocatedTableCount == 0)
  {
   DeleteColocationGroup(colocationId);
  }
 }
}
