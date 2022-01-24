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
typedef  int /*<<< orphan*/  word2 ;
typedef  int /*<<< orphan*/  word1 ;
typedef  int /*<<< orphan*/  word0 ;
typedef  int /*<<< orphan*/  op ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned short) ; 
 int /*<<< orphan*/  f ; 
 int /*<<< orphan*/  FUNC1 (unsigned short*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(unsigned short op, unsigned short word0, unsigned short word1, unsigned short word2)
{
	FUNC0(op);
	FUNC0(word0);
	FUNC0(word1);
	FUNC0(word2);

	FUNC1(&op,    1, sizeof(op), f);
	FUNC1(&word0, 1, sizeof(word0), f);
	FUNC1(&word1, 1, sizeof(word1), f);
	FUNC1(&word2, 1, sizeof(word2), f);
}