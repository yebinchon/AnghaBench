#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  z_streamp ;
typedef  int uInt ;
struct inflate_blocks_state {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  mode; int /*<<< orphan*/  checkfn; struct TYPE_9__* window; struct TYPE_9__* end; struct TYPE_9__* hufts; } ;
typedef  TYPE_1__ inflate_huft ;
typedef  TYPE_1__ inflate_blocks_statef ;
typedef  int /*<<< orphan*/  check_func ;
typedef  TYPE_1__ Byte ;

/* Variables and functions */
 int MANY ; 
 int /*<<< orphan*/  TYPE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* Z_NULL ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_1__*) ; 

inflate_blocks_statef *FUNC4(z_streamp z, check_func c, uInt w)
{
  inflate_blocks_statef *s;

  if ((s = (inflate_blocks_statef *)FUNC1
       (z,1,sizeof(struct inflate_blocks_state))) == Z_NULL)
    return s;
  if ((s->hufts =
       (inflate_huft *)FUNC1(z, sizeof(inflate_huft), MANY)) == Z_NULL)
  {
    FUNC2(z, s);
    return Z_NULL;
  }
  if ((s->window = (Byte *)FUNC1(z, 1, w)) == Z_NULL)
  {
    FUNC2(z, s->hufts);
    FUNC2(z, s);
    return Z_NULL;
  }
  s->end = s->window + w;
  s->checkfn = c;
  s->mode = TYPE;
  FUNC0(("inflate:   blocks allocated\n"));
  FUNC3(s, z, Z_NULL);
  return s;
}