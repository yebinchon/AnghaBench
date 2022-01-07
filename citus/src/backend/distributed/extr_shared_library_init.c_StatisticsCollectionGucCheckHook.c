
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GucSource ;


 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int GUC_check_errcode (int ) ;
 int GUC_check_errdetail (char*) ;

__attribute__((used)) static bool
StatisticsCollectionGucCheckHook(bool *newval, void **extra, GucSource source)
{





 if (*newval)
 {
  GUC_check_errcode(ERRCODE_FEATURE_NOT_SUPPORTED);
  GUC_check_errdetail("Citus was compiled without libcurl support.");
  return 0;
 }
 else
 {
  return 1;
 }

}
