
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int Datum ;


 char* DatumGetCString (int ) ;
 int DirectFunctionCall1 (int ,int ) ;
 int ERROR ;
 int NAMEDATALEN ;
 char TRANSFER_MODE_AUTOMATIC ;
 char TRANSFER_MODE_BLOCK_WRITES ;
 char TRANSFER_MODE_FORCE_LOGICAL ;
 int enum_out ;
 int ereport (int ,int ) ;
 int errmsg (char*,char*) ;
 scalar_t__ strncmp (char*,char*,int ) ;

__attribute__((used)) static char
LookupShardTransferMode(Oid shardReplicationModeOid)
{
 char shardReplicationMode = 0;

 Datum enumLabelDatum = DirectFunctionCall1(enum_out, shardReplicationModeOid);
 char *enumLabel = DatumGetCString(enumLabelDatum);

 if (strncmp(enumLabel, "auto", NAMEDATALEN) == 0)
 {
  shardReplicationMode = TRANSFER_MODE_AUTOMATIC;
 }
 else if (strncmp(enumLabel, "force_logical", NAMEDATALEN) == 0)
 {
  shardReplicationMode = TRANSFER_MODE_FORCE_LOGICAL;
 }
 else if (strncmp(enumLabel, "block_writes", NAMEDATALEN) == 0)
 {
  shardReplicationMode = TRANSFER_MODE_BLOCK_WRITES;
 }
 else
 {
  ereport(ERROR, (errmsg("invalid label for enum: %s", enumLabel)));
 }

 return shardReplicationMode;
}
