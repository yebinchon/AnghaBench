
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double const log (double) ;
 double sqrt (double) ;

__attribute__((used)) static double avpriv_trc_arib_std_b67(double Lc) {



    const double a = 0.17883277;
    const double b = 0.28466892;
    const double c = 0.55991073;
    return (0.0 > Lc) ? 0.0 :
        (Lc <= 1.0 / 12.0 ? sqrt(3.0 * Lc) : a * log(12.0 * Lc - b) + c);
}
