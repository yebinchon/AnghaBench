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
typedef  int /*<<< orphan*/  pointer ;
struct TYPE_2__ {int /*<<< orphan*/  (* SetFetch ) (int,int,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  C68K ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* M68K ; 
 int /*<<< orphan*/ * SoundDummy ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(void) {
	int i;

	// Setup a 64k buffer filled with invalid 68k instructions to serve
	// as a default map
	if ((SoundDummy = FUNC1(0x10000)) != NULL)
		FUNC2(SoundDummy, 0xFF, 0x10000);

	FUNC0(&C68K, NULL); // not sure if I need the int callback or not

	for (i = 0x10; i < 0x100; i++)
		M68K->SetFetch(i << 16, (i << 16) + 0xFFFF, (pointer)SoundDummy);

	return 0;
}