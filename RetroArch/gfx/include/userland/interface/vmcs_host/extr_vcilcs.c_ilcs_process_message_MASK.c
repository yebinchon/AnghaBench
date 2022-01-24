#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_8__ {scalar_t__ size; scalar_t__ data; } ;
typedef  TYPE_1__ VCHIQ_HEADER_T ;
struct TYPE_9__ {int msg_inuse; int /*<<< orphan*/ * msg; int /*<<< orphan*/  vchiq; int /*<<< orphan*/  service; int /*<<< orphan*/  queue; } ;
typedef  TYPE_2__ ILCS_SERVICE_T ;

/* Variables and functions */
 int ILCS_MSG_INUSE_MASK ; 
 scalar_t__ IL_RESPONSE ; 
 scalar_t__ IL_SERVICE_QUIT ; 
 scalar_t__ FUNC0 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,scalar_t__,unsigned char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(ILCS_SERVICE_T *st, int block)
{
   unsigned char *msg;
   VCHIQ_HEADER_T *header;
   uint32_t i, msg_len, cmd, xid;

   if(!block && FUNC5(&st->queue))
      return 0; // no more messages

   header = FUNC6(&st->queue);

   msg = (unsigned char *) header->data;

   cmd = FUNC0(msg);
   xid = FUNC0(msg+4);

   msg += 8;
   msg_len = header->size - 8;

   if(cmd == IL_RESPONSE)
   {
      FUNC2(st, xid, msg, msg_len);
#ifdef USE_VCHIQ_ARM
      vchiq_release_message(st->service, header);
#else
      FUNC4(st->vchiq, header);
#endif
   }
   else if(cmd == IL_SERVICE_QUIT)
   {
      return 1;
   }
   else
   {
      // we can only handle commands if we have space to copy the message first
      if(st->msg_inuse == ILCS_MSG_INUSE_MASK)
      {
         // this shouldn't happen, since we have more msg slots than the
         // remote side is allowed concurrent clients.  this is classed
         // as a failure case, so we discard the message knowing that things
         // will surely lock up fairly soon after.
         FUNC7(0);
         return 1;
      }

      i = 0;
      while(st->msg_inuse & (1<<i))
         i++;

      st->msg_inuse |= (1<<i);

      FUNC3(st->msg[i], msg, msg_len);
#ifdef USE_VCHIQ_ARM
      vchiq_release_message(st->service, header);
#else
      FUNC4(st->vchiq, header);
#endif
      FUNC1(st, cmd, xid, st->msg[i], msg_len);

      // mark the message copy as free
      st->msg_inuse &= ~(1<<i);
   }

   return 1;
}