
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct AVHashContext {int dummy; } ;


 int AV_HASH_MAX_SIZE ;
 int FFMIN (int,unsigned int) ;
 int av_hash_final (struct AVHashContext*,int *) ;
 unsigned int av_hash_get_size (struct AVHashContext*) ;
 int memcpy (int *,int *,int ) ;
 int memset (int *,int ,int) ;

void av_hash_final_bin(struct AVHashContext *ctx, uint8_t *dst, int size)
{
    uint8_t buf[AV_HASH_MAX_SIZE];
    unsigned rsize = av_hash_get_size(ctx);

    av_hash_final(ctx, buf);
    memcpy(dst, buf, FFMIN(size, rsize));
    if (size > rsize)
        memset(dst + rsize, 0, size - rsize);
}
