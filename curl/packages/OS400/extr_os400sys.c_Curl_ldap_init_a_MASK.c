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
 int /*<<< orphan*/  FUNC0 (char*,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,int) ; 
 char* FUNC3 (unsigned int) ; 
 unsigned int FUNC4 (char*) ; 

void *
FUNC5(char * host, int port)

{
  unsigned int i;
  char * ehost;
  void * result;

  if(!host)
    return (void *) FUNC2(host, port);

  i = FUNC4(host);

  ehost = FUNC3(i + 1);
  if(!ehost)
    return (void *) NULL;

  FUNC0(ehost, host, i, i);
  ehost[i] = '\0';
  result = (void *) FUNC2(ehost, port);
  FUNC1(ehost);
  return result;
}