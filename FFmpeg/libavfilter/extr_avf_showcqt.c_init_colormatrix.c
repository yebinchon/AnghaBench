
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int csp; double** cmatrix; int ctx; } ;
typedef TYPE_1__ ShowCQTContext ;
 int AV_LOG_WARNING ;
 int av_log (int ,int ,char*) ;

__attribute__((used)) static void init_colormatrix(ShowCQTContext *s)
{
    double kr, kg, kb;


    switch (s->csp) {
    default:
        av_log(s->ctx, AV_LOG_WARNING, "unsupported colorspace, setting it to unspecified.\n");
        s->csp = 128;
    case 128:
    case 133:
    case 130:
        kr = 0.299; kb = 0.114; break;
    case 132:
        kr = 0.2126; kb = 0.0722; break;
    case 131:
        kr = 0.30; kb = 0.11; break;
    case 129:
        kr = 0.212; kb = 0.087; break;
    case 134:
        kr = 0.2627; kb = 0.0593; break;
    }

    kg = 1.0 - kr - kb;
    s->cmatrix[0][0] = 219.0 * kr;
    s->cmatrix[0][1] = 219.0 * kg;
    s->cmatrix[0][2] = 219.0 * kb;
    s->cmatrix[1][0] = -112.0 * kr / (1.0 - kb);
    s->cmatrix[1][1] = -112.0 * kg / (1.0 - kb);
    s->cmatrix[1][2] = 112.0;
    s->cmatrix[2][0] = 112.0;
    s->cmatrix[2][1] = -112.0 * kg / (1.0 - kr);
    s->cmatrix[2][2] = -112.0 * kb / (1.0 - kr);
}
