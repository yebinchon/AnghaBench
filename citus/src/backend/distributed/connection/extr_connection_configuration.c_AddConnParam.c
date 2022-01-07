
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; int maxSize; int ** values; void** keywords; } ;


 TYPE_1__ ConnParams ;
 int ERRCODE_INSUFFICIENT_RESOURCES ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 void* strdup (char const*) ;

void
AddConnParam(const char *keyword, const char *value)
{
 if (ConnParams.size + 1 >= ConnParams.maxSize)
 {

  ereport(ERROR, (errcode(ERRCODE_INSUFFICIENT_RESOURCES),
      errmsg("ConnParams arrays bound check failed")));
 }

 ConnParams.keywords[ConnParams.size] = strdup(keyword);
 ConnParams.values[ConnParams.size] = strdup(value);
 ConnParams.size++;

 ConnParams.keywords[ConnParams.size] = ConnParams.values[ConnParams.size] = ((void*)0);
}
