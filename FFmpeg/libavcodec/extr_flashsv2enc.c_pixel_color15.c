
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static inline unsigned pixel_color15(const uint8_t * src)
{
    return (src[0] >> 3) | ((src[1] & 0xf8) << 2) | ((src[2] & 0xf8) << 7);
}
