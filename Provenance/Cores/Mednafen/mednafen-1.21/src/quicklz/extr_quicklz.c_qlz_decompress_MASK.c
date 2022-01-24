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

/* Variables and functions */
 int QLZ_STREAMING_MODE_ROUNDED ; 
 int /*<<< orphan*/  FUNC0 (void*,...) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char const*,unsigned char*,size_t,size_t,unsigned char*,unsigned char const**) ; 
 size_t FUNC2 (char*) ; 
 size_t FUNC3 (char*) ; 

size_t FUNC4(const char *source, void *destination, char *scratch)
{
	// 1-8 bytes for aligning (not 0-7!); 8 bytes for buffersize (padds on 32bit cpu); QLZ_STREAMING_MODE_ROUNDED streambuffer; QLZ_HASH_SIZE hash table
	unsigned char *buffer_aligned = (unsigned char *)scratch + 8 - (((size_t)scratch) % 8);
	size_t *buffersize = (size_t *)buffer_aligned;
	unsigned int headerlen = 2*((((*source) & 2) == 2) ? 4 : 1) + 1; // get header len

	unsigned char *streambuffer = buffer_aligned + 8;
	const unsigned char **hashtable = (const unsigned char **)(streambuffer + QLZ_STREAMING_MODE_ROUNDED);

	size_t dsiz = FUNC3((char *)source);
	size_t csiz = FUNC2((char *)source);
	if (*buffersize + FUNC3((char *)source) - 1 >= QLZ_STREAMING_MODE_ROUNDED) 
	{	
		if((*source & 1) == 1)		
			FUNC1((const unsigned char *)source + headerlen, destination, dsiz, csiz, (unsigned char*)destination, hashtable);
		else
			FUNC0(destination, source + headerlen, dsiz);
		*buffersize = 0;
	}
	else
	{
		if((*source & 1) == 1)
			FUNC1((const unsigned char *)source + headerlen, streambuffer + *buffersize, dsiz, csiz, streambuffer, hashtable);
		else		
			FUNC0(streambuffer + *buffersize, source + headerlen, dsiz);
		FUNC0(destination, streambuffer + *buffersize, dsiz);
		*buffersize += dsiz;
	}
	return dsiz;
}