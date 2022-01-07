
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int envelope; } ;
typedef TYPE_1__ WaveformContext ;
typedef int AVFrame ;


 int envelope_instant16 (TYPE_1__*,int *,int,int,int) ;
 int envelope_peak16 (TYPE_1__*,int *,int,int,int) ;

__attribute__((used)) static void envelope16(WaveformContext *s, AVFrame *out, int plane, int component, int offset)
{
    if (s->envelope == 0) {
        return;
    } else if (s->envelope == 1) {
        envelope_instant16(s, out, plane, component, offset);
    } else {
        envelope_peak16(s, out, plane, component, offset);
    }
}
