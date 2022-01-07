
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 unsigned int Nb ;
 unsigned int Nk ;
 size_t* sbox ;

__attribute__((used)) static inline void sub_bytes(uint8_t *s)
{
    unsigned int i;

    for (i = 0; i < (Nb * Nk); ++i) {
        s[i] = sbox[s[i]];
    }
}
