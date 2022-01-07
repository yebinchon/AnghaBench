
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __mount_filesystems () ;
 int iosuhaxMount ;
 int try_init_iosuhax () ;

__attribute__((used)) static void fsdev_init(void)
{
   iosuhaxMount = try_init_iosuhax();

   __mount_filesystems();
}
