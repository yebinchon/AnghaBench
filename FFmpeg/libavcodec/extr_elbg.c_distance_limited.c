
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INT_MAX ;

__attribute__((used)) static inline int distance_limited(int *a, int *b, int dim, int limit)
{
    int i, dist=0;
    for (i=0; i<dim; i++) {
        dist += (a[i] - b[i])*(a[i] - b[i]);
        if (dist > limit)
            return INT_MAX;
    }

    return dist;
}
