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
struct TYPE_3__ {int /*<<< orphan*/  r; int /*<<< orphan*/  l; } ;
typedef  TYPE_1__ ctr_csnd_audio_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void *data)
{
   ctr_csnd_audio_t* ctr = (ctr_csnd_audio_t*)data;

#if 0
   csndExit();
#endif
   FUNC0(0x8, 0);
   FUNC0(0x9, 0);
   FUNC1(false);

   FUNC4(ctr->l);
   FUNC4(ctr->r);

   FUNC3(ctr);
}