#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct rpng_process {int inflate_buf_size; int avail_out; scalar_t__ stream; TYPE_3__* stream_backend; int /*<<< orphan*/ * inflate_buf; scalar_t__ total_out; scalar_t__ avail_in; } ;
struct TYPE_6__ {scalar_t__ size; int /*<<< orphan*/  data; } ;
struct TYPE_9__ {int interlace; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_7__ {TYPE_1__ idat_buf; TYPE_5__ ihdr; } ;
typedef  TYPE_2__ rpng_t ;
struct TYPE_8__ {int /*<<< orphan*/  (* stream_free ) (scalar_t__) ;int /*<<< orphan*/  (* set_out ) (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* set_in ) (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;scalar_t__ (* stream_new ) () ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rpng_process*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 TYPE_3__* FUNC8 () ; 

__attribute__((used)) static struct rpng_process *FUNC9(rpng_t *rpng)
{
   uint8_t *inflate_buf         = NULL;
   struct rpng_process *process = (struct rpng_process*)FUNC0(1, sizeof(*process));

   if (!process)
      return NULL;

   process->stream_backend = FUNC8();

   FUNC3(&rpng->ihdr, rpng->ihdr.width,
         rpng->ihdr.height, NULL, NULL, &process->inflate_buf_size);
   if (rpng->ihdr.interlace == 1) /* To be sure. */
      process->inflate_buf_size *= 2;

   process->stream = process->stream_backend->stream_new();

   if (!process->stream)
   {
      FUNC1(process);
      return NULL;
   }

   inflate_buf = (uint8_t*)FUNC2(process->inflate_buf_size);
   if (!inflate_buf)
      goto error;

   process->inflate_buf = inflate_buf;
   process->avail_in = rpng->idat_buf.size;
   process->avail_out = process->inflate_buf_size;
   process->total_out = 0;
   process->stream_backend->set_in(
         process->stream,
         rpng->idat_buf.data,
         (uint32_t)rpng->idat_buf.size);
   process->stream_backend->set_out(
         process->stream,
         process->inflate_buf,
         (uint32_t)process->inflate_buf_size);

   return process;

error:
   if (process)
   {
      if (process->stream)
         process->stream_backend->stream_free(process->stream);
      FUNC1(process);
   }
   return NULL;
}