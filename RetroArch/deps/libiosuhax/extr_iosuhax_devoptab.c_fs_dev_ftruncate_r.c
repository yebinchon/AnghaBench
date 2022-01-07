
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct _reent {int _errno; } ;
typedef int off_t ;
struct TYPE_2__ {int dev; } ;
typedef TYPE_1__ fs_dev_file_state_t ;


 int EINVAL ;
 int ENODEV ;
 int ENOTSUP ;

__attribute__((used)) static int fs_dev_ftruncate_r (struct _reent *r, void *fd, off_t len)
{
    fs_dev_file_state_t *file = (fs_dev_file_state_t *)fd;

    if(!r)
        return -1;

    if(!file) {
        r->_errno = EINVAL;
        return -1;
    }

    if(!file->dev) {
        r->_errno = ENODEV;
        return -1;
    }

    r->_errno = ENOTSUP;

    return -1;
}
