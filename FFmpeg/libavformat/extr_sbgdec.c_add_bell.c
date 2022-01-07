
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ws_intervals {int dummy; } ;
struct sbg_script {int sample_rate; } ;
typedef int int64_t ;
typedef int int32_t ;


 int FFMIN (int,int) ;
 int FF_ARRAY_ELEMS (int**) ;
 int WS_SINE ;
 int add_interval (struct ws_intervals*,int ,int,int,int,int,int,int,int,int) ;

__attribute__((used)) static int add_bell(struct ws_intervals *inter, struct sbg_script *s,
                    int64_t ts1, int64_t ts2, int32_t f, int32_t a)
{


    int32_t cpoints[][2] = {
        { 2, a },
        { 4, a - a / 4 },
        { 8, a / 2 },
        { 16, a / 4 },
        { 25, a / 10 },
        { 50, a / 80 },
        { 75, 0 },
    };
    int i, r;
    int64_t dt = s->sample_rate / 20, ts3 = ts1, ts4;
    for (i = 0; i < FF_ARRAY_ELEMS(cpoints); i++) {
        ts4 = FFMIN(ts2, ts1 + cpoints[i][0] * dt);
        r = add_interval(inter, WS_SINE, 3, -1,
                         ts3, f, a, ts4, f, cpoints[i][1]);
        if (r < 0)
            return r;
        ts3 = ts4;
        a = cpoints[i][1];
    }
    return 0;
}
