
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ input_length; scalar_t__ buffer_length; int * buffer; } ;
typedef TYPE_1__ InputBuffer ;


 TYPE_1__* malloc (int) ;

InputBuffer* new_input_buffer() {
  InputBuffer* input_buffer = malloc(sizeof(InputBuffer));
  input_buffer->buffer = ((void*)0);
  input_buffer->buffer_length = 0;
  input_buffer->input_length = 0;

  return input_buffer;
}
