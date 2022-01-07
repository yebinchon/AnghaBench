
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int playlist; } ;
typedef TYPE_1__ BLURAY_TITLE_INFO ;



__attribute__((used)) static int title_info_compare_mpls(const void *va, const void *vb)
{
    BLURAY_TITLE_INFO *a, *b;

    a = *(BLURAY_TITLE_INFO**)va;
    b = *(BLURAY_TITLE_INFO**)vb;

    return a->playlist - b->playlist;
}
