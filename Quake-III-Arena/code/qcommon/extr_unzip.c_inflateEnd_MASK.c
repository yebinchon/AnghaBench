#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* z_streamp ;
struct TYPE_8__ {struct TYPE_8__* state; struct TYPE_8__* blocks; struct TYPE_8__* zfree; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__* Z_NULL ; 
 int Z_OK ; 
 int Z_STREAM_ERROR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*) ; 

int FUNC3(z_streamp z)
{
  if (z == Z_NULL || z->state == Z_NULL || z->zfree == Z_NULL)
    return Z_STREAM_ERROR;
  if (z->state->blocks != Z_NULL)
    FUNC2(z->state->blocks, z);
  FUNC1(z, z->state);
  z->state = Z_NULL;
  FUNC0(("inflate: end\n"));
  return Z_OK;
}