
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERROR ;
 int MaxIntermediateResult ;
 int ereport (int ,int ) ;
 int errdetail (char*) ;
 int errhint (char*) ;
 int errmsg (char*,int ) ;

void
ErrorSizeLimitIsExceeded()
{
 ereport(ERROR, (errmsg("the intermediate result size exceeds "
         "citus.max_intermediate_result_size (currently %d kB)",
         MaxIntermediateResult),
     errdetail("Citus restricts the size of intermediate "
         "results of complex subqueries and CTEs to "
         "avoid accidentally pulling large result sets "
         "into once place."),
     errhint("To run the current query, set "
       "citus.max_intermediate_result_size to a higher"
       " value or -1 to disable.")));
}
