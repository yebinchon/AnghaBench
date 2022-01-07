
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;


 int Anum_pg_dist_node_metadatasynced ;
 int UpdateDistNodeBoolAttr (char*,int ,int ,int) ;

void
MarkNodeMetadataSynced(char *nodeName, int32 nodePort, bool synced)
{
 UpdateDistNodeBoolAttr(nodeName, nodePort,
         Anum_pg_dist_node_metadatasynced,
         synced);
}
