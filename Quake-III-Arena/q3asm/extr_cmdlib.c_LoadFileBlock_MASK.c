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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int MEM_BLOCKSIZE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,int) ; 

int    FUNC6( const char *filename, void **bufferptr )
{
	FILE	*f;
	int    length, nBlock, nAllocSize;
	void    *buffer;

	f = FUNC1 (filename);
	length = FUNC0 (f);
  nAllocSize = length;
  nBlock = nAllocSize % MEM_BLOCKSIZE;
  if ( nBlock > 0) {
    nAllocSize += MEM_BLOCKSIZE - nBlock;
  }
	buffer = FUNC4 (nAllocSize+1);
  FUNC5(buffer, 0, nAllocSize+1);
	FUNC2 (f, buffer, length);
	FUNC3 (f);

	*bufferptr = buffer;
	return length;
}