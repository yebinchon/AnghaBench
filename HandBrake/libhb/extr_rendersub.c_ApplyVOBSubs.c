
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_17__ {int sub_list; } ;
typedef TYPE_2__ hb_filter_private_t ;
struct TYPE_16__ {scalar_t__ stop; scalar_t__ start; } ;
struct TYPE_18__ {struct TYPE_18__* next; TYPE_1__ s; } ;
typedef TYPE_3__ hb_buffer_t ;


 scalar_t__ AV_NOPTS_VALUE ;
 int ApplySub (TYPE_2__*,TYPE_3__*,TYPE_3__*) ;
 TYPE_3__* ScaleSubtitle (TYPE_2__*,TYPE_3__*,TYPE_3__*) ;
 int hb_buffer_close (TYPE_3__**) ;
 int hb_list_count (int ) ;
 TYPE_3__* hb_list_item (int ,int) ;
 int hb_list_rem (int ,TYPE_3__*) ;

__attribute__((used)) static void ApplyVOBSubs( hb_filter_private_t * pv, hb_buffer_t * buf )
{
    int ii;
    hb_buffer_t *sub, *next;

    for( ii = 0; ii < hb_list_count(pv->sub_list); )
    {
        sub = hb_list_item( pv->sub_list, ii );
        if (ii + 1 < hb_list_count(pv->sub_list))
            next = hb_list_item( pv->sub_list, ii + 1 );
        else
            next = ((void*)0);

        if ((sub->s.stop != AV_NOPTS_VALUE && sub->s.stop <= buf->s.start) ||
            (next != ((void*)0) && sub->s.stop == AV_NOPTS_VALUE && next->s.start <= buf->s.start))
        {

            hb_list_rem( pv->sub_list, sub );
            hb_buffer_close( &sub );
        }
        else if( sub->s.start <= buf->s.start )
        {


            while ( sub )
            {
                hb_buffer_t *scaled = ScaleSubtitle(pv, sub, buf);
                ApplySub( pv, buf, scaled );
                hb_buffer_close(&scaled);
                sub = sub->next;
            }
            ii++;
        }
        else
        {

            break;
        }
    }
}
