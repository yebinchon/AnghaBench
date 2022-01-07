
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int brotli_free_func ;
typedef scalar_t__ (* brotli_alloc_func ) (void*,int) ;
struct TYPE_4__ {int memory_manager_; } ;
typedef TYPE_1__ BrotliEncoderState ;


 int BrotliEncoderInitState (TYPE_1__*) ;
 int BrotliInitMemoryManager (int *,scalar_t__ (*) (void*,int),int ,void*) ;
 scalar_t__ malloc (int) ;

BrotliEncoderState* BrotliEncoderCreateInstance(
    brotli_alloc_func alloc_func, brotli_free_func free_func, void* opaque) {
  BrotliEncoderState* state = 0;
  if (!alloc_func && !free_func) {
    state = (BrotliEncoderState*)malloc(sizeof(BrotliEncoderState));
  } else if (alloc_func && free_func) {
    state = (BrotliEncoderState*)alloc_func(opaque, sizeof(BrotliEncoderState));
  }
  if (state == 0) {

    return 0;
  }
  BrotliInitMemoryManager(
      &state->memory_manager_, alloc_func, free_func, opaque);
  BrotliEncoderInitState(state);
  return state;
}
