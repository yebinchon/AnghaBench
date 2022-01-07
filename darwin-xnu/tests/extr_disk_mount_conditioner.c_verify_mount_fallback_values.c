
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int segwritecnt; int segreadcnt; int maxwritecnt; int maxreadcnt; int ioqueue_depth; int member_0; } ;
typedef TYPE_1__ disk_conditioner_info ;


 int DISK_CONDITIONER_IOC_GET ;
 int DISK_CONDITIONER_IOC_SET ;
 int T_ASSERT_EQ_INT (int ,int,char*) ;
 int T_ASSERT_GT (int ,unsigned int,char*) ;
 int T_ASSERT_LT (int ,int ,char*) ;
 int T_WITH_ERRNO ;
 int UINT32_MAX ;
 int fsctl (char const*,int ,TYPE_1__*,int ) ;

__attribute__((used)) static void
verify_mount_fallback_values(const char *mount_path, disk_conditioner_info *info)
{
 int err;
 disk_conditioner_info newinfo = {0};

 err = fsctl(mount_path, DISK_CONDITIONER_IOC_SET, info, 0);
 T_WITH_ERRNO;
 T_ASSERT_EQ_INT(0, err, "fsctl(DISK_CONDITIONER_IOC_SET)");

 err = fsctl(mount_path, DISK_CONDITIONER_IOC_GET, &newinfo, 0);
 T_WITH_ERRNO;
 T_ASSERT_EQ_INT(0, err, "fsctl(DISK_CONDITIONER_IOC_GET) after SET");



 T_ASSERT_GT(newinfo.ioqueue_depth, 0u, "ioqueue_depth is the value from the mount");
 T_ASSERT_GT(newinfo.maxreadcnt, 0u, "maxreadcnt is value from the mount");
 T_ASSERT_GT(newinfo.maxwritecnt, 0u, "maxwritecnt is value from the mount");
 T_ASSERT_GT(newinfo.segreadcnt, 0u, "segreadcnt is value from the mount");
 T_ASSERT_GT(newinfo.segwritecnt, 0u, "segwritecnt is value from the mount");
 T_ASSERT_LT(newinfo.ioqueue_depth, UINT32_MAX, "ioqueue_depth is the value from the mount");
 T_ASSERT_LT(newinfo.maxreadcnt, UINT32_MAX, "maxreadcnt is value from the mount");
 T_ASSERT_LT(newinfo.maxwritecnt, UINT32_MAX, "maxwritecnt is value from the mount");
 T_ASSERT_LT(newinfo.segreadcnt, UINT32_MAX, "segreadcnt is value from the mount");
 T_ASSERT_LT(newinfo.segwritecnt, UINT32_MAX, "segwritecnt is value from the mount");
}
