
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int io_t ;
struct TYPE_4__ {int io_count; TYPE_1__* io; } ;
struct TYPE_3__ {int base_value; int value; int name; } ;


 int init_string (char const*) ;
 int vec_size (void**,int,int) ;
 TYPE_2__* video_layout_state ;

int video_layout_io_assign(const char *name, int base_value)
{
   int index;

   index = video_layout_state->io_count;

   vec_size((void**)&video_layout_state->io, sizeof(io_t), ++video_layout_state->io_count);

   video_layout_state->io[index].name = init_string(name);
   video_layout_state->io[index].base_value = base_value;
   video_layout_state->io[index].value = base_value;

   return index;
}
