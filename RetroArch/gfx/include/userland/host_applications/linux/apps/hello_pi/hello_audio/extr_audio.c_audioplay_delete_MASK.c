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
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_4__ {int /*<<< orphan*/  sema; int /*<<< orphan*/  client; int /*<<< orphan*/  list; int /*<<< orphan*/  audio_render; int /*<<< orphan*/  user_buffer_list; } ;
typedef  scalar_t__ OMX_ERRORTYPE ;
typedef  TYPE_1__ AUDIOPLAY_STATE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OMX_CommandStateSet ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ OMX_ErrorNone ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OMX_StateIdle ; 
 int /*<<< orphan*/  OMX_StateLoaded ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int32_t FUNC10(AUDIOPLAY_STATE_T *st)
{
   OMX_ERRORTYPE error;

   FUNC5(st->audio_render, OMX_StateIdle);

   error = FUNC2(FUNC0(st->audio_render), OMX_CommandStateSet, OMX_StateLoaded, NULL);
   FUNC3(error == OMX_ErrorNone);

   FUNC8(st->audio_render, 100, st->user_buffer_list, NULL, NULL);
   FUNC5(st->audio_render, OMX_StateLoaded);
   FUNC6(st->list);

   error = FUNC1();
   FUNC3(error == OMX_ErrorNone);

   FUNC7(st->client);

   FUNC9(&st->sema);
   FUNC4(st);

   return 0;
}