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
struct Cookie {int /*<<< orphan*/  creationtime; int /*<<< orphan*/  httponly; int /*<<< orphan*/  livecookie; int /*<<< orphan*/  secure; int /*<<< orphan*/  tailmatch; int /*<<< orphan*/  expires; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct Cookie* FUNC1 (int,int) ; 
 int /*<<< orphan*/  domain ; 
 int /*<<< orphan*/  expirestr ; 
 int /*<<< orphan*/  FUNC2 (struct Cookie*) ; 
 int /*<<< orphan*/  maxage ; 
 int /*<<< orphan*/  name ; 
 int /*<<< orphan*/  path ; 
 int /*<<< orphan*/  spath ; 
 int /*<<< orphan*/  value ; 
 int /*<<< orphan*/  version ; 

__attribute__((used)) static struct Cookie *FUNC3(struct Cookie *src)
{
  struct Cookie *d = FUNC1(sizeof(struct Cookie), 1);
  if(d) {
    FUNC0(expirestr);
    FUNC0(domain);
    FUNC0(path);
    FUNC0(spath);
    FUNC0(name);
    FUNC0(value);
    FUNC0(maxage);
    FUNC0(version);
    d->expires = src->expires;
    d->tailmatch = src->tailmatch;
    d->secure = src->secure;
    d->livecookie = src->livecookie;
    d->httponly = src->httponly;
    d->creationtime = src->creationtime;
  }
  return d;

  fail:
  FUNC2(d);
  return NULL;
}