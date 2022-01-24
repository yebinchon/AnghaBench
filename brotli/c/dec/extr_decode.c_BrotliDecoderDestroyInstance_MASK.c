#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  (* brotli_free_func ) (void*,TYPE_1__*) ;
struct TYPE_5__ {void* memory_manager_opaque; int /*<<< orphan*/  (* free_func ) (void*,TYPE_1__*) ;} ;
typedef  TYPE_1__ BrotliDecoderState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

void FUNC1(BrotliDecoderState* state) {
  if (!state) {
    return;
  } else {
    brotli_free_func free_func = state->free_func;
    void* opaque = state->memory_manager_opaque;
    FUNC0(state);
    free_func(opaque, state);
  }
}