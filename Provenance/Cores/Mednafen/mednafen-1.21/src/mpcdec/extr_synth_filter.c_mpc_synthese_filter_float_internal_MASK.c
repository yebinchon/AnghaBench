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
typedef  int mpc_uint32_t ;
typedef  int mpc_int_t ;
typedef  int mpc_int32_t ;
typedef  int /*<<< orphan*/  MPC_SAMPLE_FORMAT ;

/* Variables and functions */
 int /*<<< orphan*/  Di_opt ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(MPC_SAMPLE_FORMAT* p_out, MPC_SAMPLE_FORMAT* pV, const MPC_SAMPLE_FORMAT* pY, mpc_int_t channels)
{
    mpc_uint32_t n;
    for ( n = 0; n < 36; n++, pY += 32 )
    {
        MPC_SAMPLE_FORMAT*       pData = p_out;
        const MPC_SAMPLE_FORMAT* pD    = (const MPC_SAMPLE_FORMAT*) &Di_opt;
        mpc_int32_t k;
        pV -= 64;
        FUNC2( pY, pV );
        for ( k = 0; k < 32; k++, pD += 16, pV++ )
        {
            *pData = FUNC1(
                     FUNC0(pV[  0], pD[ 0]) + FUNC0(pV[ 96], pD[ 1]) + FUNC0(pV[128], pD[ 2]) + FUNC0(pV[224], pD[ 3])
                   + FUNC0(pV[256], pD[ 4]) + FUNC0(pV[352], pD[ 5]) + FUNC0(pV[384], pD[ 6]) + FUNC0(pV[480], pD[ 7])
                   + FUNC0(pV[512], pD[ 8]) + FUNC0(pV[608], pD[ 9]) + FUNC0(pV[640], pD[10]) + FUNC0(pV[736], pD[11])
                   + FUNC0(pV[768], pD[12]) + FUNC0(pV[864], pD[13]) + FUNC0(pV[896], pD[14]) + FUNC0(pV[992], pD[15])
                   , 2);
            pData += channels;
        }
        pV    -= 32; //bleh
        p_out += 32 * channels;
    }
}