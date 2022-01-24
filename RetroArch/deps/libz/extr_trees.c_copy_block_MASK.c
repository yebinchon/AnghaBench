#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ush ;
typedef  int ulg ;
struct TYPE_6__ {int bits_sent; } ;
typedef  TYPE_1__ deflate_state ;
typedef  int /*<<< orphan*/  charf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(deflate_state *s, charf *buf, unsigned len, int header)
   {
      FUNC0(s);        /* align on byte boundary */

      if (header) {
         FUNC2(s, (ush)len);
         FUNC2(s, (ush)~len);
#ifdef DEBUG
         s->bits_sent += 2*16;
#endif
      }
#ifdef DEBUG
      s->bits_sent += (ulg)len<<3;
#endif
      while (len--) {
         FUNC1(s, *buf++);
      }
   }