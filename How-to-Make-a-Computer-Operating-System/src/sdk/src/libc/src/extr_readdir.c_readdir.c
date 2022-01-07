
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dirent {int dummy; } ;
struct TYPE_3__ {struct dirent entry; int fd; } ;
typedef TYPE_1__ DIR ;


 int getdents (int ,struct dirent*,int) ;

struct dirent* readdir( DIR* dir ) {
    int error;

    if ( dir == ((void*)0) ) {
        return ((void*)0);
    }

    error = getdents( dir->fd, &dir->entry, sizeof( struct dirent ) );

    if ( error == 0 ) {
        return ((void*)0);
    }

    return &dir->entry;
}
