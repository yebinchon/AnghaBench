
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_2__ {int (* FileRead ) (void*,void*,int ) ;} ;


 TYPE_1__* os ;
 int stub1 (void*,void*,int ) ;

bool OSFileRead(void *pData, void *buf, UINT size)
{
 return os->FileRead(pData, buf, size);
}
