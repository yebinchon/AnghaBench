
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_uint32_t ;
typedef int mpc_int_t ;
typedef int mpc_int32_t ;
typedef int MPC_SAMPLE_FORMAT ;


 int Di_opt ;
 scalar_t__ MPC_MULTIPLY_FRACT (int ,int const) ;
 int MPC_SHL (scalar_t__,int) ;
 int mpc_compute_new_V (int const*,int *) ;

__attribute__((used)) static void
mpc_synthese_filter_float_internal(MPC_SAMPLE_FORMAT* p_out, MPC_SAMPLE_FORMAT* pV, const MPC_SAMPLE_FORMAT* pY, mpc_int_t channels)
{
    mpc_uint32_t n;
    for ( n = 0; n < 36; n++, pY += 32 )
    {
        MPC_SAMPLE_FORMAT* pData = p_out;
        const MPC_SAMPLE_FORMAT* pD = (const MPC_SAMPLE_FORMAT*) &Di_opt;
        mpc_int32_t k;
        pV -= 64;
        mpc_compute_new_V( pY, pV );
        for ( k = 0; k < 32; k++, pD += 16, pV++ )
        {
            *pData = MPC_SHL(
                     MPC_MULTIPLY_FRACT(pV[ 0], pD[ 0]) + MPC_MULTIPLY_FRACT(pV[ 96], pD[ 1]) + MPC_MULTIPLY_FRACT(pV[128], pD[ 2]) + MPC_MULTIPLY_FRACT(pV[224], pD[ 3])
                   + MPC_MULTIPLY_FRACT(pV[256], pD[ 4]) + MPC_MULTIPLY_FRACT(pV[352], pD[ 5]) + MPC_MULTIPLY_FRACT(pV[384], pD[ 6]) + MPC_MULTIPLY_FRACT(pV[480], pD[ 7])
                   + MPC_MULTIPLY_FRACT(pV[512], pD[ 8]) + MPC_MULTIPLY_FRACT(pV[608], pD[ 9]) + MPC_MULTIPLY_FRACT(pV[640], pD[10]) + MPC_MULTIPLY_FRACT(pV[736], pD[11])
                   + MPC_MULTIPLY_FRACT(pV[768], pD[12]) + MPC_MULTIPLY_FRACT(pV[864], pD[13]) + MPC_MULTIPLY_FRACT(pV[896], pD[14]) + MPC_MULTIPLY_FRACT(pV[992], pD[15])
                   , 2);
            pData += channels;
        }
        pV -= 32;
        p_out += 32 * channels;
    }
}
