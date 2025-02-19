
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int frameno_in; TYPE_1__* frame_info; } ;
typedef TYPE_3__ hb_work_private_t ;
struct TYPE_8__ {scalar_t__ start; scalar_t__ stop; } ;
struct TYPE_10__ {TYPE_2__ s; } ;
typedef TYPE_4__ hb_buffer_t ;
struct TYPE_7__ {scalar_t__ duration; scalar_t__ start; } ;


 int FRAME_INFO_MASK ;

__attribute__((used)) static void save_frame_info( hb_work_private_t * pv, hb_buffer_t * in )
{
    int i = pv->frameno_in & FRAME_INFO_MASK;
    pv->frame_info[i].start = in->s.start;
    pv->frame_info[i].duration = in->s.stop - in->s.start;
}
