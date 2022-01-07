
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 scalar_t__ av_popcount (int const) ;

__attribute__((used)) static unsigned int union_word(const uint8_t *first, const uint8_t *second)
{
    unsigned int val=0,i;
    for (i = 0; i < 28; i += 4) {
        val += av_popcount( (first[i] | second[i] ) << 24 |
                            (first[i+1] | second[i+1]) << 16 |
                            (first[i+2] | second[i+2]) << 8 |
                            (first[i+3] | second[i+3]) );
    }
    val += av_popcount( (first[28] | second[28]) << 16 |
                        (first[29] | second[29]) << 8 |
                        (first[30] | second[30]) );
    return val;
}
