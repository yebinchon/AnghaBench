#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int temp; int /*<<< orphan*/  io; } ;
typedef  TYPE_3__ VC_CONTAINER_WRITER_EXTRAIO_T ;
struct TYPE_12__ {TYPE_2__* priv; } ;
typedef  TYPE_4__ VC_CONTAINER_T ;
typedef  scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_10__ {int /*<<< orphan*/  tmp_io; TYPE_1__* io; } ;
struct TYPE_9__ {char* uri; } ;

/* Variables and functions */
 scalar_t__ VC_CONTAINER_ERROR_OUT_OF_MEMORY ; 
 scalar_t__ VC_CONTAINER_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int,char*,char*) ; 
 int FUNC3 (char*) ; 
 scalar_t__ FUNC4 (TYPE_4__*,char*,TYPE_3__*) ; 

VC_CONTAINER_STATUS_T FUNC5(VC_CONTAINER_T *context, VC_CONTAINER_WRITER_EXTRAIO_T *extraio)
{
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_SUCCESS;
   unsigned int length = FUNC3(context->priv->io->uri) + 5;
   char *uri = FUNC1(length);
   if(!uri) return VC_CONTAINER_ERROR_OUT_OF_MEMORY;

   FUNC2(uri, length, "%s.tmp", context->priv->io->uri);
   status = FUNC4(context, uri, extraio);
   FUNC0(uri);
   extraio->temp = true;

   if(status == VC_CONTAINER_SUCCESS && !context->priv->tmp_io)
      context->priv->tmp_io = extraio->io;

   return status;
}