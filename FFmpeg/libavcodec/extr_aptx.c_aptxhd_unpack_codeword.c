
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {TYPE_1__* quantize; } ;
struct TYPE_5__ {int quantized_sample; } ;
typedef TYPE_2__ Channel ;


 int aptx_quantized_parity (TYPE_2__*) ;
 void* sign_extend (int,int) ;

__attribute__((used)) static void aptxhd_unpack_codeword(Channel *channel, uint32_t codeword)
{
    channel->quantize[0].quantized_sample = sign_extend(codeword >> 0, 9);
    channel->quantize[1].quantized_sample = sign_extend(codeword >> 9, 6);
    channel->quantize[2].quantized_sample = sign_extend(codeword >> 15, 4);
    channel->quantize[3].quantized_sample = sign_extend(codeword >> 19, 5);
    channel->quantize[3].quantized_sample = (channel->quantize[3].quantized_sample & ~1)
                                          | aptx_quantized_parity(channel);
}
