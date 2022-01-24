#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct AVMD5 {int dummy; } ;
typedef  int /*<<< orphan*/  checksum ;
struct TYPE_3__ {int nb_samples; int /*<<< orphan*/ * extended_data; int /*<<< orphan*/  format; int /*<<< orphan*/  channel_layout; } ;
typedef  TYPE_1__ AVFrame ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct AVMD5*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static int FUNC6(struct AVMD5 *md5, AVFrame *frame)
{
    int planar     = FUNC4(frame->format);
    int channels   = FUNC1(frame->channel_layout);
    int planes     = planar ? channels : 1;
    int bps        = FUNC0(frame->format);
    int plane_size = bps * frame->nb_samples * (planar ? 1 : channels);
    int i, j;

    for (i = 0; i < planes; i++) {
        uint8_t checksum[16];

        FUNC2(md5);
        FUNC3(checksum, frame->extended_data[i], plane_size);

        FUNC5(stdout, "plane %d: 0x", i);
        for (j = 0; j < sizeof(checksum); j++)
            FUNC5(stdout, "%02X", checksum[j]);
        FUNC5(stdout, "\n");
    }
    FUNC5(stdout, "\n");

    return 0;
}