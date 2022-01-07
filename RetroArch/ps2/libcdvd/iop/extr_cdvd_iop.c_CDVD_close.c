
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int iop_file_t ;
struct TYPE_2__ {int * fd; } ;


 TYPE_1__* fd_table ;
 scalar_t__* fd_used ;
 int files_open ;
 int printf (char*,...) ;

int CDVD_close(iop_file_t *f)
{
    int i;






    for (i = 0; i < 16; i++) {
        if (fd_table[i].fd == f)
            break;
    }

    if (i >= 16) {




        return -1;
    }





    fd_used[i] = 0;
    files_open--;

    return 0;
}
