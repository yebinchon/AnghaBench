#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int state; size_t buflen; char bufsum; int cslen; char* buffer; char* checksum; int /*<<< orphan*/  client; } ;
typedef  TYPE_1__ gdb_packet ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int*) ; 

void FUNC4(gdb_packet * packet, char * buffer, size_t got)
{
   size_t i;
   char c;

   for(i = 0;i < got;i++)
   {
      c = buffer[i];
      switch(packet->state)
      {
         case 0:
            if ('$' == c)
            {
               packet->state = 1;
               packet->buflen = 0;
               packet->bufsum = 0;
            }
            else if (3 == c)
               FUNC0(packet->client);
            break;
         case 1:
            if ('#' == c)
            {
               packet->state = 2;
               packet->cslen = 0;
            }
            else
            {
               packet->buffer[packet->buflen++] = c;
               packet->bufsum += c;
            }
            break;
         case 2:
            packet->checksum[packet->cslen++] = c;
            if (2 == packet->cslen)
            {
               int checksum;
               FUNC3(packet->checksum, "%2x", &checksum);
               packet->buffer[packet->buflen] = '\0';
               if (packet->bufsum == checksum)
                  FUNC2(packet->client, packet);
               else
                  FUNC1(packet->client);
               packet->state = 0;
            }
            break;
      }
   }
}