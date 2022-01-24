#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ id; } ;
struct TYPE_8__ {int /*<<< orphan*/  buffers; } ;
typedef  scalar_t__ GLuint ;
typedef  int /*<<< orphan*/  GLenum ;
typedef  TYPE_1__ GLXX_CLIENT_STATE_T ;
typedef  TYPE_2__ GLXX_BUFFER_INFO_T ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

void FUNC3(GLXX_CLIENT_STATE_T *state, GLenum target, GLXX_BUFFER_INFO_T* buffer_info)
{
   GLuint buffer = FUNC0(state, target);

   FUNC2(buffer_info,0,sizeof(GLXX_BUFFER_INFO_T));

   buffer_info->id = 0;

   if(buffer != 0)
   {
      GLXX_BUFFER_INFO_T *stored = FUNC1(&state->buffers, buffer);
      if(stored)
         *buffer_info = *stored;
   }
}