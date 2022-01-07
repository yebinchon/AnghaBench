
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
typedef int buf ;
struct TYPE_4__ {int output; } ;
struct TYPE_3__ {int fd; } ;


 int OUTPUT_CSV ;
 scalar_t__ REDIS_OK ;
 scalar_t__ cliReadReply (int ) ;
 TYPE_2__ config ;
 TYPE_1__* context ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ read (int,char*,int) ;
 unsigned long long sendSync (int) ;
 int stderr ;

__attribute__((used)) static void slaveMode(void) {
    int fd = context->fd;
    unsigned long long payload = sendSync(fd);
    char buf[1024];
    int original_output = config.output;

    fprintf(stderr,"SYNC with master, discarding %llu "
                   "bytes of bulk transfer...\n", payload);


    while(payload) {
        ssize_t nread;

        nread = read(fd,buf,(payload > sizeof(buf)) ? sizeof(buf) : payload);
        if (nread <= 0) {
            fprintf(stderr,"Error reading RDB payload while SYNCing\n");
            exit(1);
        }
        payload -= nread;
    }
    fprintf(stderr,"SYNC done. Logging commands from master.\n");


    config.output = OUTPUT_CSV;
    while (cliReadReply(0) == REDIS_OK);
    config.output = original_output;
}
