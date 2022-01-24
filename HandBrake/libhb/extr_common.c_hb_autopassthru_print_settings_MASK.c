#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int acodec_copy_mask; int acodec_fallback; } ;
typedef  TYPE_1__ hb_job_t ;
struct TYPE_7__ {int codec; char* name; } ;
typedef  TYPE_2__ hb_encoder_t ;

/* Variables and functions */
 int HB_ACODEC_AUTO_PASS ; 
 int HB_ACODEC_PASS_FLAG ; 
 int HB_ACODEC_PASS_MASK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_2__* FUNC1 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 char* FUNC3 (char*,char*,int) ; 
 int FUNC4 (char*) ; 

void FUNC5(hb_job_t *job)
{
    char *mask = NULL, *tmp;
    const char *fallback = NULL;
    const hb_encoder_t *audio_encoder = NULL;
    while ((audio_encoder = FUNC1(audio_encoder)) != NULL)
    {
        if ((audio_encoder->codec &  HB_ACODEC_PASS_FLAG) &&
            (audio_encoder->codec != HB_ACODEC_AUTO_PASS) &&
            (audio_encoder->codec & (job->acodec_copy_mask &
                                     HB_ACODEC_PASS_MASK)))
        {
            if (mask != NULL)
            {
                tmp = FUNC3(mask, ", ", 2);
                if (tmp != NULL)
                {
                    FUNC0(mask);
                    mask = tmp;
                }
            }
            // passthru name without " Passthru"
            tmp = FUNC3(mask,  audio_encoder->name,
                                 FUNC4(audio_encoder->name) - 9);
            if (tmp != NULL)
            {
                FUNC0(mask);
                mask = tmp;
            }
        }
        else if ((audio_encoder->codec & HB_ACODEC_PASS_FLAG) == 0 &&
                 (audio_encoder->codec == job->acodec_fallback))
        {
            fallback = audio_encoder->name;
        }
    }
    if (mask == NULL)
        FUNC2("Auto Passthru: no codecs allowed");
    else
        FUNC2("Auto Passthru: allowed codecs are %s", mask);
    if (fallback == NULL)
        FUNC2("Auto Passthru: no valid fallback specified");
    else
        FUNC2("Auto Passthru: fallback is %s", fallback);
}