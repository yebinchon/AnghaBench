
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVLFG ;


 int AVERROR (int ) ;
 int BIG_PRIME ;
 int ENOMEM ;
 int av_free (int*) ;
 int av_freep (int**) ;
 int* av_malloc_array (int,int) ;
 int avpriv_do_elbg (int*,int,int,int*,int,int,int*,int *) ;
 int memcpy (int*,int*,int) ;

int avpriv_init_elbg(int *points, int dim, int numpoints, int *codebook,
                 int numCB, int max_steps, int *closest_cb,
                 AVLFG *rand_state)
{
    int i, k, ret = 0;

    if (numpoints > 24*numCB) {


        int *temp_points = av_malloc_array(dim, (numpoints/8)*sizeof(int));
        if (!temp_points)
            return AVERROR(ENOMEM);
        for (i=0; i<numpoints/8; i++) {
            k = (i*BIG_PRIME) % numpoints;
            memcpy(temp_points + i*dim, points + k*dim, dim*sizeof(int));
        }

        ret = avpriv_init_elbg(temp_points, dim, numpoints / 8, codebook,
                               numCB, 2 * max_steps, closest_cb, rand_state);
        if (ret < 0) {
            av_freep(&temp_points);
            return ret;
        }
        ret = avpriv_do_elbg(temp_points, dim, numpoints / 8, codebook,
                             numCB, 2 * max_steps, closest_cb, rand_state);
        av_free(temp_points);

    } else
        for (i=0; i < numCB; i++)
            memcpy(codebook + i*dim, points + ((i*BIG_PRIME)%numpoints)*dim,
                   dim*sizeof(int));
    return ret;
}
