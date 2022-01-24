#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* gz_statep ;
typedef  int /*<<< orphan*/ * gzFile ;
struct TYPE_4__ {scalar_t__ mode; int err; int /*<<< orphan*/  fd; struct TYPE_4__* path; struct TYPE_4__* in; struct TYPE_4__* out; int /*<<< orphan*/  strm; scalar_t__ size; } ;

/* Variables and functions */
 scalar_t__ GZ_READ ; 
 int Z_BUF_ERROR ; 
 int Z_ERRNO ; 
 int Z_OK ; 
 int Z_STREAM_ERROR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(gzFile file)
{
   int ret, err;
   gz_statep state;

   /* get internal structure */
   if (file == NULL)
      return Z_STREAM_ERROR;
   state = (gz_statep)file;

   /* check that we're reading */
   if (state->mode != GZ_READ)
      return Z_STREAM_ERROR;

   /* free memory and close file */
   if (state->size) {
      FUNC3(&(state->strm));
      FUNC1(state->out);
      FUNC1(state->in);
   }
   err = state->err == Z_BUF_ERROR ? Z_BUF_ERROR : Z_OK;
   FUNC2(state, Z_OK, NULL);
   FUNC1(state->path);
   ret = FUNC0(state->fd);
   FUNC1(state);
   return ret ? Z_ERRNO : err;
}