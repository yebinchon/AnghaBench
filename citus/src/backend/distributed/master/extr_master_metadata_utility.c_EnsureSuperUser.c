
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERROR ;
 int ereport (int ,int ) ;
 int errhint (char*) ;
 int errmsg (char*) ;
 int superuser () ;

void
EnsureSuperUser(void)
{
 if (!superuser())
 {
  ereport(ERROR, (errmsg("operation is not allowed"),
      errhint("Run the command with a superuser.")));
 }
}
