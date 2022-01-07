
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_14__ {char* buffer; } ;
typedef TYPE_2__ gdb_packet ;
struct TYPE_15__ {TYPE_10__* context; int sock; } ;
typedef TYPE_3__ gdb_client ;
struct TYPE_13__ {int* R; int PC; int PR; int GBR; int VBR; int MACH; int MACL; int SR; } ;
struct TYPE_12__ {TYPE_1__ regs; } ;


 int MappedMemoryReadByte (int) ;
 int MappedMemoryReadLong (int) ;
 int MappedMemoryReadWord (int) ;
 int SH2AddCodeBreakpoint (TYPE_10__*,int) ;
 int SH2DelCodeBreakpoint (TYPE_10__*,int) ;
 int YabSockSend (int ,char*,int,int ) ;
 int free (char*) ;
 int gdb_client_break (TYPE_3__*) ;
 int gdb_client_send (TYPE_3__*,char*,int) ;
 int gdb_client_step (TYPE_3__*) ;
 int gdb_client_unlock (TYPE_3__*) ;
 char* malloc (int) ;
 int printf (char*,char*) ;
 int sprintf (char*,char*,int) ;
 int sscanf (char*,char*,int*,int*) ;
 int strncmp (char*,char*,int) ;

void gdb_client_received(gdb_client * client, gdb_packet * packet)
{
   char ack = '+';
   printf("packet received: %s\n", packet->buffer);
   YabSockSend(client->sock, &ack, 1, 0);

   if (packet->buffer[0] == '?')
      gdb_client_break(client);
   else if (packet->buffer[0] == 'c')
      gdb_client_unlock(client);
   else if (packet->buffer[0] == 'g')
   {
      int i;
      char buffer[184+1];

      for(i = 0;i < 16;i++)
         sprintf(buffer + 8 * i, "%08x", client->context->regs.R[i]);

      sprintf(buffer + 8 * 16, "%08x", client->context->regs.PC);
      sprintf(buffer + 8 * 17, "%08x", client->context->regs.PR);
      sprintf(buffer + 8 * 18, "%08x", client->context->regs.GBR);
      sprintf(buffer + 8 * 19, "%08x", client->context->regs.VBR);
      sprintf(buffer + 8 * 20, "%08x", client->context->regs.MACH);
      sprintf(buffer + 8 * 21, "%08x", client->context->regs.MACL);
      sprintf(buffer + 8 * 22, "%08x", client->context->regs.SR);

      gdb_client_send(client, buffer, 184);
   }
   else if (packet->buffer[0] == 'H')
      gdb_client_send(client, "OK", 2);
   else if (packet->buffer[0] == 'q')
   {
      if (!strncmp(packet->buffer, "qSupported", 10))
         gdb_client_send(client, "PacketSize=1024", 15);
      else if (packet->buffer[1] == 'C')
         gdb_client_send(client, "", 0);
      else if (!strncmp(packet->buffer, "qAttached", 9))
         gdb_client_send(client, "0", 1);
      else if (!strncmp(packet->buffer, "qTStatus", 8))
         gdb_client_send(client, "T0", 2);
      else if (!strncmp(packet->buffer, "qTfP", 8))
         gdb_client_send(client, "", 0);
      else if (!strncmp(packet->buffer, "qTfV", 8))
         gdb_client_send(client, "", 0);
      else if (!strncmp(packet->buffer, "qTsP", 8))
         gdb_client_send(client, "", 0);
   }
   else if (packet->buffer[0] == 'm')
   {
      u32 addr;
      int len, i;
      char * buffer;
      char * pos;

      sscanf(packet->buffer, "m%x,%d", &addr, &len);

      buffer = malloc(2 * len);
      pos = buffer;

      i = 0;
      while(i < len / 4) {
         u32 val = MappedMemoryReadLong(addr + 4 * i);
         sprintf(pos, "%08x", val);
         i += 1;
         pos += 8;
      }

      switch(len % 4) {
         case 2: {
            u16 val = MappedMemoryReadWord(addr + 4 * i);
            sprintf(pos, "%04x", val);
            break;
         }
         case 1: {
            u8 val = MappedMemoryReadByte(addr + 4 * i);
            sprintf(pos, "%02x", val);
            break;
         }
      }

      gdb_client_send(client, buffer, 2 * len);

      free(buffer);
   }
   else if (packet->buffer[0] == 'v')
   {
      if (!strncmp(packet->buffer, "vCont?", 6))
         gdb_client_send(client, "", 0);
   }
   else if (packet->buffer[0] == 's')
      gdb_client_step(client);
   else if (packet->buffer[0] == 'Z')
   {
      if (packet->buffer[1] == '0')
      {
         u32 addr;
         int dummy;
         sscanf(packet->buffer, "Z0,%x,%d", &addr, &dummy);
         SH2AddCodeBreakpoint(client->context, addr);
      }
      gdb_client_send(client, "OK", 2);
   }
   else if (packet->buffer[0] == 'z')
   {
      if (packet->buffer[1] == '0')
      {
         u32 addr;
         int dummy;
         sscanf(packet->buffer, "Z0,%x,%d", &addr, &dummy);
         SH2DelCodeBreakpoint(client->context, addr);
      }
      gdb_client_send(client, "OK", 2);
   }
}
