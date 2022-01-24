#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int U8 ;
typedef  unsigned int U32 ;
struct TYPE_2__ {int EnableState; unsigned int DisabledEvents; unsigned int LastTxTimeStamp; int RecursionCnt; scalar_t__ PacketCount; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHANNEL_ID_DOWN ; 
 int /*<<< orphan*/  CHANNEL_ID_UP ; 
 int /*<<< orphan*/  FUNC0 (unsigned int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned int*,int) ; 
 unsigned int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int SEGGER_SYSVIEW_SYNC_PERIOD_SHIFT ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 TYPE_1__ _SYSVIEW_Globals ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static void FUNC11(U8* pStartPacket, U8* pEndPacket, unsigned int EventId) {
  unsigned int  NumBytes;
  U32           TimeStamp;
  U32           Delta;
#if (SEGGER_SYSVIEW_POST_MORTEM_MODE != 1)
  int           Status;
#endif

#if (SEGGER_SYSVIEW_USE_STATIC_BUFFER == 0)
  FUNC6();
#endif

#if (SEGGER_SYSVIEW_POST_MORTEM_MODE == 1)
  if (_SYSVIEW_Globals.EnableState == 0) {
    goto SendDone;
  }
#else
  if (_SYSVIEW_Globals.EnableState == 1) {  // Enabled, no dropped packets remaining
    goto Send;
  }
  if (_SYSVIEW_Globals.EnableState == 0) {
    goto SendDone;
  }
  //
  // Handle buffer full situations:
  // Have packets been dropped before because buffer was full?
  // In this case try to send and overflow packet.
  //
  if (_SYSVIEW_Globals.EnableState == 2) {
    FUNC10();
    if (_SYSVIEW_Globals.EnableState != 1) {
      goto SendDone;
    }
  }
Send:
#endif
  //
  // Check if event is disabled from being recorded.
  //
  if (EventId < 32) {
    if (_SYSVIEW_Globals.DisabledEvents & ((U32)1u << EventId)) {
      goto SendDone;
    }
  }
  //
  // Prepare actual packet.
  // If it is a known packet, prepend eventId only,
  // otherwise prepend packet length and eventId.
  //
  if (EventId < 24) {
    *--pStartPacket = EventId;
  } else {
    NumBytes = pEndPacket - pStartPacket;
    if (NumBytes > 127) {
      *--pStartPacket = (NumBytes >> 7);
      *--pStartPacket = NumBytes | 0x80;
    } else {
      *--pStartPacket = NumBytes;
    }
    if (EventId > 127) {
      *--pStartPacket = (EventId >> 7);
      *--pStartPacket = EventId | 0x80;
    } else {
      *--pStartPacket = EventId;
    }
  }
  //
  // Compute time stamp delta and append it to packet.
  //
  TimeStamp  = FUNC5();
  Delta = TimeStamp - _SYSVIEW_Globals.LastTxTimeStamp;
  FUNC1(Delta);
  FUNC0(pEndPacket, Delta);
#if (SEGGER_SYSVIEW_POST_MORTEM_MODE == 1)
  //
  // Store packet in RTT buffer by overwriting old data and update time stamp
  //
  SEGGER_RTT_WriteWithOverwriteNoLock(CHANNEL_ID_UP, pStartPacket, pEndPacket - pStartPacket);
  _SYSVIEW_Globals.LastTxTimeStamp = TimeStamp;
#else
  //
  // Try to store packet in RTT buffer and update time stamp when this was successful
  //
  Status = FUNC3(CHANNEL_ID_UP, pStartPacket, pEndPacket - pStartPacket);
  if (Status) {
    _SYSVIEW_Globals.LastTxTimeStamp = TimeStamp;
  } else {
    _SYSVIEW_Globals.EnableState++; // EnableState has been 1, will be 2. Always.
  }
#endif

#if (SEGGER_SYSVIEW_POST_MORTEM_MODE == 1)
  //
  // Add sync and system information periodically if we are in post mortem mode
  //
  if (_SYSVIEW_Globals.RecursionCnt == 0) {   // Avoid uncontrolled nesting. This way, this routine can call itself once, but no more often than that.
    _SYSVIEW_Globals.RecursionCnt = 1;
    if (_SYSVIEW_Globals.PacketCount++ & (1 << SEGGER_SYSVIEW_SYNC_PERIOD_SHIFT)) {
      _SendSyncInfo();
      _SYSVIEW_Globals.PacketCount = 0;
    }
    _SYSVIEW_Globals.RecursionCnt = 0;
  }
SendDone:
  ; // Avoid "label at end of compound statement" error when using static buffer
#else
SendDone:
  //
  // Check if host is sending data which needs to be processed.
  // Note that since this code is called for every packet, it is very time critical, so we do
  // only what is really needed here, which is checking if there is any data
  //
  if (FUNC2(CHANNEL_ID_DOWN)) {
    if (_SYSVIEW_Globals.RecursionCnt == 0) {   // Avoid uncontrolled nesting. This way, this routine can call itself once, but no more often than that.
      _SYSVIEW_Globals.RecursionCnt = 1;
      FUNC8();
      _SYSVIEW_Globals.RecursionCnt = 0;
    }
  }
#endif
  //
#if (SEGGER_SYSVIEW_USE_STATIC_BUFFER == 0)
  FUNC7();  // We are done. Unlock and return
#endif
}