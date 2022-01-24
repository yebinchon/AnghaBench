#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ id; } ;
struct TYPE_9__ {int /*<<< orphan*/  buffers; } ;
typedef  scalar_t__ GLuint ;
typedef  int /*<<< orphan*/  GLenum ;
typedef  TYPE_1__ GLXX_CLIENT_STATE_T ;
typedef  TYPE_2__ GLXX_BUFFER_INFO_T ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,TYPE_2__*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 

void FUNC4(GLXX_CLIENT_STATE_T *state, GLenum target, GLXX_BUFFER_INFO_T* buffer_info)
{
   GLuint buffer = FUNC0(state, target);

   if(buffer != 0)
   {
      GLXX_BUFFER_INFO_T *stored = FUNC3(&state->buffers, buffer);
      if(!stored)
      {
         stored = FUNC1(sizeof(GLXX_BUFFER_INFO_T), "GLXX_BUFFER_INFO_T");
         FUNC2(&state->buffers, buffer, stored);
      }
      buffer_info->id = buffer;
      //copy into stored
      *stored = *buffer_info;
   }
}