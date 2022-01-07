
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ size; int * data; } ;


 TYPE_1__ undo_load_buf ;

bool content_undo_load_buf_is_empty(void)
{
   return undo_load_buf.data == ((void*)0) || undo_load_buf.size == 0;
}
