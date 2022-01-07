
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int (* brotli_free_func ) (void*,TYPE_1__*) ;
struct TYPE_5__ {void* memory_manager_opaque; int (* free_func ) (void*,TYPE_1__*) ;} ;
typedef TYPE_1__ BrotliDecoderState ;


 int BrotliDecoderStateCleanup (TYPE_1__*) ;

void BrotliDecoderDestroyInstance(BrotliDecoderState* state) {
  if (!state) {
    return;
  } else {
    brotli_free_func free_func = state->free_func;
    void* opaque = state->memory_manager_opaque;
    BrotliDecoderStateCleanup(state);
    free_func(opaque, state);
  }
}
