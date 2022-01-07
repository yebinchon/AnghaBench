
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dirent {scalar_t__ d_name; } ;
typedef int base ;
struct TYPE_3__ {int next; int dir; } ;
typedef TYPE_1__ Wal ;
typedef int DIR ;


 int closedir (int *) ;
 int * opendir (int ) ;
 struct dirent* readdir (int *) ;
 scalar_t__ strncmp (scalar_t__,char*,int const) ;
 int strtol (scalar_t__,char**,int) ;

__attribute__((used)) static int
walscandir(Wal *w)
{
    static char base[] = "binlog.";
    static const int len = sizeof(base) - 1;
    DIR *d;
    struct dirent *e;
    int min = 1<<30;
    int max = 0;
    int n;
    char *p;

    d = opendir(w->dir);
    if (!d) return min;

    while ((e = readdir(d))) {
        if (strncmp(e->d_name, base, len) == 0) {
            n = strtol(e->d_name+len, &p, 10);
            if (p && *p == '\0') {
                if (n > max) max = n;
                if (n < min) min = n;
            }
        }
    }

    closedir(d);
    w->next = max + 1;
    return min;
}
