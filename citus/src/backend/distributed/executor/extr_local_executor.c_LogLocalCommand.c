
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ApplyLogRedaction (char const*) ;
 int LOG ;
 scalar_t__ LogLocalCommands ;
 scalar_t__ LogRemoteCommands ;
 int ereport (int ,int ) ;
 int errmsg (char*,int ) ;

__attribute__((used)) static void
LogLocalCommand(const char *command)
{
 if (!(LogRemoteCommands || LogLocalCommands))
 {
  return;
 }

 ereport(LOG, (errmsg("executing the command locally: %s",
       ApplyLogRedaction(command))));
}
