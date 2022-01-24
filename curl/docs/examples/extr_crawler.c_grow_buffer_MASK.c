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
struct TYPE_2__ {char* buf; size_t size; } ;
typedef  TYPE_1__ memory ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*,size_t) ; 

size_t FUNC3(void *contents, size_t sz, size_t nmemb, void *ctx)
{
  size_t realsize = sz * nmemb;
  memory *mem = (memory*) ctx;
  char *ptr = FUNC2(mem->buf, mem->size + realsize);
  if(!ptr) {
    /* out of memory */
    FUNC1("not enough memory (realloc returned NULL)\n");
    return 0;
  }
  mem->buf = ptr;
  FUNC0(&(mem->buf[mem->size]), contents, realsize);
  mem->size += realsize;
  return realsize;
}