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
typedef  int /*<<< orphan*/  AVCodec ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dummy_v1_encoder ; 
 int /*<<< orphan*/  dummy_v2_encoder ; 
 int /*<<< orphan*/  dummy_v3_encoder ; 
 int /*<<< orphan*/  dummy_v4_encoder ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC4(void)
{
    AVCodec *dummy_codec[] = {
        &dummy_v1_encoder,
        &dummy_v2_encoder,
        &dummy_v3_encoder,
        &dummy_v4_encoder,
        NULL,
    };
    int i, j;

    for (i = 0; dummy_codec[i]; i++)
        FUNC1(dummy_codec[i]);

    FUNC2("testing avcodec_copy_context()\n");
    for (i = 0; i < FUNC0(dummy_codec); i++)
        for (j = 0; j < FUNC0(dummy_codec); j++)
            FUNC3(dummy_codec[i], dummy_codec[j]);
    return 0;
}