
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ALSDecContext ;
typedef int ALSBlockData ;


 int decode_block (int *,int *) ;
 int read_block (int *,int *) ;

__attribute__((used)) static int read_decode_block(ALSDecContext *ctx, ALSBlockData *bd)
{
    int ret;

    if ((ret = read_block(ctx, bd)) < 0)
        return ret;

    return decode_block(ctx, bd);
}
