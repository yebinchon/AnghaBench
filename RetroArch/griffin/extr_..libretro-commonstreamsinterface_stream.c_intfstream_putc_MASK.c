#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  fp; } ;
struct TYPE_5__ {int /*<<< orphan*/  fp; } ;
struct TYPE_7__ {int type; TYPE_2__ memory; TYPE_1__ file; } ;
typedef  TYPE_3__ intfstream_internal_t ;

/* Variables and functions */
#define  INTFSTREAM_CHD 130 
#define  INTFSTREAM_FILE 129 
#define  INTFSTREAM_MEMORY 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

void FUNC2(intfstream_internal_t *intf, int c)
{
   if (!intf)
      return;

   switch (intf->type)
   {
      case INTFSTREAM_FILE:
         FUNC0(intf->file.fp, c);
         break;
      case INTFSTREAM_MEMORY:
         FUNC1(intf->memory.fp, c);
         break;
      case INTFSTREAM_CHD:
         break;
   }
}