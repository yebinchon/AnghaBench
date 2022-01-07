
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int picture_hash; } ;
typedef TYPE_1__ HEVCSEI ;
typedef int GetBitContext ;


 int AV_LOG_DEBUG ;

 int av_log (void*,int ,char*,int) ;
 int decode_nal_sei_decoded_picture_hash (int *,int *) ;
 int skip_bits_long (int *,int) ;

__attribute__((used)) static int decode_nal_sei_suffix(GetBitContext *gb, void *logctx, HEVCSEI *s,
                                 int type, int size)
{
    switch (type) {
    case 128:
        return decode_nal_sei_decoded_picture_hash(&s->picture_hash, gb);
    default:
        av_log(logctx, AV_LOG_DEBUG, "Skipped SUFFIX SEI %d\n", type);
        skip_bits_long(gb, 8 * size);
        return 0;
    }
}
