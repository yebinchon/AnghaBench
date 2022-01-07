
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int hb_filter_private_t ;
struct TYPE_7__ {int y; int x; } ;
struct TYPE_8__ {TYPE_1__ f; } ;
typedef TYPE_2__ hb_buffer_t ;


 int blend (TYPE_2__*,TYPE_2__*,int ,int ) ;

__attribute__((used)) static void ApplySub( hb_filter_private_t * pv, hb_buffer_t * buf, hb_buffer_t * sub )
{
    blend( buf, sub, sub->f.x, sub->f.y );
}
