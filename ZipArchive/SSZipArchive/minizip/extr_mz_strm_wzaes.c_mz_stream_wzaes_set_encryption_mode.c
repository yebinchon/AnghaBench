
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int encryption_mode; } ;
typedef TYPE_1__ mz_stream_wzaes ;
typedef int int16_t ;



void mz_stream_wzaes_set_encryption_mode(void *stream, int16_t encryption_mode)
{
    mz_stream_wzaes *wzaes = (mz_stream_wzaes *)stream;
    wzaes->encryption_mode = encryption_mode;
}
