#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  cond; int /*<<< orphan*/  buffer; } ;
typedef  TYPE_1__ sdl_audio_t ;
typedef  int /*<<< orphan*/  Uint8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void *data, Uint8 *stream, int len)
{
   sdl_audio_t  *sdl = (sdl_audio_t*)data;
   size_t      avail = FUNC1(sdl->buffer);
   size_t write_size = len > (int)avail ? avail : len;

   FUNC0(sdl->buffer, stream, write_size);
#ifdef HAVE_THREADS
   scond_signal(sdl->cond);
#endif

   /* If underrun, fill rest with silence. */
   FUNC2(stream + write_size, 0, len - write_size);
}