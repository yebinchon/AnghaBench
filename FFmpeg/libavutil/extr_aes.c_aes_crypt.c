
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_3__ {int rounds; int * state; int * round_key; } ;
typedef TYPE_1__ AVAES ;


 int addkey (int *,int *,int *) ;
 int mix (int *,int **,int,int) ;
 int subshift (int *,int,int const*) ;

__attribute__((used)) static inline void aes_crypt(AVAES *a, int s, const uint8_t *sbox,
                         uint32_t multbl[][256])
{
    int r;

    for (r = a->rounds - 1; r > 0; r--) {
        mix(a->state, multbl, 3 - s, 1 + s);
        addkey(&a->state[1], &a->state[0], &a->round_key[r]);
    }

    subshift(&a->state[0], s, sbox);
}
