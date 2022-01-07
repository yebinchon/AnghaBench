
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int todo; int restart_interval; scalar_t__ eob_run; int marker; TYPE_1__* img_comp; scalar_t__ nomore; scalar_t__ code_buffer; scalar_t__ code_bits; } ;
typedef TYPE_2__ stbi__jpeg ;
struct TYPE_4__ {scalar_t__ dc_pred; } ;


 int STBI__MARKER_none ;

__attribute__((used)) static void stbi__jpeg_reset(stbi__jpeg *j)
{
   j->code_bits = 0;
   j->code_buffer = 0;
   j->nomore = 0;
   j->img_comp[0].dc_pred = j->img_comp[1].dc_pred = j->img_comp[2].dc_pred = j->img_comp[3].dc_pred = 0;
   j->marker = STBI__MARKER_none;
   j->todo = j->restart_interval ? j->restart_interval : 0x7fffffff;
   j->eob_run = 0;


}
