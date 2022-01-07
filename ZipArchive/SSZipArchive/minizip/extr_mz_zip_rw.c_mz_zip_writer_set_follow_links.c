
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int follow_links; } ;
typedef TYPE_1__ mz_zip_writer ;



void mz_zip_writer_set_follow_links(void *handle, uint8_t follow_links)
{
    mz_zip_writer *writer = (mz_zip_writer *)handle;
    writer->follow_links = follow_links;
}
