
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {scalar_t__ type; int offset; scalar_t__ name; } ;
struct TYPE_7__ {int offset; int offset_count; scalar_t__ format_header; TYPE_3__* fields; int size; } ;
struct TYPE_6__ {int ass; } ;
typedef TYPE_1__ ASSSplitContext ;
typedef TYPE_2__ ASSSection ;
typedef TYPE_3__ ASSFields ;


 scalar_t__ ASS_STR ;
 int av_freep (int *) ;

__attribute__((used)) static void free_section(ASSSplitContext *ctx, const ASSSection *section)
{
    uint8_t *ptr = (uint8_t *)&ctx->ass + section->offset;
    int i, j, *count, c = 1;

    if (section->format_header) {
        ptr = *(void **)ptr;
        count = (int *)((uint8_t *)&ctx->ass + section->offset_count);
    } else
        count = &c;

    if (ptr)
        for (i=0; i<*count; i++, ptr += section->size)
            for (j=0; section->fields[j].name; j++) {
                const ASSFields *field = &section->fields[j];
                if (field->type == ASS_STR)
                    av_freep(ptr + field->offset);
            }
    *count = 0;

    if (section->format_header)
        av_freep((uint8_t *)&ctx->ass + section->offset);
}
