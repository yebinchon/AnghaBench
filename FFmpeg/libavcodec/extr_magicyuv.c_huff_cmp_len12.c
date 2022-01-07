
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; int sym; } ;
typedef TYPE_1__ HuffEntry ;



__attribute__((used)) static int huff_cmp_len12(const void *a, const void *b)
{
    const HuffEntry *aa = a, *bb = b;
    return (aa->len - bb->len) * 4096 + aa->sym - bb->sym;
}
