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
struct MovieBufferStruct {int size; int* data; } ;
struct TYPE_2__ {scalar_t__ Status; int /*<<< orphan*/  fp; } ;
typedef  int /*<<< orphan*/  IOCheck_struct ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 TYPE_1__ Movie ; 
 scalar_t__ Playback ; 
 struct MovieBufferStruct FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ Recording ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*,int,int,int /*<<< orphan*/ *) ; 

void FUNC3(FILE* fp, IOCheck_struct check) {

	struct MovieBufferStruct tempbuffer;

	FUNC1(fp, 0, SEEK_END);

	if(Movie.Status == Recording || Movie.Status == Playback) {
		tempbuffer=FUNC0(Movie.fp);

		FUNC2(&tempbuffer.size, 4, 1, fp);
		FUNC2(tempbuffer.data, tempbuffer.size, 1, fp);
	}
}