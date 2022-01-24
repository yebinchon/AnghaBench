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
struct MovieBufferStruct {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC3(struct MovieBufferStruct tempbuffer) {

	FILE* tempbuffertest;

	tempbuffertest=FUNC1("rmiab.txt", "wb");
	FUNC2 (tempbuffer.data, 1, tempbuffer.size, tempbuffertest);
	FUNC0(tempbuffertest);
}