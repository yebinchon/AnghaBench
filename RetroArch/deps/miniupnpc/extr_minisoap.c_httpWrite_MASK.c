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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 scalar_t__ FUNC3 (int,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(int fd, const char * body, int bodysize,
          const char * headers, int headerssize)
{
	int n = 0;
	/*n = write(fd, headers, headerssize);*/
	/*if(bodysize>0)
		n += write(fd, body, bodysize);*/
	/* Note : my old linksys router only took into account
	 * soap request that are sent into only one packet */
	char * p;
	/* TODO: AVOID MALLOC, we could use writev() for that */
	p = (char*)FUNC1(headerssize+bodysize);
	if(!p)
	  return -1;
	FUNC2(p, headers, headerssize);
	FUNC2(p+headerssize, body, bodysize);
	/*n = write(fd, p, headerssize+bodysize);*/
	n = (int)FUNC3(fd, p, headerssize+bodysize, 0);
	/* disable send on the socket */
	/* draytek routers dont seems to like that... */
	FUNC0(p);
	return n;
}