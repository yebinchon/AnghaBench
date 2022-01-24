#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int cmd; scalar_t__ data; } ;
struct TYPE_9__ {int /*<<< orphan*/  name; scalar_t__ userdata; } ;
struct TYPE_8__ {int /*<<< orphan*/  sema; } ;
typedef  TYPE_1__ SVP_T ;
typedef  int /*<<< orphan*/  MMAL_STATUS_T ;
typedef  TYPE_2__ MMAL_PORT_T ;
typedef  TYPE_3__ MMAL_BUFFER_HEADER_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,...) ; 
#define  MMAL_EVENT_EOS 129 
#define  MMAL_EVENT_ERROR 128 
 int /*<<< orphan*/  SVP_STOP_EOS ; 
 int /*<<< orphan*/  SVP_STOP_ERROR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(MMAL_PORT_T *port, MMAL_BUFFER_HEADER_T *buf)
{
   SVP_T *svp = (SVP_T *)port->userdata;

   switch (buf->cmd)
   {
   case MMAL_EVENT_EOS:
      FUNC1("%s: EOS", port->name);
      FUNC4(svp, SVP_STOP_EOS);
      break;

   case MMAL_EVENT_ERROR:
      FUNC0("%s: MMAL error: %s", port->name,
                FUNC3(*(MMAL_STATUS_T *)buf->data));
      FUNC4(svp, SVP_STOP_ERROR);
      break;

   default:
      FUNC1("%s: buf %p, event %4.4s", port->name, buf, (char *)&buf->cmd);
      break;
   }

   FUNC2(buf);

   FUNC5(&svp->sema);
}