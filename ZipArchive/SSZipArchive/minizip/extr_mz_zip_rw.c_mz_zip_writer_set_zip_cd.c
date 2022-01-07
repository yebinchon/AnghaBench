
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int zip_cd; } ;
typedef TYPE_1__ mz_zip_writer ;



void mz_zip_writer_set_zip_cd(void *handle, uint8_t zip_cd)
{
    mz_zip_writer *writer = (mz_zip_writer *)handle;
    writer->zip_cd = zip_cd;
}
