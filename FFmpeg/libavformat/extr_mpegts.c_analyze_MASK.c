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
typedef  int uint8_t ;

/* Variables and functions */
 int FUNC0 (int const*) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int TS_MAX_PACKET_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(const uint8_t *buf, int size, int packet_size,
                   int probe)
{
    int stat[TS_MAX_PACKET_SIZE];
    int stat_all = 0;
    int i;
    int best_score = 0;

    FUNC2(stat, 0, packet_size * sizeof(*stat));

    for (i = 0; i < size - 3; i++) {
        if (buf[i] == 0x47) {
            int pid = FUNC0(buf+1) & 0x1FFF;
            int asc = buf[i + 3] & 0x30;
            if (!probe || pid == 0x1FFF || asc) {
                int x = i % packet_size;
                stat[x]++;
                stat_all++;
                if (stat[x] > best_score) {
                    best_score = stat[x];
                }
            }
        }
    }

    return best_score - FUNC1(stat_all - 10*best_score, 0)/10;
}