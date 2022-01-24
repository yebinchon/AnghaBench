#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
struct TYPE_7__ {int pb; int lc; int lp; } ;
struct TYPE_8__ {int dicPos; TYPE_1__ prop; } ;
struct TYPE_9__ {int state; int control; int unpackSize; int packSize; int needInitProp; TYPE_2__ decoder; } ;
typedef  int ELzma2State ;
typedef  TYPE_3__ CLzma2Dec ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int LZMA2_LCLP_MAX ; 
#define  LZMA2_STATE_CONTROL 133 
 int LZMA2_STATE_DATA ; 
 int LZMA2_STATE_ERROR ; 
 int LZMA2_STATE_FINISHED ; 
#define  LZMA2_STATE_PACK0 132 
#define  LZMA2_STATE_PACK1 131 
#define  LZMA2_STATE_PROP 130 
#define  LZMA2_STATE_UNPACK0 129 
#define  LZMA2_STATE_UNPACK1 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

__attribute__((used)) static ELzma2State FUNC5(CLzma2Dec *p, uint8_t b)
{
   switch(p->state)
   {
      case LZMA2_STATE_CONTROL:
         p->control = b;
         FUNC3(FUNC4("\n %4X ", p->decoder.dicPos));
         FUNC3(FUNC4(" %2X", b));
         if (p->control == 0)
            return LZMA2_STATE_FINISHED;
         if (FUNC2(p))
         {
            if ((p->control & 0x7F) > 2)
               return LZMA2_STATE_ERROR;
            p->unpackSize = 0;
         }
         else
            p->unpackSize = (uint32_t)(p->control & 0x1F) << 16;
         return LZMA2_STATE_UNPACK0;

      case LZMA2_STATE_UNPACK0:
         p->unpackSize |= (uint32_t)b << 8;
         return LZMA2_STATE_UNPACK1;

      case LZMA2_STATE_UNPACK1:
         p->unpackSize |= (uint32_t)b;
         p->unpackSize++;
         FUNC3(FUNC4(" %8d", p->unpackSize));
         return (FUNC2(p)) ? LZMA2_STATE_DATA : LZMA2_STATE_PACK0;

      case LZMA2_STATE_PACK0:
         p->packSize = (uint32_t)b << 8;
         return LZMA2_STATE_PACK1;

      case LZMA2_STATE_PACK1:
         p->packSize |= (uint32_t)b;
         p->packSize++;
         FUNC3(FUNC4(" %8d", p->packSize));
         return FUNC1(FUNC0(p)) ? LZMA2_STATE_PROP:
            (p->needInitProp ? LZMA2_STATE_ERROR : LZMA2_STATE_DATA);

      case LZMA2_STATE_PROP:
         {
            int lc, lp;
            if (b >= (9 * 5 * 5))
               return LZMA2_STATE_ERROR;
            lc = b % 9;
            b /= 9;
            p->decoder.prop.pb = b / 5;
            lp = b % 5;
            if (lc + lp > LZMA2_LCLP_MAX)
               return LZMA2_STATE_ERROR;
            p->decoder.prop.lc = lc;
            p->decoder.prop.lp = lp;
            p->needInitProp = false;
            return LZMA2_STATE_DATA;
         }
   }
   return LZMA2_STATE_ERROR;
}