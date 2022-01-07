
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int errorfds; int writefds; int readfds; scalar_t__ isset; } ;
typedef TYPE_1__ fds_triple_t ;
typedef int fd_set ;
struct TYPE_5__ {int local_fd; } ;


 int ESP_LOGD (int ,char*,int,int) ;
 int FD_SET (int,int *) ;
 int MAX_FDS ;
 int TAG ;
 scalar_t__ esp_vfs_safe_fd_isset (int const,int *) ;
 TYPE_3__* s_fd_table ;

__attribute__((used)) static int set_global_fd_sets(const fds_triple_t *vfs_fds_triple, int size, fd_set *readfds, fd_set *writefds, fd_set *errorfds)
{
    int ret = 0;

    for (int i = 0; i < size; ++i) {
        const fds_triple_t *item = &vfs_fds_triple[i];
        if (item->isset) {
            for (int fd = 0; fd < MAX_FDS; ++fd) {
                const int local_fd = s_fd_table[fd].local_fd;
                if (readfds && esp_vfs_safe_fd_isset(local_fd, &item->readfds)) {
                    ESP_LOGD(TAG, "FD %d in readfds was set from VFS ID %d", fd, i);
                    FD_SET(fd, readfds);
                    ++ret;
                }
                if (writefds && esp_vfs_safe_fd_isset(local_fd, &item->writefds)) {
                    ESP_LOGD(TAG, "FD %d in writefds was set from VFS ID %d", fd, i);
                    FD_SET(fd, writefds);
                    ++ret;
                }
                if (errorfds && esp_vfs_safe_fd_isset(local_fd, &item->errorfds)) {
                    ESP_LOGD(TAG, "FD %d in errorfds was set from VFS ID %d", fd, i);
                    FD_SET(fd, errorfds);
                    ++ret;
                }
            }
        }
    }

    return ret;
}
