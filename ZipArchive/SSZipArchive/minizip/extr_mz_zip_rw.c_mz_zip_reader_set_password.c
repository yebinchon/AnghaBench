
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* password; } ;
typedef TYPE_1__ mz_zip_reader ;



void mz_zip_reader_set_password(void *handle, const char *password)
{
    mz_zip_reader *reader = (mz_zip_reader *)handle;
    reader->password = password;
}
