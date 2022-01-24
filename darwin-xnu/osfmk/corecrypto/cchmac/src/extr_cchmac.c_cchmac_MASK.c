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
struct ccdigest_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FIPSPOST_TRACE_EVENT ; 
 int /*<<< orphan*/  FUNC0 (struct ccdigest_info const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ccdigest_info const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ccdigest_info const*,int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ccdigest_info const*,int /*<<< orphan*/ ,size_t,void const*) ; 
 int /*<<< orphan*/  FUNC4 (struct ccdigest_info const*,int /*<<< orphan*/ ,size_t,void const*) ; 
 int /*<<< orphan*/  hc ; 

void FUNC5(const struct ccdigest_info *di,
            size_t key_len, const void *key,
            size_t data_len, const void *data, unsigned char *mac) {
    FIPSPOST_TRACE_EVENT;

    FUNC1(di, hc);
    FUNC3(di, hc, key_len, key);
    FUNC4(di, hc, data_len, data);
    FUNC2(di, hc, mac);
	FUNC0(di, hc);
}