
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static inline unsigned pixel_bgr(const uint8_t * src)
{
    return (src[0]) | (src[1] << 8) | (src[2] << 16);
}
