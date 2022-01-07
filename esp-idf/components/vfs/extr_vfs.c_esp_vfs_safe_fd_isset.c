
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fd_set ;


 scalar_t__ FD_ISSET (int,int const*) ;

__attribute__((used)) static inline bool esp_vfs_safe_fd_isset(int fd, const fd_set *fds)
{
    return fds && FD_ISSET(fd, fds);
}
