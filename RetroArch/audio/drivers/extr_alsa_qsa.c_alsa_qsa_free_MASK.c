#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct TYPE_3__* buffer_chunk; struct TYPE_3__* buffer; int /*<<< orphan*/ * pcm; } ;
typedef  TYPE_1__ alsa_qsa_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(void *data)
{
   alsa_qsa_t *alsa = (alsa_qsa_t*)data;

   if (alsa)
   {
      if (alsa->pcm)
      {
         FUNC1(alsa->pcm);
         alsa->pcm = NULL;
      }
      FUNC0(alsa->buffer);
      FUNC0(alsa->buffer_chunk);
      FUNC0(alsa);
   }
}