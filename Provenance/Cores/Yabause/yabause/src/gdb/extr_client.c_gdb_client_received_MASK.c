#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_14__ {char* buffer; } ;
typedef  TYPE_2__ gdb_packet ;
struct TYPE_15__ {TYPE_10__* context; int /*<<< orphan*/  sock; } ;
typedef  TYPE_3__ gdb_client ;
struct TYPE_13__ {int* R; int PC; int PR; int GBR; int VBR; int MACH; int MACL; int SR; } ;
struct TYPE_12__ {TYPE_1__ regs; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_10__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_10__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 char* FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int*,int*) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*,int) ; 

void FUNC16(gdb_client * client, gdb_packet * packet)
{
   char ack = '+';
   FUNC12("packet received: %s\n", packet->buffer);
   FUNC5(client->sock, &ack, 1, 0);

   if (packet->buffer[0] == '?')
      FUNC7(client);
   else if (packet->buffer[0] == 'c')
      FUNC10(client);
   else if (packet->buffer[0] == 'g')
   {
      int i;
      char buffer[184+1];

      for(i = 0;i < 16;i++)
         FUNC13(buffer + 8 * i, "%08x", client->context->regs.R[i]);

      FUNC13(buffer + 8 * 16, "%08x", client->context->regs.PC);
      FUNC13(buffer + 8 * 17, "%08x", client->context->regs.PR);
      FUNC13(buffer + 8 * 18, "%08x", client->context->regs.GBR);
      FUNC13(buffer + 8 * 19, "%08x", client->context->regs.VBR);
      FUNC13(buffer + 8 * 20, "%08x", client->context->regs.MACH);
      FUNC13(buffer + 8 * 21, "%08x", client->context->regs.MACL);
      FUNC13(buffer + 8 * 22, "%08x", client->context->regs.SR);

      FUNC8(client, buffer, 184);
   }
   else if (packet->buffer[0] == 'H')
      FUNC8(client, "OK", 2);
   else if (packet->buffer[0] == 'q')
   {
      if (!FUNC15(packet->buffer, "qSupported", 10))
         FUNC8(client, "PacketSize=1024", 15);
      else if (packet->buffer[1] == 'C')
         FUNC8(client, "", 0);
      else if (!FUNC15(packet->buffer, "qAttached", 9))
         FUNC8(client, "0", 1);
      else if (!FUNC15(packet->buffer, "qTStatus", 8))
         FUNC8(client, "T0", 2);
      else if (!FUNC15(packet->buffer, "qTfP", 8))
         FUNC8(client, "", 0);
      else if (!FUNC15(packet->buffer, "qTfV", 8))
         FUNC8(client, "", 0);
      else if (!FUNC15(packet->buffer, "qTsP", 8))
         FUNC8(client, "", 0);
   }
   else if (packet->buffer[0] == 'm')
   {
      u32 addr;
      int len, i;
      char * buffer;
      char * pos;

      FUNC14(packet->buffer, "m%x,%d", &addr, &len);

      buffer = FUNC11(2 * len);
      pos = buffer;

      i = 0;
      while(i < len / 4) {
         u32 val = FUNC1(addr + 4 * i);
         FUNC13(pos, "%08x", val);
         i += 1;
         pos += 8;
      }

      switch(len % 4) {
         case 2: {
            u16 val = FUNC2(addr + 4 * i);
            FUNC13(pos, "%04x", val);
            break;
         }
         case 1: {
            u8 val = FUNC0(addr + 4 * i);
            FUNC13(pos, "%02x", val);
            break;
         }
      }

      FUNC8(client, buffer, 2 * len);

      FUNC6(buffer);
   }
   else if (packet->buffer[0] == 'v')
   {
      if (!FUNC15(packet->buffer, "vCont?", 6))
         FUNC8(client, "", 0);
   }
   else if (packet->buffer[0] == 's')
      FUNC9(client);
   else if (packet->buffer[0] == 'Z') /* insert breakpoint */
   {
      if (packet->buffer[1] == '0') /* code breakpoint */
      {
         u32 addr;
         int dummy;
         FUNC14(packet->buffer, "Z0,%x,%d", &addr, &dummy);
         FUNC3(client->context, addr);
      }
      FUNC8(client, "OK", 2);
   }
   else if (packet->buffer[0] == 'z') /* remove breakpoint */
   {
      if (packet->buffer[1] == '0') /* code breakpoint */
      {
         u32 addr;
         int dummy;
         FUNC14(packet->buffer, "Z0,%x,%d", &addr, &dummy);
         FUNC4(client->context, addr);
      }
      FUNC8(client, "OK", 2);
   }
}