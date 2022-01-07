
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buf_size; scalar_t__ buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 int CHECK_BLOCK ;
 int CHECK_COUNT ;
 int FFMAX (int,int) ;
 int FFMAX3 (int,int,int) ;
 int FFMIN (int,int) ;
 int TS_DVHS_PACKET_SIZE ;
 int const TS_FEC_PACKET_SIZE ;
 int TS_PACKET_SIZE ;
 int analyze (scalar_t__,int const,int const,int) ;
 int ff_dlog (int ,char*,int,int) ;

__attribute__((used)) static int mpegts_probe(const AVProbeData *p)
{
    const int size = p->buf_size;
    int maxscore = 0;
    int sumscore = 0;
    int i;
    int check_count = size / TS_FEC_PACKET_SIZE;



    if (!check_count)
        return 0;

    for (i = 0; i<check_count; i+=100) {
        int left = FFMIN(check_count - i, 100);
        int score = analyze(p->buf + TS_PACKET_SIZE *i, TS_PACKET_SIZE *left, TS_PACKET_SIZE , 1);
        int dvhs_score = analyze(p->buf + TS_DVHS_PACKET_SIZE*i, TS_DVHS_PACKET_SIZE*left, TS_DVHS_PACKET_SIZE, 1);
        int fec_score = analyze(p->buf + TS_FEC_PACKET_SIZE *i, TS_FEC_PACKET_SIZE *left, TS_FEC_PACKET_SIZE , 1);
        score = FFMAX3(score, dvhs_score, fec_score);
        sumscore += score;
        maxscore = FFMAX(maxscore, score);
    }

    sumscore = sumscore * 10 / check_count;
    maxscore = maxscore * 10 / 100;

    ff_dlog(0, "TS score: %d %d\n", sumscore, maxscore);

    if (check_count > 10 && sumscore > 6) {
        return AVPROBE_SCORE_MAX + sumscore - 10;
    } else if (check_count >= 10 && sumscore > 6) {
        return AVPROBE_SCORE_MAX/2 + sumscore - 10;
    } else if (check_count >= 10 && maxscore > 6) {
        return AVPROBE_SCORE_MAX/2 + sumscore - 10;
    } else if (sumscore > 6) {
        return 2;
    } else {
        return 0;
    }
}
