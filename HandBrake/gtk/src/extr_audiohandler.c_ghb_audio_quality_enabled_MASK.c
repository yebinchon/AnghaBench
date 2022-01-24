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
typedef  int gboolean ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 double HB_INVALID_AUDIO_QUALITY ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/  const*,char*) ; 
 double FUNC1 (int /*<<< orphan*/  const*,char*) ; 
 int FUNC2 (int /*<<< orphan*/  const*,char*) ; 

gboolean FUNC3(const GhbValue *asettings)
{
    int        bitrate;
    double     quality;
    GhbValue * val;

    bitrate = FUNC2(asettings, "Bitrate");
    quality = FUNC1(asettings, "Quality");
    val     = FUNC0(asettings, "Quality");

    return !(bitrate > 0 || val == NULL || quality == HB_INVALID_AUDIO_QUALITY);
}