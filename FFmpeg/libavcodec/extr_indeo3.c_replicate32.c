
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static inline uint32_t replicate32(uint32_t a) {




    a &= 0x00FF00FFUL;
    a |= a << 8;

    return a;
}
