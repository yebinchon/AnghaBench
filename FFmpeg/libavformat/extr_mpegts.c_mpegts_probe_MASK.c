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
struct TYPE_3__ {int buf_size; scalar_t__ buf; } ;
typedef  TYPE_1__ AVProbeData ;

/* Variables and functions */
 int AVPROBE_SCORE_MAX ; 
 int CHECK_BLOCK ; 
 int CHECK_COUNT ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int,int) ; 
 int FUNC2 (int,int) ; 
 int TS_DVHS_PACKET_SIZE ; 
 int const TS_FEC_PACKET_SIZE ; 
 int TS_PACKET_SIZE ; 
 int FUNC3 (scalar_t__,int const,int const,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,int) ; 

__attribute__((used)) static int FUNC5(const AVProbeData *p)
{
    const int size = p->buf_size;
    int maxscore = 0;
    int sumscore = 0;
    int i;
    int check_count = size / TS_FEC_PACKET_SIZE;
#define CHECK_COUNT 10
#define CHECK_BLOCK 100

    if (!check_count)
        return 0;

    for (i = 0; i<check_count; i+=CHECK_BLOCK) {
        int left = FUNC2(check_count - i, CHECK_BLOCK);
        int score      = FUNC3(p->buf + TS_PACKET_SIZE     *i, TS_PACKET_SIZE     *left, TS_PACKET_SIZE     , 1);
        int dvhs_score = FUNC3(p->buf + TS_DVHS_PACKET_SIZE*i, TS_DVHS_PACKET_SIZE*left, TS_DVHS_PACKET_SIZE, 1);
        int fec_score  = FUNC3(p->buf + TS_FEC_PACKET_SIZE *i, TS_FEC_PACKET_SIZE *left, TS_FEC_PACKET_SIZE , 1);
        score = FUNC1(score, dvhs_score, fec_score);
        sumscore += score;
        maxscore = FUNC0(maxscore, score);
    }

    sumscore = sumscore * CHECK_COUNT / check_count;
    maxscore = maxscore * CHECK_COUNT / CHECK_BLOCK;

    FUNC4(0, "TS score: %d %d\n", sumscore, maxscore);

    if        (check_count > CHECK_COUNT && sumscore > 6) {
        return AVPROBE_SCORE_MAX   + sumscore - CHECK_COUNT;
    } else if (check_count >= CHECK_COUNT && sumscore > 6) {
        return AVPROBE_SCORE_MAX/2 + sumscore - CHECK_COUNT;
    } else if (check_count >= CHECK_COUNT && maxscore > 6) {
        return AVPROBE_SCORE_MAX/2 + sumscore - CHECK_COUNT;
    } else if (sumscore > 6) {
        return 2;
    } else {
        return 0;
    }
}