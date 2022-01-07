
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint8_t ;
struct TYPE_2__ {void* verify2; void* verify1; } ;
typedef TYPE_1__ mz_stream_pkcrypt ;



void mz_stream_pkcrypt_set_verify(void *stream, uint8_t verify1, uint8_t verify2)
{
    mz_stream_pkcrypt *pkcrypt = (mz_stream_pkcrypt *)stream;
    pkcrypt->verify1 = verify1;
    pkcrypt->verify2 = verify2;
}
