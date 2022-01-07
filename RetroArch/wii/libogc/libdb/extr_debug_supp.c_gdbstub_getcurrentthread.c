
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int s32 ;
struct TYPE_3__ {int id; } ;
struct TYPE_4__ {TYPE_1__ object; } ;


 TYPE_2__* _thr_executing ;
 int gdbstub_idtoindex (int ) ;

s32 gdbstub_getcurrentthread()
{
 return gdbstub_idtoindex(_thr_executing->object.id);
}
