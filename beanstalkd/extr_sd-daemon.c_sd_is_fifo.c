
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_dev; scalar_t__ st_ino; int st_mode; } ;
typedef int st_path ;
typedef int st_fd ;


 int EINVAL ;
 int ENOENT ;
 int ENOTDIR ;
 int S_ISFIFO (int ) ;
 int errno ;
 scalar_t__ fstat (int,struct stat*) ;
 int memset (struct stat*,int ,int) ;
 scalar_t__ stat (char const*,struct stat*) ;

int sd_is_fifo(int fd, const char *path) {
        struct stat st_fd;

        if (fd < 0)
                return -EINVAL;

        memset(&st_fd, 0, sizeof(st_fd));
        if (fstat(fd, &st_fd) < 0)
                return -errno;

        if (!S_ISFIFO(st_fd.st_mode))
                return 0;

        if (path) {
                struct stat st_path;

                memset(&st_path, 0, sizeof(st_path));
                if (stat(path, &st_path) < 0) {

                        if (errno == ENOENT || errno == ENOTDIR)
                                return 0;

                        return -errno;
                }

                return
                        st_path.st_dev == st_fd.st_dev &&
                        st_path.st_ino == st_fd.st_ino;
        }

        return 1;
}
