
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_2__ {int (* FileRenameW ) (int *,int *) ;} ;


 TYPE_1__* os ;
 int stub1 (int *,int *) ;

bool OSFileRenameW(wchar_t *old_name, wchar_t *new_name)
{
 return os->FileRenameW(old_name, new_name);
}
