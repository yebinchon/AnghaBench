#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {unsigned char* next_in; unsigned int avail_in; unsigned char* next_out; unsigned int avail_out; scalar_t__ opaque; scalar_t__ zfree; scalar_t__ zalloc; } ;
typedef  TYPE_1__ z_stream ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ INFLATE_INPUT_BUFFER_MAX ; 
 int /*<<< orphan*/  MAX_WBITS ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  Z_NO_FLUSH ; 
 int Z_OK ; 
 int Z_STREAM_END ; 
 unsigned int FUNC1 (unsigned char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 

__attribute__((used)) static int FUNC8(FILE* in_file, unsigned in_size, unsigned char* out_data, unsigned out_size)
{
    int err;
	unsigned char* in_buffer;
    z_stream d_stream; /* decompression stream */

    d_stream.zalloc = 0;
    d_stream.zfree = 0;
    d_stream.opaque = 0;

	d_stream.next_in  = 0;
	d_stream.avail_in = 0;
    d_stream.next_out = out_data;
    d_stream.avail_out = out_size;

    err = FUNC5(&d_stream, -MAX_WBITS);
	/* windowBits is passed < 0 to tell that there is no zlib header.
	 * Note that in this case inflate *requires* an extra "dummy" byte
	 * after the compressed stream in order to complete decompression and
	 * return Z_STREAM_END.
	 */
    if (err != Z_OK)
	{
		FUNC6("inflateInit error: %d\n", err);
        return -1;
	}

	in_buffer = (unsigned char*)FUNC7(INFLATE_INPUT_BUFFER_MAX+1);
	if (!in_buffer)
		return -1;

    for (;;)
	{
		if (in_size <= 0)
		{
			FUNC6("inflate error: compressed size too small\n");
			FUNC2 (in_buffer);
			return -1;
		}
		d_stream.next_in  = in_buffer;
		d_stream.avail_in = FUNC1 (in_buffer, 1, FUNC0(in_size, INFLATE_INPUT_BUFFER_MAX), in_file);
		in_size -= d_stream.avail_in;
		if (in_size == 0)
			d_stream.avail_in++; /* add dummy byte at end of compressed data */

        err = FUNC3(&d_stream, Z_NO_FLUSH);
        if (err == Z_STREAM_END)
			break;
		if (err != Z_OK)
		{
			FUNC6("inflate error: %d\n", err);
			FUNC2 (in_buffer);
			return -1;
		}
    }

    err = FUNC4(&d_stream);
	if (err != Z_OK)
	{
		FUNC6("inflateEnd error: %d\n", err);
		FUNC2 (in_buffer);
		return -1;
	}

	FUNC2 (in_buffer);

	if ((d_stream.avail_out > 0) || (in_size > 0))
	{
		FUNC6("zip size mismatch. %i\n", in_size);
		return -1;
	}

	return 0;
}