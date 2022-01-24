#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  ccdigest_state_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int CCSHA256_BLOCK_SIZE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 scalar_t__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void FUNC5(ccdigest_state_t state, size_t nblocks, const void *in)
{
    uint32_t W[64], t0, t1;
    uint32_t S0,S1,S2,S3,S4,S5,S6,S7;
    int i;
    uint32_t *s = FUNC3(state);
#if CC_HANDLE_UNALIGNED_DATA
    const unsigned char *buf = in;
#else
    const uint32_t *buf = in;
#endif

    while(nblocks--) {

        // schedule W 0..15
        FUNC4(0); FUNC4(1); FUNC4(2); FUNC4(3); FUNC4(4); FUNC4(5); FUNC4(6); FUNC4(7);
        FUNC4(8); FUNC4(9); FUNC4(10);FUNC4(11);FUNC4(12);FUNC4(13);FUNC4(14);FUNC4(15);

        // schedule W 16..63
        for (i = 16; i < 64; i++) {
            W[i] = FUNC1(W[i - 2]) + W[i - 7] + FUNC0(W[i - 15]) + W[i - 16];
        }

        // copy state into S
        S0= s[0];
        S1= s[1];
        S2= s[2];
        S3= s[3];
        S4= s[4];
        S5= s[5];
        S6= s[6];
        S7= s[7];

        // Compress
        for (i = 0; i < 64; i += 8) {
            FUNC2(S0,S1,S2,S3,S4,S5,S6,S7,i+0);
            FUNC2(S7,S0,S1,S2,S3,S4,S5,S6,i+1);
            FUNC2(S6,S7,S0,S1,S2,S3,S4,S5,i+2);
            FUNC2(S5,S6,S7,S0,S1,S2,S3,S4,i+3);
            FUNC2(S4,S5,S6,S7,S0,S1,S2,S3,i+4);
            FUNC2(S3,S4,S5,S6,S7,S0,S1,S2,i+5);
            FUNC2(S2,S3,S4,S5,S6,S7,S0,S1,i+6);
            FUNC2(S1,S2,S3,S4,S5,S6,S7,S0,i+7);
        }

        // feedback
        s[0] += S0;
        s[1] += S1;
        s[2] += S2;
        s[3] += S3;
        s[4] += S4;
        s[5] += S5;
        s[6] += S6;
        s[7] += S7;

        buf+=CCSHA256_BLOCK_SIZE/sizeof(buf[0]);
    }
}