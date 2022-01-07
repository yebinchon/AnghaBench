
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int O_BINARY ;
 int O_RDONLY ;
 int SIZE ;
 char* av_hash_get_name (int ) ;
 int av_hash_init (int ) ;
 int av_hash_update (int ,int *,int) ;
 int close (int) ;
 int errno ;
 int finish () ;
 int hash ;
 int open (char*,int) ;
 int printf (char*,...) ;
 int read (int,int *,int) ;
 char* strerror (int) ;

__attribute__((used)) static int check(char *file)
{
    uint8_t buffer[SIZE];
    int fd, flags = O_RDONLY;
    int ret = 0;




    if (file) fd = open(file, flags);
    else fd = 0;
    if (fd == -1) {
        printf("%s=OPEN-FAILED: %s:", av_hash_get_name(hash), strerror(errno));
        ret = 1;
        goto end;
    }

    av_hash_init(hash);
    for (;;) {
        int size = read(fd, buffer, SIZE);
        if (size < 0) {
            int err = errno;
            close(fd);
            finish();
            printf("+READ-FAILED: %s", strerror(err));
            ret = 2;
            goto end;
        } else if(!size)
            break;
        av_hash_update(hash, buffer, size);
    }
    close(fd);

    finish();
end:
    if (file)
        printf(" *%s", file);
    printf("\n");

    return ret;
}
