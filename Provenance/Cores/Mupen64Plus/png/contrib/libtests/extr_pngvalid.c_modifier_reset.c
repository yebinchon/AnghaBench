
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int limit; scalar_t__ colour_type; scalar_t__ bit_depth; scalar_t__ encoding_ignored; scalar_t__ current_encoding; scalar_t__ current_gamma; scalar_t__ test_uses_encoding; int state; int * modifications; scalar_t__ buffer_position; scalar_t__ buffer_count; scalar_t__ flush; scalar_t__ pending_chunk; scalar_t__ pending_len; int this; } ;
typedef TYPE_1__ png_modifier ;


 int modifier_encoding_iterate (TYPE_1__*) ;
 int modifier_start ;
 int store_read_reset (int *) ;

__attribute__((used)) static void
modifier_reset(png_modifier *pm)
{
   store_read_reset(&pm->this);
   pm->limit = 4E-3;
   pm->pending_len = pm->pending_chunk = 0;
   pm->flush = pm->buffer_count = pm->buffer_position = 0;
   pm->modifications = ((void*)0);
   pm->state = modifier_start;
   modifier_encoding_iterate(pm);




   pm->test_uses_encoding = 0;
   pm->current_gamma = 0;
   pm->current_encoding = 0;
   pm->encoding_ignored = 0;

   pm->bit_depth = pm->colour_type = 0;
}
