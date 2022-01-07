
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ROUNDED_DIV (int,int) ;
 int memcpy (int*,int*,int) ;

__attribute__((used)) static inline void vect_division(int *res, int *vect, int div, int dim)
{
    int i;
    if (div > 1)
        for (i=0; i<dim; i++)
            res[i] = ROUNDED_DIV(vect[i],div);
    else if (res != vect)
        memcpy(res, vect, dim*sizeof(int));

}
