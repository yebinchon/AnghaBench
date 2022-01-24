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
typedef  int gint ;
typedef  int gboolean ;

/* Variables and functions */
 int HB_ACODEC_PASS_MASK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 

gboolean
FUNC1(gint acodec)
{
    FUNC0("ghb_audio_can_passthru () \n");
    return (acodec & HB_ACODEC_PASS_MASK) != 0;
}