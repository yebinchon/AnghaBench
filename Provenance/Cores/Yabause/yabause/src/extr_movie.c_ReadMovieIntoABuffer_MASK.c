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
struct MovieBufferStruct {int size; char* data; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 size_t FUNC0 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

struct MovieBufferStruct FUNC5(FILE* fp) {

	int fpos;
	struct MovieBufferStruct tempbuffer;
   size_t num_read = 0;

	fpos = FUNC2(fp);//save current pos

	FUNC1 (fp,0,SEEK_END);
	tempbuffer.size=FUNC2(fp);  //get size
	FUNC4(fp);

	tempbuffer.data = (char*) FUNC3 (sizeof(char)*tempbuffer.size);
   num_read = FUNC0(tempbuffer.data, 1, tempbuffer.size, fp);

	FUNC1(fp, fpos, SEEK_SET); //reset back to correct pos
	return(tempbuffer);
}