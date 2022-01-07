
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERRCODE_ACTIVE_SQL_TRANSACTION ;
 int ERROR ;
 scalar_t__ XACT_MODIFICATION_NONE ;
 scalar_t__ XactModificationLevel ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;

void
EnsureNoModificationsHaveBeenDone()
{
 if (XactModificationLevel > XACT_MODIFICATION_NONE)
 {
  ereport(ERROR, (errcode(ERRCODE_ACTIVE_SQL_TRANSACTION),
      errmsg("cannot open new connections after the first modification "
          "command within a transaction")));
 }
}
