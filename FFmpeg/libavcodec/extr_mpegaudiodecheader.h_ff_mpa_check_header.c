
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static inline int ff_mpa_check_header(uint32_t header){

    if ((header & 0xffe00000) != 0xffe00000)
        return -1;

    if ((header & (3<<19)) == 1<<19)
        return -1;

    if ((header & (3<<17)) == 0)
        return -1;

    if ((header & (0xf<<12)) == 0xf<<12)
        return -1;

    if ((header & (3<<10)) == 3<<10)
        return -1;
    return 0;
}
