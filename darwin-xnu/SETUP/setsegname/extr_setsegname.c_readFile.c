
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_size_t ;
typedef scalar_t__ vm_offset_t ;
struct stat {int st_mode; scalar_t__ st_size; } ;


 void* MAP_FAILED ;
 int MAP_FILE ;
 int MAP_PRIVATE ;
 int O_RDONLY ;
 int PROT_READ ;
 int PROT_WRITE ;
 int S_IFREG ;
 int close (int) ;
 int errno ;
 int fprintf (int ,char*,char const*,char*) ;
 int fstat (int,struct stat*) ;
 scalar_t__ mmap (int *,scalar_t__,int,int,int,int ) ;
 int open (char const*,int ) ;
 int stderr ;
 char* strerror (int ) ;

__attribute__((used)) static int
readFile(const char *path, vm_offset_t * objAddr, vm_size_t * objSize)
{
    int error = -1;
    int fd;
    struct stat stat_buf;

    *objAddr = 0;
    *objSize = 0;

    do {
        if ((fd = open(path, O_RDONLY)) == -1) {
            continue;
        }

        if (fstat(fd, &stat_buf) == -1) {
            continue;
        }

        if (0 == (stat_buf.st_mode & S_IFREG)) {
            continue;
        }

        if (0 == stat_buf.st_size) {
            error = 0;
            continue;
        }

        *objSize = stat_buf.st_size;

        *objAddr = (vm_offset_t)mmap(((void*)0) , *objSize,
            PROT_READ|PROT_WRITE, MAP_FILE|MAP_PRIVATE ,
            fd, 0 );

        if ((void *)*objAddr == MAP_FAILED) {
                *objAddr = 0;
                *objSize = 0;
            continue;
        }

        error = 0;

    } while (0);

    if (-1 != fd) {
        close(fd);
    }
    if (error) {
        fprintf(stderr, "couldn't read %s: %s\n", path, strerror(errno));
    }

    return error;
}
