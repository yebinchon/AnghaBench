
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int dummy; } ;


 int EINVAL ;
 int TCGETA ;
 int errno ;
 int ioctl (int,int ,struct termios*) ;

int tcgetattr( int fd, struct termios* tio ) {
    int error;

    if ( tio == ((void*)0) ) {
        errno = EINVAL;
        return -1;
    }

    error = ioctl( fd, TCGETA, tio );

    if ( error < 0 ) {
        errno = -error;
        return -1;
    }

    return 0;
}
