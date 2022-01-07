
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int List ;


 int DELETE_ALL_NODES ;
 int * DetachPartitionCommandList () ;
 int * NIL ;
 int REMOVE_ALL_CLUSTERED_TABLES_COMMAND ;
 int * lappend (int *,int ) ;
 int * list_concat (int *,int *) ;

List *
MetadataDropCommands(void)
{
 List *dropSnapshotCommandList = NIL;
 List *detachPartitionCommandList = DetachPartitionCommandList();

 dropSnapshotCommandList = list_concat(dropSnapshotCommandList,
            detachPartitionCommandList);

 dropSnapshotCommandList = lappend(dropSnapshotCommandList,
           REMOVE_ALL_CLUSTERED_TABLES_COMMAND);

 dropSnapshotCommandList = lappend(dropSnapshotCommandList, DELETE_ALL_NODES);

 return dropSnapshotCommandList;
}
