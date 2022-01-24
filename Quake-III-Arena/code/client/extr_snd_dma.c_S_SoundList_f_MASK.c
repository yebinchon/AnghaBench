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
struct TYPE_3__ {int soundLength; size_t soundCompressionMethod; size_t inMemory; int /*<<< orphan*/  soundName; } ;
typedef  TYPE_1__ sfx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* s_knownSfx ; 
 int s_numSfx ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

void FUNC3( void ) {
	int		i;
	sfx_t	*sfx;
	int		size, total;
	char	type[4][16];
	char	mem[2][16];

	FUNC2(type[0], "16bit");
	FUNC2(type[1], "adpcm");
	FUNC2(type[2], "daub4");
	FUNC2(type[3], "mulaw");
	FUNC2(mem[0], "paged out");
	FUNC2(mem[1], "resident ");
	total = 0;
	for (sfx=s_knownSfx, i=0 ; i<s_numSfx ; i++, sfx++) {
		size = sfx->soundLength;
		total += size;
		FUNC0("%6i[%s] : %s[%s]\n", size, type[sfx->soundCompressionMethod], sfx->soundName, mem[sfx->inMemory] );
	}
	FUNC0 ("Total resident: %i\n", total);
	FUNC1();
}