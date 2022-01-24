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
struct TYPE_2__ {int Frames; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 TYPE_1__ Movie ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int framelength ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int headersize ; 

__attribute__((used)) static int FUNC2(FILE* fp) {
	int size;
	int fpos;

	fpos = FUNC1(fp);//save current pos

	FUNC0 (fp,0,SEEK_END);
	size=FUNC1(fp);

	Movie.Frames=(size-headersize)/ framelength;

	FUNC0(fp, fpos, SEEK_SET); //reset back to correct pos
	return(size);
}