
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;



__attribute__((used)) static inline uint64_t replicate64(uint64_t a) {




    a &= 0x00FF00FF00FF00FFULL;
    a |= a << 8;

    return a;
}
