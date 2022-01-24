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
typedef  scalar_t__ gdouble ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 scalar_t__ HB_INVALID_AUDIO_QUALITY ; 
 scalar_t__ FUNC0 (int,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static gdouble FUNC3(GhbValue *settings)
{
    int codec = FUNC2(settings, "Encoder");
    gdouble quality = FUNC1(settings, "Quality");
    if (quality == HB_INVALID_AUDIO_QUALITY)
    {
        return quality;
    }
    return FUNC0(codec, quality);
}