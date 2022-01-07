
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int int32_t ;
struct TYPE_6__ {TYPE_1__* quantize; } ;
struct TYPE_5__ {int quantized_sample; } ;
typedef TYPE_2__ Channel ;


 int aptx_quantized_parity (TYPE_2__*) ;

__attribute__((used)) static uint32_t aptxhd_pack_codeword(Channel *channel)
{
    int32_t parity = aptx_quantized_parity(channel);
    return (((channel->quantize[3].quantized_sample & 0x01E) | parity) << 19)
         | (((channel->quantize[2].quantized_sample & 0x00F) ) << 15)
         | (((channel->quantize[1].quantized_sample & 0x03F) ) << 9)
         | (((channel->quantize[0].quantized_sample & 0x1FF) ) << 0);
}
