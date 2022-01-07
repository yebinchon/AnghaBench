
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int iop_file_t ;
struct TYPE_2__ {int filePos; int fileSize; int * fd; } ;





 TYPE_1__* fd_table ;
 int printf (char*,...) ;

int CDVD_lseek(iop_file_t *f, int offset, int whence)
{
    int i;
    for (i = 0; i < 16; i++) {
        if (fd_table[i].fd == f)
            break;
    }

    if (i >= 16) {




        return -1;
    }

    switch (whence) {
        case 128:
            fd_table[i].filePos = offset;
            break;

        case 130:
            fd_table[i].filePos += offset;
            break;

        case 129:
            fd_table[i].filePos = fd_table[i].fileSize + offset;
            break;

        default:
            return -1;
    }

    if (fd_table[i].filePos < 0)
        fd_table[i].filePos = 0;

    if (fd_table[i].filePos > fd_table[i].fileSize)
        fd_table[i].filePos = fd_table[i].fileSize;

    return fd_table[i].filePos;
}
