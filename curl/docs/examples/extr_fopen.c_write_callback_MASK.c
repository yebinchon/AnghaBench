#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {size_t buffer_len; size_t buffer_pos; char* buffer; } ;
typedef  TYPE_1__ URL_FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,size_t) ; 
 char* FUNC2 (char*,size_t) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static size_t FUNC3(char *buffer,
                             size_t size,
                             size_t nitems,
                             void *userp)
{
  char *newbuff;
  size_t rembuff;

  URL_FILE *url = (URL_FILE *)userp;
  size *= nitems;

  rembuff = url->buffer_len - url->buffer_pos; /* remaining space in buffer */

  if(size > rembuff) {
    /* not enough space in buffer */
    newbuff = FUNC2(url->buffer, url->buffer_len + (size - rembuff));
    if(newbuff == NULL) {
      FUNC0(stderr, "callback buffer grow failed\n");
      size = rembuff;
    }
    else {
      /* realloc succeeded increase buffer size*/
      url->buffer_len += size - rembuff;
      url->buffer = newbuff;
    }
  }

  FUNC1(&url->buffer[url->buffer_pos], buffer, size);
  url->buffer_pos += size;

  return size;
}