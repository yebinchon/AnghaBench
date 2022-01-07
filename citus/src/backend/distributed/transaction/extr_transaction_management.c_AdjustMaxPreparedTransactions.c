
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int newvalue ;


 int LOG ;
 int MaxConnections ;
 int PGC_POSTMASTER ;
 int PGC_S_OVERRIDE ;
 int SetConfigOption (char*,char*,int ,int ) ;
 int ereport (int ,int ) ;
 int errdetail (char*,char*) ;
 int errmsg (char*) ;
 scalar_t__ max_prepared_xacts ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static void
AdjustMaxPreparedTransactions(void)
{







 if (max_prepared_xacts == 0)
 {
  char newvalue[12];

  snprintf(newvalue, sizeof(newvalue), "%d", MaxConnections * 2);

  SetConfigOption("max_prepared_transactions", newvalue, PGC_POSTMASTER,
      PGC_S_OVERRIDE);

  ereport(LOG, (errmsg("number of prepared transactions has not been "
        "configured, overriding"),
       errdetail("max_prepared_transactions is now set to %s",
        newvalue)));
 }
}
