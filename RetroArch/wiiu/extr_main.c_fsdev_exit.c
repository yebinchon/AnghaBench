
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __unmount_filesystems () ;
 int try_shutdown_iosuhax () ;

__attribute__((used)) static void fsdev_exit(void)
{
   __unmount_filesystems();
   try_shutdown_iosuhax();
}
