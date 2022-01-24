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
struct MovieBufferStruct {char size; char* data; } ;
struct TYPE_2__ {scalar_t__ Status; scalar_t__ ReadOnly; int /*<<< orphan*/  fp; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 TYPE_1__ Movie ; 
 scalar_t__ Playback ; 
 scalar_t__ Recording ; 
 int /*<<< orphan*/  SEEK_SET ; 
 size_t FUNC0 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(FILE* fp) {

	struct MovieBufferStruct tempbuffer;
	int fpos;
   size_t num_read = 0;

	//overwrite the main movie on disk if we are recording or read+write playback
	if(Movie.Status == Recording || (Movie.Status == Playback && Movie.ReadOnly == 0)) {

		fpos=FUNC2(fp);//where we are in the savestate
      num_read = FUNC0(&tempbuffer.size, 4, 1, fp);//size
		if ((tempbuffer.data = (char *)FUNC4(tempbuffer.size)) == NULL)
		{
			return;
		}
      num_read = FUNC0(tempbuffer.data, 1, tempbuffer.size, fp);//movie
		FUNC1(fp, fpos, SEEK_SET);//reset savestate position

		FUNC5(Movie.fp);
		FUNC3(tempbuffer.data, 1, tempbuffer.size, Movie.fp);
		FUNC5(Movie.fp);
	}
}