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
struct UPNPUrls {int dummy; } ;
struct UPNPDev {int /*<<< orphan*/  descURL; struct UPNPDev* pNext; int /*<<< orphan*/  st; } ;
struct IGDdatas {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  data ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct UPNPDev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*) ; 
 struct UPNPDev* FUNC7 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  urls ; 

void FUNC8(void)
{
#ifndef HAVE_SOCKET_LEGACY
#if HAVE_MINIUPNPC
   struct UPNPDev * devlist;
   struct UPNPDev * dev;
   char * descXML;
   int descXMLsize = 0;
   int upnperror = 0;
   memset(&urls, 0, sizeof(struct UPNPUrls));
   memset(&data, 0, sizeof(struct IGDdatas));
   devlist = upnpDiscover(2000, NULL, NULL, 0, 0, 2, &upnperror);
   if (devlist)
   {
      dev = devlist;
      while (dev)
      {
         if (strstr (dev->st, "InternetGatewayDevice"))
            break;
         dev = dev->pNext;
      }
      if (!dev)
         dev = devlist;

      descXML = (char *) miniwget(dev->descURL, &descXMLsize, 0, NULL);
      if (descXML)
      {
         parserootdesc(descXML, descXMLsize, &data);
         free (descXML);
         descXML = 0;
         GetUPNPUrls (&urls, &data, dev->descURL, 0);
      }
      freeUPNPDevlist(devlist);
   }
#endif
#endif
}