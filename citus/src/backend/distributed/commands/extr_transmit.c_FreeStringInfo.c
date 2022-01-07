
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* data; } ;
typedef TYPE_1__* StringInfo ;


 int pfree (TYPE_1__*) ;
 int resetStringInfo (TYPE_1__*) ;

void
FreeStringInfo(StringInfo stringInfo)
{
 resetStringInfo(stringInfo);

 pfree(stringInfo->data);
 pfree(stringInfo);
}
