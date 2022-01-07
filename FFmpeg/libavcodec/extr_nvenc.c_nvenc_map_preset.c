
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int flags; int guid; } ;
struct TYPE_7__ {int presetGUID; } ;
struct TYPE_8__ {size_t preset; int flags; TYPE_1__ init_encode_params; } ;
typedef TYPE_2__ NvencContext ;
typedef TYPE_3__ GUIDTuple ;


 int BD ;
 int DEFAULT ;
 int FAST ;
 int HP ;
 int HQ ;
 int LOSSLESS_DEFAULT ;
 int LOSSLESS_HP ;
 int LOW_LATENCY_DEFAULT ;
 int LOW_LATENCY_HP ;
 int LOW_LATENCY_HQ ;
 int MEDIUM ;
 int NVENC_LOSSLESS ;
 int NVENC_LOWLATENCY ;
 int NVENC_ONE_PASS ;
 int NVENC_TWO_PASSES ;
 TYPE_3__ PRESET (int ,...) ;
 TYPE_3__ PRESET_ALIAS (int ,int ,int ) ;
 int SLOW ;

__attribute__((used)) static void nvenc_map_preset(NvencContext *ctx)
{
    GUIDTuple presets[] = {
        PRESET(DEFAULT),
        PRESET(HP),
        PRESET(HQ),
        PRESET(BD),
        PRESET_ALIAS(SLOW, HQ, NVENC_TWO_PASSES),
        PRESET_ALIAS(MEDIUM, HQ, NVENC_ONE_PASS),
        PRESET_ALIAS(FAST, HP, NVENC_ONE_PASS),
        PRESET(LOW_LATENCY_DEFAULT, NVENC_LOWLATENCY),
        PRESET(LOW_LATENCY_HP, NVENC_LOWLATENCY),
        PRESET(LOW_LATENCY_HQ, NVENC_LOWLATENCY),
        PRESET(LOSSLESS_DEFAULT, NVENC_LOSSLESS),
        PRESET(LOSSLESS_HP, NVENC_LOSSLESS),
    };

    GUIDTuple *t = &presets[ctx->preset];

    ctx->init_encode_params.presetGUID = t->guid;
    ctx->flags = t->flags;
}
