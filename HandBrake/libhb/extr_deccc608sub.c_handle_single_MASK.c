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
struct s_write {TYPE_1__* data608; } ;
struct TYPE_2__ {scalar_t__ channel; } ;

/* Variables and functions */
 scalar_t__ cc_channel ; 
 scalar_t__ debug_608 ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned char const) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char const,struct s_write*) ; 

__attribute__((used)) static void FUNC2(const unsigned char c1, struct s_write *wb)
{
    if (c1<0x20 || wb->data608->channel!=cc_channel)
        return; // We don't allow special stuff here
    if (debug_608)
        FUNC0 ("%c",c1);

    /*if (debug_608)
    hb_log ("Character: %02X (%c) -> %02X (%c)\n",c1,c1,c,c); */
    FUNC1 (c1,wb);
}