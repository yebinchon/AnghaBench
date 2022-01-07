
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_dev; } ;


 scalar_t__ lstat (char*,struct stat*) ;

int sd_booted(void) {




        struct stat a, b;




        if (lstat("/sys/fs/cgroup", &a) < 0)
                return 0;

        if (lstat("/sys/fs/cgroup/systemd", &b) < 0)
                return 0;

        return a.st_dev != b.st_dev;

}
