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
struct Cookie {struct Cookie* version; struct Cookie* maxage; struct Cookie* value; struct Cookie* name; struct Cookie* spath; struct Cookie* path; struct Cookie* domain; struct Cookie* expirestr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct Cookie*) ; 

__attribute__((used)) static void FUNC1(struct Cookie *co)
{
  FUNC0(co->expirestr);
  FUNC0(co->domain);
  FUNC0(co->path);
  FUNC0(co->spath);
  FUNC0(co->name);
  FUNC0(co->value);
  FUNC0(co->maxage);
  FUNC0(co->version);
  FUNC0(co);
}