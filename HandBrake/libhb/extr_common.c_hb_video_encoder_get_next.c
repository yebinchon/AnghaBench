
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int hb_encoder_t ;
struct TYPE_2__ {int const* next; } ;
typedef TYPE_1__ hb_encoder_internal_t ;


 int const* hb_video_encoders_first_item ;

const hb_encoder_t* hb_video_encoder_get_next(const hb_encoder_t *last)
{
    if (last == ((void*)0))
    {
        return hb_video_encoders_first_item;
    }
    return ((hb_encoder_internal_t*)last)->next;
}
