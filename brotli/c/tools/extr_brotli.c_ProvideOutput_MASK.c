#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  output; int /*<<< orphan*/  next_out; int /*<<< orphan*/  available_out; } ;
typedef  TYPE_1__ Context ;
typedef  int /*<<< orphan*/  BROTLI_BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  BROTLI_FALSE ; 
 int /*<<< orphan*/  BROTLI_TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  kFileBufferSize ; 

__attribute__((used)) static BROTLI_BOOL FUNC1(Context* context) {
  if (!FUNC0(context)) return BROTLI_FALSE;
  context->available_out = kFileBufferSize;
  context->next_out = context->output;
  return BROTLI_TRUE;
}