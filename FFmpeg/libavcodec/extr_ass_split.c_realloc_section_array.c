
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int offset_count; int offset; int size; } ;
struct TYPE_5__ {size_t current_section; int ass; } ;
typedef TYPE_1__ ASSSplitContext ;
typedef TYPE_2__ ASSSection ;


 TYPE_2__* ass_sections ;
 int * av_realloc_array (void*,int,int) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static uint8_t *realloc_section_array(ASSSplitContext *ctx)
{
    const ASSSection *section = &ass_sections[ctx->current_section];
    int *count = (int *)((uint8_t *)&ctx->ass + section->offset_count);
    void **section_ptr = (void **)((uint8_t *)&ctx->ass + section->offset);
    uint8_t *tmp = av_realloc_array(*section_ptr, (*count+1), section->size);
    if (!tmp)
        return ((void*)0);
    *section_ptr = tmp;
    tmp += *count * section->size;
    memset(tmp, 0, section->size);
    (*count)++;
    return tmp;
}
