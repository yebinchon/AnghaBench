
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef double qev_t ;
struct TYPE_3__ {int qebeg; int qeend; double ovola; double* qev; scalar_t__* qet; scalar_t__ curtick; } ;
typedef TYPE_1__ PokeyState ;


 int filter_size ;
 double interp_filter_data (scalar_t__,double) ;

__attribute__((used)) static double interp_read_resam_all(PokeyState* ps, double frac)
{
    int i = ps->qebeg;
    qev_t avol,bvol;
    double sum;

    if (ps->qebeg == ps->qeend)
    {
        return ps->ovola * interp_filter_data(0,frac);
    }

    avol = ps->ovola;
    sum = 0;


    if (ps->qeend < ps->qebeg)
    {
        while (i < filter_size)
        {
            bvol = ps->qev[i];
            sum += (avol-bvol)*interp_filter_data(ps->curtick - ps->qet[i],frac);
            avol = bvol;
            ++i;
        }
        i = 0;
    }


    while (i < ps->qeend)
    {
        bvol = ps->qev[i];
        sum += (avol-bvol)*interp_filter_data(ps->curtick - ps->qet[i],frac);
        avol = bvol;
        ++i;
    }

    sum += avol*interp_filter_data(0,frac);

    return sum;
}
