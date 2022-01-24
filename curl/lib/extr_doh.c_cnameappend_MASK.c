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
struct cnamestore {char* alloc; size_t allocsize; size_t len; } ;
typedef  int /*<<< orphan*/  DOHcode ;

/* Variables and functions */
 int /*<<< orphan*/  DOH_OK ; 
 int /*<<< orphan*/  DOH_OUT_OF_MEM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned char*,size_t) ; 
 char* FUNC3 (char*,size_t) ; 

__attribute__((used)) static DOHcode FUNC4(struct cnamestore *c,
                           unsigned char *src,
                           size_t len)
{
  if(!c->alloc) {
    c->allocsize = len + 1;
    c->alloc = FUNC1(c->allocsize);
    if(!c->alloc)
      return DOH_OUT_OF_MEM;
  }
  else if(c->allocsize < (c->allocsize + len + 1)) {
    char *ptr;
    c->allocsize += len + 1;
    ptr = FUNC3(c->alloc, c->allocsize);
    if(!ptr) {
      FUNC0(c->alloc);
      return DOH_OUT_OF_MEM;
    }
    c->alloc = ptr;
  }
  FUNC2(&c->alloc[c->len], src, len);
  c->len += len;
  c->alloc[c->len] = 0; /* keep it zero terminated */
  return DOH_OK;
}