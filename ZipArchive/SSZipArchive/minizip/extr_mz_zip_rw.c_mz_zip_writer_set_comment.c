
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* comment; } ;
typedef TYPE_1__ mz_zip_writer ;



void mz_zip_writer_set_comment(void *handle, const char *comment)
{
    mz_zip_writer *writer = (mz_zip_writer *)handle;
    writer->comment = comment;
}
