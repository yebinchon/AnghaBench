
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int AE_WRITABLE ;
 long long DISQUE_SYNCIO_RESOLUTION ;
 scalar_t__ EAGAIN ;
 scalar_t__ ETIMEDOUT ;
 int aeWait (int,int ,long long) ;
 scalar_t__ errno ;
 long long mstime () ;
 int write (int,char*,int) ;

ssize_t syncWrite(int fd, char *ptr, ssize_t size, long long timeout) {
    ssize_t nwritten, ret = size;
    long long start = mstime();
    long long remaining = timeout;

    while(1) {
        long long wait = (remaining > DISQUE_SYNCIO_RESOLUTION) ?
                          remaining : DISQUE_SYNCIO_RESOLUTION;
        long long elapsed;



        nwritten = write(fd,ptr,size);
        if (nwritten == -1) {
            if (errno != EAGAIN) return -1;
        } else {
            ptr += nwritten;
            size -= nwritten;
        }
        if (size == 0) return ret;


        aeWait(fd,AE_WRITABLE,wait);
        elapsed = mstime() - start;
        if (elapsed >= timeout) {
            errno = ETIMEDOUT;
            return -1;
        }
        remaining = timeout - elapsed;
    }
}
