
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int output; int next_out; int available_out; } ;
typedef TYPE_1__ Context ;
typedef int BROTLI_BOOL ;


 int BROTLI_FALSE ;
 int BROTLI_TRUE ;
 int WriteOutput (TYPE_1__*) ;
 int kFileBufferSize ;

__attribute__((used)) static BROTLI_BOOL ProvideOutput(Context* context) {
  if (!WriteOutput(context)) return BROTLI_FALSE;
  context->available_out = kFileBufferSize;
  context->next_out = context->output;
  return BROTLI_TRUE;
}
