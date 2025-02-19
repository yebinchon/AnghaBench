
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double DBL_MIN ;
 double FFMAX (double,double) ;
 double av_clipd (double,double,double) ;
 double log (double) ;
 double pow (double,int) ;
 scalar_t__ round (double) ;

__attribute__((used)) static int ransac_update_num_iters(double confidence, double num_outliers, int max_iters)
{
    double num, denom;

    confidence = av_clipd(confidence, 0.0, 1.0);
    num_outliers = av_clipd(num_outliers, 0.0, 1.0);


    num = FFMAX(1.0 - confidence, DBL_MIN);
    denom = 1.0 - pow(1.0 - num_outliers, 3);
    if (denom < DBL_MIN) {
        return 0;
    }

    num = log(num);
    denom = log(denom);

    return denom >= 0 || -num >= max_iters * (-denom) ? max_iters : (int)round(num / denom);
}
