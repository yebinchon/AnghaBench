
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct AVAESCTR {scalar_t__ block_offset; int counter; int aes; } ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_aes_alloc () ;
 int av_aes_init (int ,int const*,int,int ) ;
 int memset (int ,int ,int) ;

int av_aes_ctr_init(struct AVAESCTR *a, const uint8_t *key)
{
    a->aes = av_aes_alloc();
    if (!a->aes) {
        return AVERROR(ENOMEM);
    }

    av_aes_init(a->aes, key, 128, 0);

    memset(a->counter, 0, sizeof(a->counter));
    a->block_offset = 0;

    return 0;
}
