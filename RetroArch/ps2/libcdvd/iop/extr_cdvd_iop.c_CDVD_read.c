
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int iop_file_t ;
struct TYPE_2__ {int filePos; int fileSize; int LBA; int * fd; } ;


 scalar_t__ ReadSect (int,int,char*,int *) ;
 scalar_t__ TRUE ;
 int cdReadMode ;
 TYPE_1__* fd_table ;
 int last_bk ;
 int lastsector ;
 int memcpy (void*,char*,int) ;
 int printf (char*,...) ;

int CDVD_read(iop_file_t *f, void *buffer, int size)
{
    int i;

    int start_sector;
    int off_sector;
    int num_sectors;

    int read = 0;





    static char local_buffer[9 * 2048];
    for (i = 0; i < 16; i++) {
        if (fd_table[i].fd == f)
            break;
    }

    if (i >= 16) {




        return -1;
    }



    if (fd_table[i].filePos > fd_table[i].fileSize) {

        return 0;
    }

    if ((fd_table[i].filePos + size) > fd_table[i].fileSize)
        size = fd_table[i].fileSize - fd_table[i].filePos;

    if (size <= 0)
        return 0;

    if (size > 16384)
        size = 16384;


    start_sector = fd_table[i].LBA + (fd_table[i].filePos >> 11);
    off_sector = (fd_table[i].filePos & 0x7FF);

    num_sectors = (off_sector + size);
    num_sectors = (num_sectors >> 11) + ((num_sectors & 2047) != 0);






    if (start_sector == lastsector) {
        read = 1;
        if (last_bk > 0)
            memcpy(local_buffer, local_buffer + 2048 * (last_bk), 2048);
        last_bk = 0;
    }

    lastsector = start_sector + num_sectors - 1;


    if (read == 0 || (read == 1 && num_sectors > 1)) {
        if (ReadSect(start_sector + read, num_sectors - read, local_buffer + ((read) << 11), &cdReadMode) != TRUE) {



        }

        last_bk = num_sectors - 1;
    }

    memcpy(buffer, local_buffer + off_sector, size);

    fd_table[i].filePos += size;

    return (size);
}
