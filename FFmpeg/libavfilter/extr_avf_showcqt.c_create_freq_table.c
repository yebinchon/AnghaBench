
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double* av_malloc_array (int,int) ;
 double exp (double) ;
 double log (double) ;

__attribute__((used)) static double *create_freq_table(double base, double end, int n)
{
    double log_base, log_end;
    double rcp_n = 1.0 / n;
    double *freq;
    int x;

    freq = av_malloc_array(n, sizeof(*freq));
    if (!freq)
        return ((void*)0);

    log_base = log(base);
    log_end = log(end);
    for (x = 0; x < n; x++) {
        double log_freq = log_base + (x + 0.5) * (log_end - log_base) * rcp_n;
        freq[x] = exp(log_freq);
    }
    return freq;
}
