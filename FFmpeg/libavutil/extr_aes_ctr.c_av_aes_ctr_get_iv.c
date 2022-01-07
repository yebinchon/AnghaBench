
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct AVAESCTR {int const* counter; } ;



const uint8_t* av_aes_ctr_get_iv(struct AVAESCTR *a)
{
    return a->counter;
}
