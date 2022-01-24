#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  ctx; int /*<<< orphan*/  (* function ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_12__ {int /*<<< orphan*/  arg; int /*<<< orphan*/  h; int /*<<< orphan*/  msecs; } ;
struct TYPE_10__ {TYPE_7__* netif; int /*<<< orphan*/  p; } ;
struct TYPE_14__ {TYPE_5__ cb; TYPE_4__ tmo; TYPE_3__* netifapimsg; TYPE_2__ inp; TYPE_1__* apimsg; } ;
struct tcpip_msg {int type; TYPE_6__ msg; } ;
struct TYPE_15__ {int flags; } ;
struct TYPE_11__ {int /*<<< orphan*/  msg; int /*<<< orphan*/  (* function ) (int /*<<< orphan*/ *) ;} ;
struct TYPE_9__ {int /*<<< orphan*/  msg; int /*<<< orphan*/  (* function ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  MEMP_TCPIP_MSG_API ; 
 int /*<<< orphan*/  MEMP_TCPIP_MSG_INPKT ; 
 int NETIF_FLAG_ETHARP ; 
 int NETIF_FLAG_ETHERNET ; 
 int /*<<< orphan*/  TCPIP_DEBUG ; 
#define  TCPIP_MSG_API 134 
#define  TCPIP_MSG_CALLBACK 133 
#define  TCPIP_MSG_CALLBACK_STATIC 132 
#define  TCPIP_MSG_INPKT 131 
#define  TCPIP_MSG_NETIFAPI 130 
#define  TCPIP_MSG_TIMEOUT 129 
#define  TCPIP_MSG_UNTIMEOUT 128 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_7__*) ; 
 int /*<<< orphan*/  mbox ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct tcpip_msg*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tcpip_init_done_arg ; 

__attribute__((used)) static void
FUNC17(void *arg)
{
  struct tcpip_msg *msg;
  FUNC4(arg);

  if (&tcpip_init_done != NULL) {
    FUNC16(tcpip_init_done_arg);
  }

  FUNC0();
  while (1) {                          /* MAIN Loop */
    FUNC5();
    FUNC3();
    /* wait for a message, timeouts are processed while waiting */
    FUNC14(&mbox, (void **)&msg);
    FUNC0();
    switch (msg->type) {
#if LWIP_NETCONN
    case TCPIP_MSG_API:
      LWIP_DEBUGF(TCPIP_DEBUG, ("tcpip_thread: API message %p\n", (void *)msg));
      msg->msg.apimsg->function(&(msg->msg.apimsg->msg));
      break;
#endif /* LWIP_NETCONN */

#if !LWIP_TCPIP_CORE_LOCKING_INPUT
    case TCPIP_MSG_INPKT:
      FUNC2(TCPIP_DEBUG, ("tcpip_thread: PACKET %p\n", (void *)msg));
#if LWIP_ETHERNET
      if (msg->msg.inp.netif->flags & (NETIF_FLAG_ETHARP | NETIF_FLAG_ETHERNET)) {
        ethernet_input(msg->msg.inp.p, msg->msg.inp.netif);
      } else
#endif /* LWIP_ETHERNET */
      {
        FUNC7(msg->msg.inp.p, msg->msg.inp.netif);
      }
      FUNC8(MEMP_TCPIP_MSG_INPKT, msg);
      break;
#endif /* LWIP_TCPIP_CORE_LOCKING_INPUT */

#if LWIP_NETIF_API
    case TCPIP_MSG_NETIFAPI:
      LWIP_DEBUGF(TCPIP_DEBUG, ("tcpip_thread: Netif API message %p\n", (void *)msg));
      msg->msg.netifapimsg->function(&(msg->msg.netifapimsg->msg));
      break;
#endif /* LWIP_NETIF_API */

#if LWIP_TCPIP_TIMEOUT
    case TCPIP_MSG_TIMEOUT:
      LWIP_DEBUGF(TCPIP_DEBUG, ("tcpip_thread: TIMEOUT %p\n", (void *)msg));
      sys_timeout(msg->msg.tmo.msecs, msg->msg.tmo.h, msg->msg.tmo.arg);
      memp_free(MEMP_TCPIP_MSG_API, msg);
      break;
    case TCPIP_MSG_UNTIMEOUT:
      LWIP_DEBUGF(TCPIP_DEBUG, ("tcpip_thread: UNTIMEOUT %p\n", (void *)msg));
      sys_untimeout(msg->msg.tmo.h, msg->msg.tmo.arg);
      memp_free(MEMP_TCPIP_MSG_API, msg);
      break;
#endif /* LWIP_TCPIP_TIMEOUT */

    case TCPIP_MSG_CALLBACK:
      FUNC2(TCPIP_DEBUG, ("tcpip_thread: CALLBACK %p\n", (void *)msg));
      msg->msg.cb.function(msg->msg.cb.ctx);
      FUNC8(MEMP_TCPIP_MSG_API, msg);
      break;

    case TCPIP_MSG_CALLBACK_STATIC:
      FUNC2(TCPIP_DEBUG, ("tcpip_thread: CALLBACK_STATIC %p\n", (void *)msg));
      msg->msg.cb.function(msg->msg.cb.ctx);
      break;

    default:
      FUNC2(TCPIP_DEBUG, ("tcpip_thread: invalid message: %d\n", msg->type));
      FUNC1("tcpip_thread: invalid message", 0);
      break;
    }
  }
}