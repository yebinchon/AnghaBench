
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_2__ {scalar_t__ fontsize; scalar_t__ code; } ;
typedef TYPE_1__ Glyph ;


 int FFDIFFSIGN (scalar_t__,scalar_t__) ;

__attribute__((used)) static int glyph_cmp(const void *key, const void *b)
{
    const Glyph *a = key, *bb = b;
    int64_t diff = (int64_t)a->code - (int64_t)bb->code;

    if (diff != 0)
         return diff > 0 ? 1 : -1;
    else
         return FFDIFFSIGN((int64_t)a->fontsize, (int64_t)bb->fontsize);
}
