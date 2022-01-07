
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int iop_file_t ;



int CDVD_write(iop_file_t *f, void *buffer, int size)
{
    if (size == 0)
        return 0;
    else
        return -1;
}
