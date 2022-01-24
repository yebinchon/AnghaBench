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
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 int HB_ACODEC_AAC_PASS ; 
 int HB_ACODEC_AC3_PASS ; 
 int HB_ACODEC_DCA_HD_PASS ; 
 int HB_ACODEC_DCA_PASS ; 
 int HB_ACODEC_EAC3_PASS ; 
 int HB_ACODEC_FLAC_PASS ; 
 int HB_ACODEC_MP3_PASS ; 
 int HB_ACODEC_TRUEHD_PASS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*) ; 

int FUNC1(GhbValue *settings)
{
    gint mask = 0;

    if (FUNC0(settings, "AudioAllowMP3Pass"))
    {
        mask |= HB_ACODEC_MP3_PASS;
    }
    if (FUNC0(settings, "AudioAllowAACPass"))
    {
        mask |= HB_ACODEC_AAC_PASS;
    }
    if (FUNC0(settings, "AudioAllowAC3Pass"))
    {
        mask |= HB_ACODEC_AC3_PASS;
    }
    if (FUNC0(settings, "AudioAllowDTSPass"))
    {
        mask |= HB_ACODEC_DCA_PASS;
    }
    if (FUNC0(settings, "AudioAllowDTSHDPass"))
    {
        mask |= HB_ACODEC_DCA_HD_PASS;
    }
    if (FUNC0(settings, "AudioAllowEAC3Pass"))
    {
        mask |= HB_ACODEC_EAC3_PASS;
    }
    if (FUNC0(settings, "AudioAllowFLACPass"))
    {
        mask |= HB_ACODEC_FLAC_PASS;
    }
    if (FUNC0(settings, "AudioAllowTRUEHDPass"))
    {
        mask |= HB_ACODEC_TRUEHD_PASS;
    }
    return mask;
}