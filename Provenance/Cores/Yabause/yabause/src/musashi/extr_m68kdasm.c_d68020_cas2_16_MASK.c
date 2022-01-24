#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M68020_PLUS ; 
 int /*<<< orphan*/  g_dasm_str ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,int,int,int,char,int,char,int) ; 

__attribute__((used)) static void FUNC5(void)
{
/* CAS2 Dc1:Dc2,Du1:Dc2:(Rn1):(Rn2)
f e d c b a 9 8 7 6 5 4 3 2 1 0
 DARn1  0 0 0  Du1  0 0 0  Dc1
 DARn2  0 0 0  Du2  0 0 0  Dc2
*/

	uint extension;
	FUNC2(M68020_PLUS);
	extension = FUNC3();
	FUNC4(g_dasm_str, "cas2.w  D%d:D%d, D%d:D%d, (%c%d):(%c%d); (2+)",
		(extension>>16)&7, extension&7, (extension>>22)&7, (extension>>6)&7,
		FUNC0(extension) ? 'A' : 'D', (extension>>28)&7,
		FUNC1(extension) ? 'A' : 'D', (extension>>12)&7);
}