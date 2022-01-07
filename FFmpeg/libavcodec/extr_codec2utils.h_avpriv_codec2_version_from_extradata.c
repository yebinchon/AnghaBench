
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;



__attribute__((used)) static inline uint16_t avpriv_codec2_version_from_extradata(uint8_t *ptr) {
    return (ptr[0] << 8) + ptr[1];
}
