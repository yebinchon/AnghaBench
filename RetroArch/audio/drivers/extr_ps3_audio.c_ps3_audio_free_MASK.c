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
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_4__ {int quit_thread; int /*<<< orphan*/  cond; int /*<<< orphan*/  cond_lock; int /*<<< orphan*/  lock; int /*<<< orphan*/  buffer; int /*<<< orphan*/  audio_port; int /*<<< orphan*/  thread; } ;
typedef  TYPE_1__ ps3_audio_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(void *data)
{
   uint64_t val;
   ps3_audio_t *aud = data;

   aud->quit_thread = true;
   FUNC4(aud, false);
   FUNC8(aud->thread, &val);

   FUNC5(aud);
   FUNC0(aud->audio_port);
   FUNC1();
   FUNC2(aud->buffer);

   FUNC7(&aud->lock);
   FUNC7(&aud->cond_lock);
   FUNC6(&aud->cond);

   FUNC3(data);
}