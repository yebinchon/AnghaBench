#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_6__ {int /*<<< orphan*/  sema; TYPE_1__* user_buffer_list; int /*<<< orphan*/  audio_render; } ;
struct TYPE_5__ {int /*<<< orphan*/ * pBuffer; struct TYPE_5__* pAppPrivate; } ;
typedef  TYPE_1__ OMX_BUFFERHEADERTYPE ;
typedef  TYPE_2__ AUDIOPLAY_STATE_T ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

uint8_t *FUNC3(AUDIOPLAY_STATE_T *st)
{
   OMX_BUFFERHEADERTYPE *hdr = NULL;

   hdr = FUNC0(st->audio_render, 100, 0);

   if(hdr)
   {
      // put on the user list
      FUNC2(&st->sema);

      hdr->pAppPrivate = st->user_buffer_list;
      st->user_buffer_list = hdr;

      FUNC1(&st->sema);
   }

   return hdr ? hdr->pBuffer : NULL;
}