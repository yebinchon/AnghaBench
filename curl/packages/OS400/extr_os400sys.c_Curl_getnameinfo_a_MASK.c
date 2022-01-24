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
struct sockaddr {int dummy; } ;
typedef  scalar_t__ curl_socklen_t ;

/* Variables and functions */
 int EAI_MEMORY ; 
 int FUNC0 (char*,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct sockaddr const*,scalar_t__,char*,scalar_t__,char*,scalar_t__,int) ; 
 char* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int
FUNC5(const struct sockaddr * sa, curl_socklen_t salen,
              char * nodename, curl_socklen_t nodenamelen,
              char * servname, curl_socklen_t servnamelen,
              int flags)

{
  char *enodename = NULL;
  char *eservname = NULL;
  int status;

  if(nodename && nodenamelen) {
    enodename = FUNC3(nodenamelen);
    if(!enodename)
      return EAI_MEMORY;
  }

  if(servname && servnamelen) {
    eservname = FUNC3(servnamelen);
    if(!eservname) {
      FUNC1(enodename);
      return EAI_MEMORY;
    }
  }

  status = FUNC2(sa, salen, enodename, nodenamelen,
                       eservname, servnamelen, flags);

  if(!status) {
    int i;
    if(enodename) {
      i = FUNC0(nodename, enodename,
        nodenamelen - 1, FUNC4(enodename));
      nodename[i] = '\0';
      }

    if(eservname) {
      i = FUNC0(servname, eservname,
        servnamelen - 1, FUNC4(eservname));
      servname[i] = '\0';
      }
    }

  FUNC1(enodename);
  FUNC1(eservname);
  return status;
}