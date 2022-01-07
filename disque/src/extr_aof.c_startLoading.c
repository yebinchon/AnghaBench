
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {int st_size; } ;
struct TYPE_2__ {int loading; int loading_total_bytes; int loading_start_time; } ;
typedef int FILE ;


 int fileno (int *) ;
 int fstat (int ,struct stat*) ;
 TYPE_1__ server ;
 int time (int *) ;

void startLoading(FILE *fp) {
    struct stat sb;


    server.loading = 1;
    server.loading_start_time = time(((void*)0));
    if (fstat(fileno(fp), &sb) == -1) {
        server.loading_total_bytes = 1;
    } else {
        server.loading_total_bytes = sb.st_size;
    }
}
