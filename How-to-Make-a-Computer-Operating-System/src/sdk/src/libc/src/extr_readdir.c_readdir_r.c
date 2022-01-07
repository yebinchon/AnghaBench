
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dirent {int dummy; } ;
struct TYPE_3__ {int fd; } ;
typedef TYPE_1__ DIR ;


 int EINVAL ;
 int errno ;
 int getdents (int ,struct dirent*,int) ;

int readdir_r( DIR* dir, struct dirent* entry, struct dirent** result ) {
    int error;

    if ( ( dir == ((void*)0) ) ||
         ( entry == ((void*)0) ) ) {
        errno = -EINVAL;
        return -1;
    }

    error = getdents( dir->fd, entry, sizeof( struct dirent ) );

    if ( error == 0 ) {
        *result = ((void*)0);
    } else {
        *result = entry;
    }

    return 0;
}
