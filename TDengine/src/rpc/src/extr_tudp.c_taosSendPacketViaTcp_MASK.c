#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int uint32_t ;
typedef  scalar_t__ uint16_t ;
typedef  void* int32_t ;
typedef  int /*<<< orphan*/  handleViaTcp ;
struct TYPE_9__ {scalar_t__ handle; void* msgLen; scalar_t__ port; } ;
struct TYPE_8__ {int tcp; void* msgLen; int /*<<< orphan*/  msgType; scalar_t__ content; } ;
struct TYPE_7__ {int /*<<< orphan*/  port; scalar_t__ pSet; } ;
struct TYPE_6__ {int /*<<< orphan*/  label; scalar_t__ port; scalar_t__ server; } ;
typedef  TYPE_1__ SUdpConnSet ;
typedef  TYPE_2__ SUdpConn ;
typedef  TYPE_3__ STaosHeader ;
typedef  TYPE_4__ SPacketInfo ;
typedef  int /*<<< orphan*/  SHandleViaTcp ;

/* Variables and functions */
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,int) ; 
 int FUNC9 (int,short,char*,int,void*) ; 
 int FUNC10 (int,char*,int) ; 
 scalar_t__ FUNC11 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 
 int /*<<< orphan*/  tsLocalIp ; 

int FUNC13(uint32_t ip, short port, char *data, int dataLen, void *chandle) {
  SUdpConn *   pConn = (SUdpConn *)chandle;
  SUdpConnSet *pSet = (SUdpConnSet *)pConn->pSet;
  int          code = -1, retLen, msgLen;
  char         ipstr[64];
  char         buffer[128];
  STaosHeader *pHead;

  if (pSet->server) {
    // send from server

    pHead = (STaosHeader *)buffer;
    FUNC1(pHead, data, sizeof(STaosHeader));
    pHead->tcp = 1;

    SPacketInfo *pInfo = (SPacketInfo *)pHead->content;
    pInfo->handle = (uint64_t)data;
    pInfo->port = (uint16_t)pSet->port;
    pInfo->msgLen = pHead->msgLen;

    msgLen = sizeof(STaosHeader) + sizeof(SPacketInfo);
    pHead->msgLen = (int32_t)FUNC0((uint32_t)msgLen);
    code = FUNC9(ip, port, buffer, msgLen, chandle);
    FUNC4("%s data from server will be sent via TCP:%d, msgType:%d, length:%d, handle:0x%x", pSet->label, pInfo->port,
           pHead->msgType, FUNC0((uint32_t)pInfo->msgLen), pInfo->handle);
    if (code > 0) code = dataLen;
  } else {
    // send from client
    FUNC4("%s data will be sent via TCP from client", pSet->label);

    // send a UDP header first to set up the connection
    pHead = (STaosHeader *)buffer;
    FUNC1(pHead, data, sizeof(STaosHeader));
    pHead->tcp = 2;
    msgLen = sizeof(STaosHeader);
    pHead->msgLen = (int32_t)FUNC0(msgLen);
    code = FUNC9(ip, port, buffer, msgLen, chandle);

    pHead = (STaosHeader *)data;

    FUNC12(ipstr, ip);
    int fd = FUNC7(ipstr, pConn->port, tsLocalIp);
    if (fd < 0) {
      FUNC3("%s failed to open TCP socket to:%s:%u to send packet", pSet->label, ipstr, pConn->port);
    } else {
      SHandleViaTcp handleViaTcp;
      FUNC6(&handleViaTcp, 0);
      retLen = (int)FUNC11(fd, (char *)&handleViaTcp, sizeof(SHandleViaTcp));

      if (retLen != (int)sizeof(handleViaTcp)) {
        FUNC3("%s failed to send handle to server, retLen:%d", pSet->label, retLen);
      } else {
        retLen = FUNC10(fd, data, dataLen);
        if (retLen != dataLen) {
          FUNC3("%s failed to send data via TCP, dataLen:%d, retLen:%d, error:%s", pSet->label, dataLen, retLen,
                 FUNC2(errno));
        } else {
          code = dataLen;
          FUNC4("%s data is sent via TCP successfully", pSet->label);
        }
      }

      FUNC8(fd, (char *)&handleViaTcp, sizeof(SHandleViaTcp));

      FUNC5(fd);
    }
  }

  return code;
}