
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static inline void avpriv_codec2_make_extradata(uint8_t *ptr, int mode) {

    ptr[0] = 0;
    ptr[1] = 8;
    ptr[2] = mode;
    ptr[3] = 0;
}
