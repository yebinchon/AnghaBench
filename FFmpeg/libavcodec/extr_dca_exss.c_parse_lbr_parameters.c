
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ lbr_size; } ;
struct TYPE_5__ {int gb; } ;
typedef TYPE_1__ DCAExssParser ;
typedef TYPE_2__ DCAExssAsset ;


 scalar_t__ get_bits (int *,int) ;
 scalar_t__ get_bits1 (int *) ;
 int skip_bits (int *,int) ;

__attribute__((used)) static void parse_lbr_parameters(DCAExssParser *s, DCAExssAsset *asset)
{

    asset->lbr_size = get_bits(&s->gb, 14) + 1;


    if (get_bits1(&s->gb))

        skip_bits(&s->gb, 2);
}
