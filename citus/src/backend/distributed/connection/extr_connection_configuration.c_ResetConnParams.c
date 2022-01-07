
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t size; int ** values; scalar_t__* keywords; } ;
typedef size_t Index ;


 int AddConnParam (char*,int ) ;
 int CITUS_APPLICATION_NAME ;
 TYPE_1__ ConnParams ;
 int InvalidateConnParamsHashEntries () ;
 int free (void*) ;

void
ResetConnParams()
{
 Index paramIdx = 0;
 for (paramIdx = 0; paramIdx < ConnParams.size; paramIdx++)
 {
  free((void *) ConnParams.keywords[paramIdx]);
  free((void *) ConnParams.values[paramIdx]);

  ConnParams.keywords[paramIdx] = ConnParams.values[paramIdx] = ((void*)0);
 }

 ConnParams.size = 0;

 InvalidateConnParamsHashEntries();

 AddConnParam("fallback_application_name", CITUS_APPLICATION_NAME);
}
