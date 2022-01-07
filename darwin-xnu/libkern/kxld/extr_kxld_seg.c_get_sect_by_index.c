
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_4__ {int sects; } ;
typedef TYPE_1__ KXLDSeg ;
typedef int KXLDSect ;


 int check (TYPE_1__ const*) ;
 scalar_t__ kxld_array_get_item (int *,int ) ;

__attribute__((used)) static KXLDSect *
get_sect_by_index(const KXLDSeg *seg, u_int idx)
{
    check(seg);

    return *(KXLDSect **) kxld_array_get_item(&seg->sects, idx);
}
