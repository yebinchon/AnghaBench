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
struct TYPE_2__ {size_t (* append ) (int /*<<< orphan*/ ,char const*,size_t) ;int /*<<< orphan*/  arg; int /*<<< orphan*/  ccsid; } ;
typedef  TYPE_1__ cfcdata ;

/* Variables and functions */
 int /*<<< orphan*/  ASCII_CCSID ; 
 size_t MAX_CONV_EXPANSION ; 
 int FUNC0 (char*,size_t,int /*<<< orphan*/ ,char const*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (size_t) ; 
 size_t FUNC3 (int /*<<< orphan*/ ,char const*,size_t) ; 
 size_t FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static size_t
FUNC5(void *arg, const char *buf, size_t len)

{
  cfcdata * p;
  char *b;
  int l;
  size_t ret;

  p = (cfcdata *) arg;

  if((long) len <= 0)
    return (*p->append)(p->arg, buf, len);

  b = FUNC2(MAX_CONV_EXPANSION * len);

  if(!b)
    return (size_t) -1;

  l = FUNC0(b, MAX_CONV_EXPANSION * len, p->ccsid, buf, len, ASCII_CCSID);

  if(l < 0) {
    FUNC1(b);
    return (size_t) -1;
    }

  ret = (*p->append)(p->arg, b, l);
  FUNC1(b);
  return ret == l? len: -1;
}