
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int envelope; } ;
typedef TYPE_1__ VectorscopeContext ;
typedef int AVFrame ;


 int envelope_instant16 (TYPE_1__*,int *) ;
 int envelope_peak16 (TYPE_1__*,int *) ;

__attribute__((used)) static void envelope16(VectorscopeContext *s, AVFrame *out)
{
    if (!s->envelope) {
        return;
    } else if (s->envelope == 1) {
        envelope_instant16(s, out);
    } else {
        envelope_peak16(s, out);
    }
}
