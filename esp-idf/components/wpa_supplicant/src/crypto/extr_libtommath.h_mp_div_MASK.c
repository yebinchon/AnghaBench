#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_38__   TYPE_1__ ;

/* Type definitions */
struct TYPE_38__ {int sign; } ;
typedef  TYPE_1__ mp_int ;

/* Variables and functions */
 scalar_t__ MP_GT ; 
 scalar_t__ MP_LT ; 
 int MP_NEG ; 
 int MP_OKAY ; 
 int MP_VAL ; 
 int MP_YES ; 
 int MP_ZPOS ; 
 int FUNC0 (TYPE_1__*,TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*,TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*,int,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_1__*) ; 
 int FUNC9 (TYPE_1__*,TYPE_1__*,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC10 (TYPE_1__*) ; 
 int FUNC11 (TYPE_1__*,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int) ; 
 int FUNC13 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 

__attribute__((used)) static int 
FUNC15(mp_int * a, mp_int * b, mp_int * c, mp_int * d)
{
   mp_int ta, tb, tq, q;
   int    res, n, n2;

  /* is divisor zero ? */
  if (FUNC10 (b) == 1) {
    return MP_VAL;
  }

  /* if a < b then q=0, r = a */
  if (FUNC4 (a, b) == MP_LT) {
    if (d != NULL) {
      res = FUNC5 (a, d);
    } else {
      res = MP_OKAY;
    }
    if (c != NULL) {
      FUNC14 (c);
    }
    return res;
  }
	
  /* init our temps */
  if ((res = FUNC9(&ta, &tb, &tq, &q, NULL) != MP_OKAY)) {
     return res;
  }


  FUNC12(&tq, 1);
  n = FUNC6(a) - FUNC6(b);
  if (((res = FUNC0(a, &ta)) != MP_OKAY) ||
      ((res = FUNC0(b, &tb)) != MP_OKAY) || 
      ((res = FUNC11(&tb, n, &tb)) != MP_OKAY) ||
      ((res = FUNC11(&tq, n, &tq)) != MP_OKAY)) {
      goto LBL_ERR;
  }

  while (n-- >= 0) {
     if (FUNC3(&tb, &ta) != MP_GT) {
        if (((res = FUNC13(&ta, &tb, &ta)) != MP_OKAY) ||
            ((res = FUNC1(&q, &tq, &q)) != MP_OKAY)) {
           goto LBL_ERR;
        }
     }
     if (((res = FUNC7(&tb, 1, &tb, NULL)) != MP_OKAY) ||
         ((res = FUNC7(&tq, 1, &tq, NULL)) != MP_OKAY)) {
           goto LBL_ERR;
     }
  }

  /* now q == quotient and ta == remainder */
  n  = a->sign;
  n2 = (a->sign == b->sign ? MP_ZPOS : MP_NEG);
  if (c != NULL) {
     FUNC8(c, &q);
     c->sign  = (FUNC10(c) == MP_YES) ? MP_ZPOS : n2;
  }
  if (d != NULL) {
     FUNC8(d, &ta);
     d->sign = (FUNC10(d) == MP_YES) ? MP_ZPOS : n;
  }
LBL_ERR:
   FUNC2(&ta, &tb, &tq, &q, NULL);
   return res;
}