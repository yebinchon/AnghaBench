
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __m128i ;


 int _mm_loadu_si128 (int const*) ;
 int _mm_storeu_si128 (int *,int ) ;
 int _mm_xor_si128 (int ,int ) ;

__attribute__((used)) static inline void xor128(void *out, const void *in)
{





    unsigned char * out_ = (unsigned char *) out;
    const unsigned char *in_ = (const unsigned char *) in;
    size_t i;

    for (i = 0; i < 16; i++) {
        out_[i] ^= in_[i];
    }

}
