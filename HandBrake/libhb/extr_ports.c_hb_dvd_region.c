
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct stat {int st_mode; } ;
struct TYPE_4__ {int region_mask; } ;
struct TYPE_5__ {TYPE_1__ lrpcs; int type; } ;
typedef TYPE_2__ dvd_authinfo ;


 int DVD_AUTH ;
 int DVD_LU_SEND_RPC_STATE ;
 int O_RDONLY ;
 scalar_t__ S_ISBLK (int ) ;
 scalar_t__ S_ISCHR (int ) ;
 int close (int) ;
 scalar_t__ fstat (int,struct stat*) ;
 int ioctl (int,int ,TYPE_2__*) ;
 int open (char*,int ) ;

int hb_dvd_region(char *device, int *region_mask)
{
    return -1;

}
