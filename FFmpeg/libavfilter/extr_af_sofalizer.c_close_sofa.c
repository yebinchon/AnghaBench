
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MySofa {int fir; int * hrtf; int * lookup; int * neighborhood; } ;


 int av_freep (int *) ;
 int mysofa_free (int *) ;
 int mysofa_lookup_free (int *) ;
 int mysofa_neighborhood_free (int *) ;

__attribute__((used)) static int close_sofa(struct MySofa *sofa)
{
    if (sofa->neighborhood)
        mysofa_neighborhood_free(sofa->neighborhood);
    sofa->neighborhood = ((void*)0);
    if (sofa->lookup)
        mysofa_lookup_free(sofa->lookup);
    sofa->lookup = ((void*)0);
    if (sofa->hrtf)
        mysofa_free(sofa->hrtf);
    sofa->hrtf = ((void*)0);
    av_freep(&sofa->fir);

    return 0;
}
