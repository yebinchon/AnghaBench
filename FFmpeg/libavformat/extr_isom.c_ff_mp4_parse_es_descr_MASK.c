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
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

void FUNC3(AVIOContext *pb, int *es_id)
{
     int flags;
     if (es_id) *es_id = FUNC1(pb);
     else                FUNC1(pb);
     flags = FUNC0(pb);
     if (flags & 0x80) //streamDependenceFlag
         FUNC1(pb);
     if (flags & 0x40) { //URL_Flag
         int len = FUNC0(pb);
         FUNC2(pb, len);
     }
     if (flags & 0x20) //OCRstreamFlag
         FUNC1(pb);
}