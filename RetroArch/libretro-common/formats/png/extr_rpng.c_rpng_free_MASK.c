#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_3__* data; } ;
struct TYPE_9__ {struct TYPE_9__* process; struct TYPE_9__* stream; TYPE_1__* stream_backend; struct TYPE_9__* inflate_buf; TYPE_2__ idat_buf; } ;
typedef  TYPE_3__ rpng_t ;
struct TYPE_7__ {int /*<<< orphan*/  (* stream_free ) (TYPE_3__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 

void FUNC2(rpng_t *rpng)
{
   if (!rpng)
      return;

   if (rpng->idat_buf.data)
      FUNC0(rpng->idat_buf.data);
   if (rpng->process)
   {
      if (rpng->process->inflate_buf)
         FUNC0(rpng->process->inflate_buf);
      if (rpng->process->stream)
      {
         if (rpng->process->stream_backend && rpng->process->stream_backend->stream_free)
            rpng->process->stream_backend->stream_free(rpng->process->stream);
         else
            FUNC0(rpng->process->stream);
      }
      FUNC0(rpng->process);
   }

   FUNC0(rpng);
}