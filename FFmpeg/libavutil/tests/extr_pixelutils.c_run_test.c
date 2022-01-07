
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int FF_ARRAY_ELEMS (int ) ;
 int W1 ;
 int W2 ;
 int run_single_test (char const*,int const*,int ,int const*,int ,int,int) ;
 int sad_c ;

__attribute__((used)) static int run_test(const char *test,
                    const uint8_t *b1, const uint8_t *b2)
{
    int i, a, ret = 0;

    for (a = 0; a < 3; a++) {
        const uint8_t *block1 = b1;
        const uint8_t *block2 = b2;

        switch (a) {
        case 0: block1++; block2++; break;
        case 1: block2++; break;
        case 2: break;
        }
        for (i = 1; i <= FF_ARRAY_ELEMS(sad_c); i++) {
            int r = run_single_test(test, b1, W1, b2, W2, a, i);
            if (r)
                ret = r;
        }
    }
    return ret;
}
