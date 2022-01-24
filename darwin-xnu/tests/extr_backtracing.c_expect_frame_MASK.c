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
typedef  int /*<<< orphan*/  CSSymbolRef ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*,char*,unsigned int,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned int) ; 
 int /*<<< orphan*/  T_QUIET ; 

__attribute__((used)) static void
FUNC6(const char **bt, unsigned int bt_len, CSSymbolRef symbol,
    unsigned long addr, unsigned int bt_idx, unsigned int max_frames)
{
    const char *name;
    unsigned int frame_idx = max_frames - bt_idx - 1;

    if (bt[frame_idx] == NULL) {
        FUNC5("frame %2u: skipping system frame", frame_idx);
        return;
    }

    if (FUNC0(symbol)) {
        FUNC4("invalid symbol for address %#lx at frame %d", addr, frame_idx);
        return;
    }

    if (frame_idx >= bt_len) {
        FUNC4("unexpected frame '%s' (%#lx) at index %u",
            FUNC1(symbol), addr, frame_idx);
        return;
    }

    name = FUNC1(symbol);
    T_QUIET; FUNC2(name, NULL);
    FUNC3(name, bt[frame_idx],
        "frame %2u: saw '%s', expected '%s'",
        frame_idx, name, bt[frame_idx]);
}