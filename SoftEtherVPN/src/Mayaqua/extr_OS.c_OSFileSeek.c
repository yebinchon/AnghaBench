
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_2__ {int (* FileSeek ) (void*,int ,int) ;} ;


 TYPE_1__* os ;
 int stub1 (void*,int ,int) ;

bool OSFileSeek(void *pData, UINT mode, int offset)
{
 return os->FileSeek(pData, mode, offset);
}
