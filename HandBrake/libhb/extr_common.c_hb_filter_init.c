
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int id; int name; struct TYPE_4__* sub_filter; } ;
typedef TYPE_1__ hb_filter_object_t ;




 int HB_FILTER_MT_FRAME ;

 TYPE_1__* hb_filter_copy (int ) ;
 int hb_filter_get (int) ;

hb_filter_object_t * hb_filter_init( int filter_id )
{
    switch (filter_id)
    {
        case 128:
        case 129:
        case 130:
        {
            hb_filter_object_t * wrapper;

            wrapper = hb_filter_copy(hb_filter_get(HB_FILTER_MT_FRAME));
            wrapper->sub_filter = hb_filter_copy(hb_filter_get(filter_id));
            wrapper->id = filter_id;
            wrapper->name = wrapper->sub_filter->name;
            return wrapper;
        } break;

        default:
            return hb_filter_copy(hb_filter_get(filter_id));
    }
}
