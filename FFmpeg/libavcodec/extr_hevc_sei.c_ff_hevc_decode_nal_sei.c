
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HEVCSEI ;
typedef int HEVCParamSets ;
typedef int GetBitContext ;


 int decode_nal_sei_message (int *,void*,int *,int const*,int) ;
 scalar_t__ more_rbsp_data (int *) ;

int ff_hevc_decode_nal_sei(GetBitContext *gb, void *logctx, HEVCSEI *s,
                           const HEVCParamSets *ps, int type)
{
    int ret;

    do {
        ret = decode_nal_sei_message(gb, logctx, s, ps, type);
        if (ret < 0)
            return ret;
    } while (more_rbsp_data(gb));
    return 1;
}
