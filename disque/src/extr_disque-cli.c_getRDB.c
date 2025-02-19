
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
typedef int buf ;
struct TYPE_4__ {char* rdb_filename; } ;
struct TYPE_3__ {int fd; } ;


 int O_CREAT ;
 int O_WRONLY ;
 int STDOUT_FILENO ;
 int close (int) ;
 TYPE_2__ config ;
 TYPE_1__* context ;
 int errno ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int fsync (int) ;
 int open (char*,int,int) ;
 scalar_t__ read (int,char*,int) ;
 unsigned long long sendSync (int) ;
 int stderr ;
 int strcmp (char*,char*) ;
 char* strerror (int ) ;
 scalar_t__ write (int,char*,scalar_t__) ;

__attribute__((used)) static void getRDB(void) {
    int s = context->fd;
    int fd;
    unsigned long long payload = sendSync(s);
    char buf[4096];

    fprintf(stderr,"SYNC sent to master, writing %llu bytes to '%s'\n",
        payload, config.rdb_filename);


    if (!strcmp(config.rdb_filename,"-")) {
        fd = STDOUT_FILENO;
    } else {
        fd = open(config.rdb_filename, O_CREAT|O_WRONLY, 0644);
        if (fd == -1) {
            fprintf(stderr, "Error opening '%s': %s\n", config.rdb_filename,
                strerror(errno));
            exit(1);
        }
    }

    while(payload) {
        ssize_t nread, nwritten;

        nread = read(s,buf,(payload > sizeof(buf)) ? sizeof(buf) : payload);
        if (nread <= 0) {
            fprintf(stderr,"I/O Error reading RDB payload from socket\n");
            exit(1);
        }
        nwritten = write(fd, buf, nread);
        if (nwritten != nread) {
            fprintf(stderr,"Error writing data to file: %s\n",
                strerror(errno));
            exit(1);
        }
        payload -= nread;
    }
    close(s);
    fsync(fd);
    fprintf(stderr,"Transfer finished with success.\n");
    exit(0);
}
