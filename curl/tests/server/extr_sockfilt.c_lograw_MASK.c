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
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,...) ; 

__attribute__((used)) static void FUNC3(unsigned char *buffer, ssize_t len)
{
  char data[120];
  ssize_t i;
  unsigned char *ptr = buffer;
  char *optr = data;
  ssize_t width = 0;
  int left = sizeof(data);

  for(i = 0; i<len; i++) {
    switch(ptr[i]) {
    case '\n':
      FUNC2(optr, left, "\\n");
      width += 2;
      optr += 2;
      left -= 2;
      break;
    case '\r':
      FUNC2(optr, left, "\\r");
      width += 2;
      optr += 2;
      left -= 2;
      break;
    default:
      FUNC2(optr, left, "%c", (FUNC0(ptr[i]) ||
                                   ptr[i] == 0x20) ?ptr[i]:'.');
      width++;
      optr++;
      left--;
      break;
    }

    if(width>60) {
      FUNC1("'%s'", data);
      width = 0;
      optr = data;
      left = sizeof(data);
    }
  }
  if(width)
    FUNC1("'%s'", data);
}