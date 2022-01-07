
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int** ff_celt_pvq_u_row ;

__attribute__((used)) static inline uint64_t celt_cwrsi(uint32_t N, uint32_t K, uint32_t i, int *y)
{
    uint64_t norm = 0;
    uint32_t q, p;
    int s, val;
    int k0;

    while (N > 2) {

        if (K >= N) {
            const uint32_t *row = ff_celt_pvq_u_row[N];


            p = row[K + 1];
            s = -(i >= p);
            i -= p & s;


            k0 = K;
            q = row[N];
            if (q > i) {
                K = N;
                do {
                    p = ff_celt_pvq_u_row[--K][N];
                } while (p > i);
            } else
                for (p = row[K]; p > i; p = row[K])
                    K--;

            i -= p;
            val = (k0 - K + s) ^ s;
            norm += val * val;
            *y++ = val;
        } else {

            p = ff_celt_pvq_u_row[K ][N];
            q = ff_celt_pvq_u_row[K + 1][N];

            if (p <= i && i < q) {
                i -= p;
                *y++ = 0;
            } else {

                s = -(i >= q);
                i -= q & s;


                k0 = K;
                do p = ff_celt_pvq_u_row[--K][N];
                while (p > i);

                i -= p;
                val = (k0 - K + s) ^ s;
                norm += val * val;
                *y++ = val;
            }
        }
        N--;
    }


    p = 2 * K + 1;
    s = -(i >= p);
    i -= p & s;
    k0 = K;
    K = (i + 1) / 2;

    if (K)
        i -= 2 * K - 1;

    val = (k0 - K + s) ^ s;
    norm += val * val;
    *y++ = val;


    s = -i;
    val = (K + s) ^ s;
    norm += val * val;
    *y = val;

    return norm;
}
