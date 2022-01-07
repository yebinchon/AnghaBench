
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int perror (char*) ;
 scalar_t__ write (int,void const*,size_t) ;

__attribute__((used)) static int
writeFile(int fd, const void * data, size_t length)
{
    int error = 0;

    if (length != (size_t)write(fd, data, length)) {
        error = -1;
    }

    if (error != 0) {
        perror("couldn't write output");
    }

    return error;
}
