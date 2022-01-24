#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {int length; int /*<<< orphan*/  data; } ;
struct TYPE_18__ {int /*<<< orphan*/  request_threshold; int /*<<< orphan*/  discont_threshold; int /*<<< orphan*/  update_threshold; int /*<<< orphan*/  scale; int /*<<< orphan*/  media_time; int /*<<< orphan*/  enable; } ;
struct TYPE_21__ {scalar_t__ magic; int id; TYPE_6__* buffer; TYPE_2__ data; } ;
struct TYPE_20__ {int /*<<< orphan*/  (* event_cb ) (TYPE_3__*,TYPE_5__*) ;int /*<<< orphan*/  clock; } ;
struct TYPE_19__ {int /*<<< orphan*/  name; TYPE_1__* priv; } ;
struct TYPE_17__ {TYPE_4__* clock; } ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  TYPE_3__ MMAL_PORT_T ;
typedef  TYPE_4__ MMAL_PORT_CLOCK_T ;
typedef  TYPE_5__ MMAL_CLOCK_EVENT_T ;
typedef  TYPE_6__ MMAL_BUFFER_HEADER_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*) ; 
#define  MMAL_CLOCK_EVENT_ACTIVE 135 
#define  MMAL_CLOCK_EVENT_DISCONT_THRESHOLD 134 
 TYPE_5__ FUNC2 (int /*<<< orphan*/ ) ; 
#define  MMAL_CLOCK_EVENT_INPUT_BUFFER_INFO 133 
 int /*<<< orphan*/  MMAL_CLOCK_EVENT_INVALID ; 
 scalar_t__ MMAL_CLOCK_EVENT_MAGIC ; 
#define  MMAL_CLOCK_EVENT_OUTPUT_BUFFER_INFO 132 
#define  MMAL_CLOCK_EVENT_REQUEST_THRESHOLD 131 
#define  MMAL_CLOCK_EVENT_SCALE 130 
#define  MMAL_CLOCK_EVENT_TIME 129 
#define  MMAL_CLOCK_EVENT_UPDATE_THRESHOLD 128 
 scalar_t__ MMAL_EINVAL ; 
 scalar_t__ MMAL_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,TYPE_5__*) ; 

__attribute__((used)) static MMAL_STATUS_T FUNC14(MMAL_PORT_T *port, MMAL_BUFFER_HEADER_T *buffer)
{
   MMAL_PORT_CLOCK_T *priv_clock = port->priv->clock;
   MMAL_STATUS_T status = MMAL_SUCCESS;
   MMAL_CLOCK_EVENT_T event = FUNC2(MMAL_CLOCK_EVENT_INVALID);

   if (buffer->length != sizeof(MMAL_CLOCK_EVENT_T))
   {
      FUNC0("invalid buffer length %d expected %d",
                buffer->length, sizeof(MMAL_CLOCK_EVENT_T));
      return MMAL_EINVAL;
   }

   FUNC4(buffer);
   FUNC3(&event, buffer->data, sizeof(MMAL_CLOCK_EVENT_T));
   FUNC5(buffer);

   if (event.magic != MMAL_CLOCK_EVENT_MAGIC)
   {
      FUNC0("buffer corrupt (magic %4.4s)", (char*)&event.magic);
      buffer->length = 0;
      FUNC12(port, buffer);
      return MMAL_EINVAL;
   }

   FUNC1("port %s id %4.4s", port->name, (char*)&event.id);

   switch (event.id)
   {
   case MMAL_CLOCK_EVENT_ACTIVE:
      status = FUNC6(priv_clock->clock, event.data.enable);
      break;
   case MMAL_CLOCK_EVENT_TIME:
      status = FUNC8(priv_clock->clock, event.data.media_time);
      break;
   case MMAL_CLOCK_EVENT_SCALE:
      status = FUNC10(priv_clock->clock, event.data.scale);
      break;
   case MMAL_CLOCK_EVENT_UPDATE_THRESHOLD:
      status = FUNC11(priv_clock->clock, &event.data.update_threshold);
      break;
   case MMAL_CLOCK_EVENT_DISCONT_THRESHOLD:
      status = FUNC7(priv_clock->clock, &event.data.discont_threshold);
      break;
   case MMAL_CLOCK_EVENT_REQUEST_THRESHOLD:
      status = FUNC9(priv_clock->clock, &event.data.request_threshold);
      break;
   case MMAL_CLOCK_EVENT_INPUT_BUFFER_INFO:
   case MMAL_CLOCK_EVENT_OUTPUT_BUFFER_INFO:
      /* nothing to do - just forward to the client */
      break;
   default:
      FUNC0("invalid event %4.4s", (char*)&event.id);
      status = MMAL_EINVAL;
      break;
   }

   if (priv_clock->event_cb && status == MMAL_SUCCESS)
   {
      /* Notify the component, but don't return the buffer */
      event.buffer = buffer;
      priv_clock->event_cb(port, &event);
   }
   else
   {
      /* Finished with the buffer, so return it */
      buffer->length = 0;
      FUNC12(port, buffer);
   }

   return status;
}