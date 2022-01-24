#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_8__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_8__* io; scalar_t__ refcount; scalar_t__ temp; } ;
typedef  TYPE_2__ VC_CONTAINER_WRITER_EXTRAIO_T ;
struct TYPE_11__ {TYPE_1__* priv; } ;
typedef  TYPE_3__ VC_CONTAINER_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_STATUS_T ;
struct TYPE_12__ {int /*<<< orphan*/  uri; } ;
struct TYPE_9__ {TYPE_8__* tmp_io; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_2__*) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 

VC_CONTAINER_STATUS_T FUNC5(VC_CONTAINER_T *context, VC_CONTAINER_WRITER_EXTRAIO_T *extraio)
{
   VC_CONTAINER_STATUS_T status;
   char *uri = extraio->temp ? FUNC4(extraio->io->uri) : 0;

   while(extraio->refcount) FUNC3(context, extraio);
   status = FUNC2( extraio->io );

   /* coverity[check_return] On failure the worst case is a file or directory is not removed */
   if(uri) FUNC1(uri);
   if(uri) FUNC0(uri);

   if(context->priv->tmp_io == extraio->io)
      context->priv->tmp_io = 0;

   return status;
}