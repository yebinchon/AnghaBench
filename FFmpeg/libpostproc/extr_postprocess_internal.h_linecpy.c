
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void uint8_t ;


 int memcpy (void*,void const*,int) ;

__attribute__((used)) static inline void linecpy(void *dest, const void *src, int lines, int stride) {
    if (stride > 0) {
        memcpy(dest, src, lines*stride);
    } else {
        memcpy((uint8_t*)dest+(lines-1)*stride, (const uint8_t*)src+(lines-1)*stride, -lines*stride);
    }
}
