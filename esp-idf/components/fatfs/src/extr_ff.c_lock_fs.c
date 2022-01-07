
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sobj; } ;
typedef TYPE_1__ FATFS ;


 int ff_req_grant (int ) ;

__attribute__((used)) static int lock_fs (
 FATFS* fs
)
{
 return ff_req_grant(fs->sobj);
}
