
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rtable; } ;
typedef TYPE_1__ Query ;


 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*) ;
 int errmsg (char*) ;
 int list_length (int ) ;

__attribute__((used)) static void
CheckTableCount(Query *deleteQuery)
{
 int rangeTableCount = list_length(deleteQuery->rtable);
 if (rangeTableCount > 1)
 {
  ereport(ERROR, (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("cannot delete from distributed table"),
      errdetail("Delete on multiple tables is not supported")));
 }
}
