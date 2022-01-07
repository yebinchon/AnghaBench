
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int extradata_size; int * extradata; } ;
struct TYPE_8__ {TYPE_1__** streams; TYPE_2__* priv_data; } ;
struct TYPE_7__ {scalar_t__ object_type; int off; int mod; int counter; int channel_conf; } ;
struct TYPE_6__ {TYPE_4__* codecpar; } ;
typedef int PutBitContext ;
typedef TYPE_2__ LATMContext ;
typedef int GetBitContext ;
typedef TYPE_3__ AVFormatContext ;
typedef TYPE_4__ AVCodecParameters ;


 scalar_t__ AOT_ALS ;
 int av_assert0 (int) ;
 int avpriv_copy_bits (int *,int *,int) ;
 int ff_copy_pce_data (int *,int *) ;
 int init_get_bits8 (int *,int *,int) ;
 int put_bits (int *,int,int) ;
 int skip_bits_long (int *,int) ;

__attribute__((used)) static void latm_write_frame_header(AVFormatContext *s, PutBitContext *bs)
{
    LATMContext *ctx = s->priv_data;
    AVCodecParameters *par = s->streams[0]->codecpar;
    int header_size;


    put_bits(bs, 1, !!ctx->counter);

    if (!ctx->counter) {

        put_bits(bs, 1, 0);
        put_bits(bs, 1, 1);
        put_bits(bs, 6, 0);
        put_bits(bs, 4, 0);
        put_bits(bs, 3, 0);


        if (ctx->object_type == AOT_ALS) {
            header_size = par->extradata_size-(ctx->off >> 3);
            avpriv_copy_bits(bs, &par->extradata[ctx->off >> 3], header_size);
        } else {


            avpriv_copy_bits(bs, par->extradata, ctx->off + 3);

            if (!ctx->channel_conf) {
                GetBitContext gb;
                int ret = init_get_bits8(&gb, par->extradata, par->extradata_size);
                av_assert0(ret >= 0);
                skip_bits_long(&gb, ctx->off + 3);
                ff_copy_pce_data(bs, &gb);
            }
        }

        put_bits(bs, 3, 0);
        put_bits(bs, 8, 0xff);

        put_bits(bs, 1, 0);
        put_bits(bs, 1, 0);
    }

    ctx->counter++;
    ctx->counter %= ctx->mod;
}
