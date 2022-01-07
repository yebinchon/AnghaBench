
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cqueue ;


 double DBL_MAX ;
 double FFMIN (double,int ) ;
 int cqueue_peek (int *,int) ;
 int cqueue_size (int *) ;

__attribute__((used)) static double minimum_filter(cqueue *q)
{
    double min = DBL_MAX;
    int i;

    for (i = 0; i < cqueue_size(q); i++) {
        min = FFMIN(min, cqueue_peek(q, i));
    }

    return min;
}
