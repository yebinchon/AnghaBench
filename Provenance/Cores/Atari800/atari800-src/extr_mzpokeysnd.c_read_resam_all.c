
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef double qev_t ;
struct TYPE_3__ {int qebeg; int qeend; double ovola; double* qev; size_t curtick; size_t* qet; } ;
typedef TYPE_1__ PokeyState ;


 double* filter_data ;
 int filter_size ;

__attribute__((used)) static double read_resam_all(PokeyState* ps)
{
    int i = ps->qebeg;
    qev_t avol,bvol;
    double sum;

    if(ps->qebeg == ps->qeend)
    {
        return ps->ovola * filter_data[0];
    }

    avol = ps->ovola;
    sum = 0;


    if(ps->qeend < ps->qebeg)
    {
        while(i<filter_size)
        {
            bvol = ps->qev[i];
            sum += (avol-bvol)*filter_data[ps->curtick - ps->qet[i]];
            avol = bvol;
            ++i;
        }
        i=0;
    }


    while(i<ps->qeend)
    {
        bvol = ps->qev[i];
        sum += (avol-bvol)*filter_data[ps->curtick - ps->qet[i]];
        avol = bvol;
        ++i;
    }

    sum += avol*filter_data[0];
    return sum;
}
