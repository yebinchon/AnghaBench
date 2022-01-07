
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* password; } ;
typedef TYPE_1__ mz_stream_wzaes ;



void mz_stream_wzaes_set_password(void *stream, const char *password)
{
    mz_stream_wzaes *wzaes = (mz_stream_wzaes *)stream;
    wzaes->password = password;
}
