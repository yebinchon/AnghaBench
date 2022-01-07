
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ len; scalar_t__ size; } ;
typedef TYPE_1__ AVBPrint ;



__attribute__((used)) static inline int av_bprint_is_complete(const AVBPrint *buf)
{
    return buf->len < buf->size;
}
