
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct AACEncContext {int dummy; } ;
typedef int PutBitContext ;


 int INFINITY ;
 int quantize_and_encode_band_cost (struct AACEncContext*,int *,float const*,float*,int *,int,int,int,float const,int ,int *,int *,int) ;

__attribute__((used)) static inline void quantize_and_encode_band(struct AACEncContext *s, PutBitContext *pb,
                                            const float *in, float *out, int size, int scale_idx,
                                            int cb, const float lambda, int rtz)
{
    quantize_and_encode_band_cost(s, pb, in, out, ((void*)0), size, scale_idx, cb, lambda,
                                  INFINITY, ((void*)0), ((void*)0), rtz);
}
