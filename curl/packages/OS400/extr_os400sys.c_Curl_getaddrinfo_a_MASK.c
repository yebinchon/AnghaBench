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
struct addrinfo {int dummy; } ;

/* Variables and functions */
 int EAI_MEMORY ; 
 int FUNC0 (char*,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char*,char*,struct addrinfo const*,struct addrinfo**) ; 
 char* FUNC3 (int) ; 
 int FUNC4 (char const*) ; 

int
FUNC5(const char * nodename, const char * servname,
            const struct addrinfo * hints,
            struct addrinfo * * res)

{
  char * enodename;
  char * eservname;
  int status;
  int i;

  enodename = (char *) NULL;
  eservname = (char *) NULL;

  if(nodename) {
    i = FUNC4(nodename);

    enodename = FUNC3(i + 1);
    if(!enodename)
      return EAI_MEMORY;

    i = FUNC0(enodename, nodename, i, i);
    enodename[i] = '\0';
  }

  if(servname) {
    i = FUNC4(servname);

    eservname = FUNC3(i + 1);
    if(!eservname) {
      FUNC1(enodename);
      return EAI_MEMORY;
    }

    FUNC0(eservname, servname, i, i);
    eservname[i] = '\0';
  }

  status = FUNC2(enodename, eservname, hints, res);
  FUNC1(enodename);
  FUNC1(eservname);
  return status;
}