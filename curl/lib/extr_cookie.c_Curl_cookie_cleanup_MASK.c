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
struct CookieInfo {int /*<<< orphan*/ * cookies; struct CookieInfo* filename; } ;

/* Variables and functions */
 unsigned int COOKIE_HASH_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct CookieInfo*) ; 

void FUNC2(struct CookieInfo *c)
{
  if(c) {
    unsigned int i;
    FUNC1(c->filename);
    for(i = 0; i < COOKIE_HASH_SIZE; i++)
      FUNC0(c->cookies[i]);
    FUNC1(c); /* free the base struct as well */
  }
}