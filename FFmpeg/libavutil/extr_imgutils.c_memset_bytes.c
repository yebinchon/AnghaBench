
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int av_memcpy_backptr (scalar_t__*,size_t,size_t) ;
 int memcpy (scalar_t__*,scalar_t__*,size_t) ;
 int memset (scalar_t__*,scalar_t__,size_t) ;

__attribute__((used)) static void memset_bytes(uint8_t *dst, size_t dst_size, uint8_t *clear,
                         size_t clear_size)
{
    int same = 1;
    int i;

    if (!clear_size)
        return;


    for (i = 0; i < clear_size; i++) {
        if (clear[i] != clear[0]) {
            same = 0;
            break;
        }
    }
    if (same)
        clear_size = 1;

    if (clear_size == 1) {
        memset(dst, clear[0], dst_size);
    } else {
        if (clear_size > dst_size)
            clear_size = dst_size;
        memcpy(dst, clear, clear_size);
        av_memcpy_backptr(dst + clear_size, clear_size, dst_size - clear_size);
    }
}
