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
 size_t FUNC0 (char*) ; 

__attribute__((used)) static void FUNC1(char *buffer, char **outptr)
{
  size_t len = FUNC0(buffer);
  char *message = NULL;

  if(len > 4) {
    /* Find the start of the message */
    len -= 4;
    for(message = buffer + 4; *message == ' ' || *message == '\t';
        message++, len--)
      ;

    /* Find the end of the message */
    for(; len--;)
      if(message[len] != '\r' && message[len] != '\n' && message[len] != ' ' &&
         message[len] != '\t')
        break;

    /* Terminate the message */
    if(++len) {
      message[len] = '\0';
    }
  }
  else
    /* junk input => zero length output */
    message = &buffer[len];

  *outptr = message;
}