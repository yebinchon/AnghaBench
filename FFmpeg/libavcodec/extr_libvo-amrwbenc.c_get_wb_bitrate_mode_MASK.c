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
typedef  int /*<<< orphan*/  log_buf ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int FUNC0 (int const) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int const) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*) ; 

__attribute__((used)) static int FUNC4(int bitrate, void *log_ctx)
{
    /* make the correspondence between bitrate and mode */
    static const int rates[] = {  6600,  8850, 12650, 14250, 15850, 18250,
                                 19850, 23050, 23850 };
    int i, best = -1, min_diff = 0;
    char log_buf[200];

    for (i = 0; i < 9; i++) {
        if (rates[i] == bitrate)
            return i;
        if (best < 0 || FUNC0(rates[i] - bitrate) < min_diff) {
            best     = i;
            min_diff = FUNC0(rates[i] - bitrate);
        }
    }
    /* no bitrate matching exactly, log a warning */
    FUNC3(log_buf, sizeof(log_buf), "bitrate not supported: use one of ");
    for (i = 0; i < 9; i++)
        FUNC2(log_buf, sizeof(log_buf), "%.2fk, ", rates[i]    / 1000.f);
    FUNC2(log_buf, sizeof(log_buf), "using %.2fk", rates[best] / 1000.f);
    FUNC1(log_ctx, AV_LOG_WARNING, "%s\n", log_buf);

    return best;
}