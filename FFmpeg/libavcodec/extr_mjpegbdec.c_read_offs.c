
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int GetBitContext ;
typedef int AVCodecContext ;


 int AV_LOG_WARNING ;
 int av_log (int *,int ,char const*,int ,int ) ;
 int get_bits_long (int *,int) ;

__attribute__((used)) static uint32_t read_offs(AVCodecContext *avctx, GetBitContext *gb, uint32_t size, const char *err_msg){
    uint32_t offs= get_bits_long(gb, 32);
    if(offs >= size){
        av_log(avctx, AV_LOG_WARNING, err_msg, offs, size);
        return 0;
    }
    return offs;
}
