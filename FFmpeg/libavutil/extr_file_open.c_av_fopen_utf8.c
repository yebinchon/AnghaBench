
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EINVAL ;
 int O_APPEND ;
 int O_BINARY ;
 int O_CREAT ;
 int O_RDONLY ;
 int O_RDWR ;
 int O_TRUNC ;
 int O_WRONLY ;
 int avpriv_open (char const*,int,int) ;
 int errno ;
 int * fdopen (int,char const*) ;

FILE *av_fopen_utf8(const char *path, const char *mode)
{
    int fd;
    int access;
    const char *m = mode;

    switch (*m++) {
    case 'r': access = O_RDONLY; break;
    case 'w': access = O_CREAT|O_WRONLY|O_TRUNC; break;
    case 'a': access = O_CREAT|O_WRONLY|O_APPEND; break;
    default :
        errno = EINVAL;
        return ((void*)0);
    }
    while (*m) {
        if (*m == '+') {
            access &= ~(O_RDONLY | O_WRONLY);
            access |= O_RDWR;
        } else if (*m == 'b') {



        } else if (*m) {
            errno = EINVAL;
            return ((void*)0);
        }
        m++;
    }
    fd = avpriv_open(path, access, 0666);
    if (fd == -1)
        return ((void*)0);
    return fdopen(fd, mode);
}
