
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct flock {scalar_t__ l_len; scalar_t__ l_start; int l_whence; int l_type; } ;
struct TYPE_3__ {char* dir; } ;
typedef TYPE_1__ Wal ;


 int F_SETLK ;
 int F_WRLCK ;
 int O_CREAT ;
 int O_WRONLY ;
 int SEEK_SET ;
 int fcntl (int,int ,struct flock*) ;
 int free (char*) ;
 char* malloc (size_t) ;
 int open (char*,int,int) ;
 int snprintf (char*,size_t,char*,char*) ;
 int strlen (char*) ;
 int twarn (char*) ;

int
waldirlock(Wal *w)
{
    int r;
    int fd;
    struct flock lk;
    char *path;
    size_t path_length;

    path_length = strlen(w->dir) + strlen("/lock") + 1;
    if ((path = malloc(path_length)) == ((void*)0)) {
        twarn("malloc");
        return 0;
    }
    snprintf(path, path_length, "%s/lock", w->dir);

    fd = open(path, O_WRONLY|O_CREAT, 0600);
    free(path);
    if (fd == -1) {
        twarn("open");
        return 0;
    }

    lk.l_type = F_WRLCK;
    lk.l_whence = SEEK_SET;
    lk.l_start = 0;
    lk.l_len = 0;
    r = fcntl(fd, F_SETLK, &lk);
    if (r) {
        twarn("fcntl");
        return 0;
    }



    return 1;
}
