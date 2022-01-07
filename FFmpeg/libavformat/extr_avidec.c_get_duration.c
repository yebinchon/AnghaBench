
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dshow_block_align; scalar_t__ sample_size; } ;
typedef TYPE_1__ AVIStream ;



__attribute__((used)) static inline int get_duration(AVIStream *ast, int len)
{
    if (ast->sample_size)
        return len;
    else if (ast->dshow_block_align)
        return (len + ast->dshow_block_align - 1) / ast->dshow_block_align;
    else
        return 1;
}
