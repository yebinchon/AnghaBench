#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* z_streamp ;
typedef  TYPE_3__* gz_statep ;
struct TYPE_9__ {int have; unsigned char* next; } ;
struct TYPE_10__ {int avail_in; int* next_in; void* opaque; void* zfree; void* zalloc; } ;
struct TYPE_11__ {int size; unsigned char* in; int want; unsigned char* out; int direct; int eof; int /*<<< orphan*/  how; TYPE_1__ x; TYPE_2__ strm; } ;

/* Variables and functions */
 int /*<<< orphan*/  MODE_COPY ; 
 int /*<<< orphan*/  MODE_GZIP ; 
 int /*<<< orphan*/  Z_MEM_ERROR ; 
 void* Z_NULL ; 
 scalar_t__ Z_OK ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 int FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int*,int) ; 

__attribute__((used)) static int FUNC7(gz_statep state)
{
   z_streamp strm = &(state->strm);

   /* allocate read buffers and inflate memory */
   if (state->size == 0) {
      /* allocate buffers */
      state->in = (unsigned char *)FUNC5(state->want);
      state->out = (unsigned char *)FUNC5(state->want << 1);
      if (state->in == NULL || state->out == NULL) {
         if (state->out != NULL)
            FUNC0(state->out);
         if (state->in != NULL)
            FUNC0(state->in);
         FUNC2(state, Z_MEM_ERROR, "out of memory");
         return -1;
      }
      state->size = state->want;

      /* allocate inflate memory */
      state->strm.zalloc = Z_NULL;
      state->strm.zfree = Z_NULL;
      state->strm.opaque = Z_NULL;
      state->strm.avail_in = 0;
      state->strm.next_in = Z_NULL;
      if (FUNC3(&(state->strm), 15 + 16) != Z_OK) {    /* gunzip */
         FUNC0(state->out);
         FUNC0(state->in);
         state->size = 0;
         FUNC2(state, Z_MEM_ERROR, "out of memory");
         return -1;
      }
   }

   /* get at least the magic bytes in the input buffer */
   if (strm->avail_in < 2) {
      if (FUNC1(state) == -1)
         return -1;
      if (strm->avail_in == 0)
         return 0;
   }

   /* look for gzip magic bytes -- if there, do gzip decoding (note: there is
      a logical dilemma here when considering the case of a partially written
      gzip file, to wit, if a single 31 byte is written, then we cannot tell
      whether this is a single-byte file, or just a partially written gzip
      file -- for here we assume that if a gzip file is being written, then
      the header will be written in a single operation, so that reading a
      single byte is sufficient indication that it is not a gzip file) */
   if (strm->avail_in > 1 &&
         strm->next_in[0] == 31 && strm->next_in[1] == 139) {
      FUNC4(strm);
      state->how = MODE_GZIP;
      state->direct = 0;
      return 0;
   }

   /* no gzip header -- if we were decoding gzip before, then this is trailing
      garbage.  Ignore the trailing garbage and finish. */
   if (state->direct == 0) {
      strm->avail_in = 0;
      state->eof = 1;
      state->x.have = 0;
      return 0;
   }

   /* doing raw i/o, copy any leftover input to output -- this assumes that
      the output buffer is larger than the input buffer, which also assures
      space for gzungetc() */
   state->x.next = state->out;
   if (strm->avail_in) {
      FUNC6(state->x.next, strm->next_in, strm->avail_in);
      state->x.have = strm->avail_in;
      strm->avail_in = 0;
   }
   state->how = MODE_COPY;
   state->direct = 1;
   return 0;
}