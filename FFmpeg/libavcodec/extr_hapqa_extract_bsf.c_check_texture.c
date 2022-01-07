
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int texture; } ;
typedef TYPE_1__ HapqaExtractContext ;



__attribute__((used)) static int check_texture(HapqaExtractContext *ctx, int section_type) {
    if (((ctx->texture == 0)&&((section_type & 0x0F) == 0x0F)) ||
        ((ctx->texture == 1)&&((section_type & 0x0F) == 0x01)))
    {
        return 1;
    } else {
        return 0;
    }
}
