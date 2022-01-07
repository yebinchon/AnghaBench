
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT64 ;
struct TYPE_2__ {int (* FileSize ) (void*) ;} ;


 TYPE_1__* os ;
 int stub1 (void*) ;

UINT64 OSFileSize(void *pData)
{
 return os->FileSize(pData);
}
