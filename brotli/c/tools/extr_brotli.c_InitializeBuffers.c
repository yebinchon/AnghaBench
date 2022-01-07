
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ total_out; scalar_t__ total_in; int output; int next_out; int available_out; int * next_in; scalar_t__ available_in; } ;
typedef TYPE_1__ Context ;


 int kFileBufferSize ;

__attribute__((used)) static void InitializeBuffers(Context* context) {
  context->available_in = 0;
  context->next_in = ((void*)0);
  context->available_out = kFileBufferSize;
  context->next_out = context->output;
  context->total_in = 0;
  context->total_out = 0;
}
