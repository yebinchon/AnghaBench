
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 scalar_t__ EINTR ;
 scalar_t__ errno ;
 int exit_signal_received ;
 int write (int const,unsigned char* const,size_t const) ;

ssize_t safe_write_partial(const int fd, void *const buf_, const size_t max_count)
{
    unsigned char *const buf = (unsigned char *) buf_;
    ssize_t writenb;

    while ((writenb = write(fd, buf, max_count)) < (ssize_t) 0 && errno == EINTR &&
           !exit_signal_received)
        ;
    return writenb;
}
