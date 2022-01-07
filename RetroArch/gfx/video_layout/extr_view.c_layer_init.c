
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ elements_count; int * elements; int blend; int name; } ;
typedef TYPE_1__ layer_t ;


 int VIDEO_LAYOUT_BLEND_ALPHA ;
 int init_string (char const*) ;

void layer_init(layer_t *layer, const char *name)
{
   layer->name = init_string(name);
   layer->blend = VIDEO_LAYOUT_BLEND_ALPHA;
   layer->elements = ((void*)0);
   layer->elements_count = 0;
}
