
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERROR ;
 int GetLocalGroupId () ;
 int ereport (int ,int ) ;
 int errhint (char*) ;
 int errmsg (char*) ;

void
EnsureCoordinator(void)
{
 int localGroupId = GetLocalGroupId();

 if (localGroupId != 0)
 {
  ereport(ERROR, (errmsg("operation is not allowed on this node"),
      errhint("Connect to the coordinator and run it again.")));
 }
}
