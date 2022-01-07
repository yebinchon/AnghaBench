
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stat {scalar_t__ st_size; } ;
typedef scalar_t__ ssize_t ;
typedef scalar_t__ sds ;
typedef scalar_t__ off_t ;
struct TYPE_4__ {TYPE_1__* cluster; int cluster_configfile; } ;
struct TYPE_3__ {int todo_before_sleep; scalar_t__ lastVoteEpoch; scalar_t__ currentEpoch; } ;


 int CLUSTER_NODE_HANDSHAKE ;
 int CLUSTER_TODO_FSYNC_CONFIG ;
 int CLUSTER_TODO_SAVE_CONFIG ;
 int O_CREAT ;
 int O_WRONLY ;
 int close (int) ;
 scalar_t__ clusterGenNodesDescription (int ) ;
 int fstat (int,struct stat*) ;
 int fsync (int) ;
 int ftruncate (int,size_t) ;
 int memset (scalar_t__,char,scalar_t__) ;
 int open (int ,int,int) ;
 scalar_t__ sdscatprintf (scalar_t__,char*,unsigned long long,unsigned long long) ;
 int sdsfree (scalar_t__) ;
 scalar_t__ sdsgrowzero (scalar_t__,scalar_t__) ;
 size_t sdslen (scalar_t__) ;
 TYPE_2__ server ;
 scalar_t__ write (int,scalar_t__,size_t) ;

int clusterSaveConfig(int do_fsync) {
    sds ci;
    size_t content_size;
    struct stat sb;
    int fd;

    server.cluster->todo_before_sleep &= ~CLUSTER_TODO_SAVE_CONFIG;



    ci = clusterGenNodesDescription(CLUSTER_NODE_HANDSHAKE);





    content_size = sdslen(ci);

    if ((fd = open(server.cluster_configfile,O_WRONLY|O_CREAT,0644))
        == -1) goto err;


    if (fstat(fd,&sb) != -1) {
        if (sb.st_size > (off_t)content_size) {
            ci = sdsgrowzero(ci,sb.st_size);
            memset(ci+content_size,'\n',sb.st_size-content_size);
        }
    }
    if (write(fd,ci,sdslen(ci)) != (ssize_t)sdslen(ci)) goto err;
    if (do_fsync) {
        server.cluster->todo_before_sleep &= ~CLUSTER_TODO_FSYNC_CONFIG;
        fsync(fd);
    }



    if (content_size != sdslen(ci) && ftruncate(fd,content_size) == -1) {

    }
    close(fd);
    sdsfree(ci);
    return 0;

err:
    if (fd != -1) close(fd);
    sdsfree(ci);
    return -1;
}
