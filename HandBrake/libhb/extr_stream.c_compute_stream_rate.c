
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long long uint64_t ;
struct pts_pos {scalar_t__ pts; scalar_t__ pos; } ;
typedef int rates ;


 int NDURSAMPLES ;
 int dur_compare ;
 int qsort (double*,int,int,int ) ;

__attribute__((used)) static double compute_stream_rate( struct pts_pos *pp, int n )
{
    int i, j;
    double rates[NDURSAMPLES * NDURSAMPLES / 8];
    double *rp = rates;


    *rp = 0;
    for ( i = 0; i < n-1; ++i )
    {
        int ns = i + ( n >> 3 );
        if ( ns > n )
            ns = n;
        for ( j = i+1; j < ns; ++j )
        {
            if ( (uint64_t)(pp[j].pts - pp[i].pts) > 90000LL*3600*6 )
                break;
            if ( pp[j].pts != pp[i].pts && pp[j].pos > pp[i].pos )
            {
                *rp = ((double)( pp[j].pts - pp[i].pts )) /
                      ((double)( pp[j].pos - pp[i].pos ));
                ++rp;
            }
        }
    }


    int nrates = rp - rates;
    qsort( rates, nrates, sizeof (rates[0] ), dur_compare );
    return rates[nrates >> 1];
}
