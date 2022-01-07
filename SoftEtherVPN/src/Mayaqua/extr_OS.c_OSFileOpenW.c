
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_2__ {void* (* FileOpenW ) (int *,int,int) ;} ;


 TYPE_1__* os ;
 void* stub1 (int *,int,int) ;

void *OSFileOpenW(wchar_t *name, bool write_mode, bool read_lock)
{
 return os->FileOpenW(name, write_mode, read_lock);
}
