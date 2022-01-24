#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 unsigned int FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void FUNC3(const unsigned char *sense, size_t len)
{
   unsigned i;
   const char *sense_key_text = NULL;
   unsigned char key;
   unsigned char asc;
   unsigned char ascq;

   if (len < 16)
   {
      FUNC2("[CDROM] Sense data buffer length too small.\n");
      FUNC1(stdout);
      return;
   }

   key = sense[2] & 0xF;
   asc = sense[12];
   ascq = sense[13];

   FUNC2("[CDROM] Sense Data: ");

   for (i = 0; i < FUNC0(len, 16); i++)
   {
      FUNC2("%02X ", sense[i]);
   }

   FUNC2("\n");

   if (sense[0] == 0x70)
      FUNC2("[CDROM] CURRENT ERROR:\n");
   if (sense[0] == 0x71)
      FUNC2("[CDROM] DEFERRED ERROR:\n");

   switch (key)
   {
      case 0:
         sense_key_text = "NO SENSE";
         break;
      case 1:
         sense_key_text = "RECOVERED ERROR";
         break;
      case 2:
         sense_key_text = "NOT READY";
         break;
      case 3:
         sense_key_text = "MEDIUM ERROR";
         break;
      case 4:
         sense_key_text = "HARDWARE ERROR";
         break;
      case 5:
         sense_key_text = "ILLEGAL REQUEST";
         break;
      case 6:
         sense_key_text = "UNIT ATTENTION";
         break;
      case 7:
         sense_key_text = "DATA PROTECT";
         break;
      case 8:
         sense_key_text = "BLANK CHECK";
         break;
      case 9:
         sense_key_text = "VENDOR SPECIFIC";
         break;
      case 10:
         sense_key_text = "COPY ABORTED";
         break;
      case 11:
         sense_key_text = "ABORTED COMMAND";
         break;
      case 13:
         sense_key_text = "VOLUME OVERFLOW";
         break;
      case 14:
         sense_key_text = "MISCOMPARE";
         break;
   }

   FUNC2("[CDROM] Sense Key: %02X (%s)\n", key, sense_key_text ? sense_key_text : "null");
   FUNC2("[CDROM] ASC: %02X\n", asc);
   FUNC2("[CDROM] ASCQ: %02X\n", ascq);

   switch (key)
   {
      case 2:
      {
         switch (asc)
         {
            case 4:
            {
               switch (ascq)
               {
                  case 1:
                     FUNC2("[CDROM] Description: LOGICAL UNIT IS IN PROCESS OF BECOMING READY\n");
                     break;
                  default:
                     break;
               }

               break;
            }
            case 0x3a:
            {
               switch (ascq)
               {
                  case 0:
                     FUNC2("[CDROM] Description: MEDIUM NOT PRESENT\n");
                     break;
                  case 3:
                     FUNC2("[CDROM] Description: MEDIUM NOT PRESENT - LOADABLE\n");
                     break;
                  case 1:
                     FUNC2("[CDROM] Description: MEDIUM NOT PRESENT - TRAY CLOSED\n");
                     break;
                  case 2:
                     FUNC2("[CDROM] Description: MEDIUM NOT PRESENT - TRAY OPEN\n");
                     break;
                  default:
                     break;
               }

               break;
            }
            default:
               break;
         }
      }
      case 3:
      {
         if (asc == 0x11 && ascq == 0x5)
            FUNC2("[CDROM] Description: L-EC UNCORRECTABLE ERROR\n");
         break;
      }
      case 5:
      {
         if (asc == 0x20 && ascq == 0)
            FUNC2("[CDROM] Description: INVALID COMMAND OPERATION CODE\n");
         else if (asc == 0x24 && ascq == 0)
            FUNC2("[CDROM] Description: INVALID FIELD IN CDB\n");
         else if (asc == 0x26 && ascq == 0)
            FUNC2("[CDROM] Description: INVALID FIELD IN PARAMETER LIST\n");
         break;
      }
      case 6:
      {
         if (asc == 0x28 && ascq == 0)
            FUNC2("[CDROM] Description: NOT READY TO READY CHANGE, MEDIUM MAY HAVE CHANGED\n");
         break;
      }
      default:
         break;
   }

   FUNC1(stdout);
}