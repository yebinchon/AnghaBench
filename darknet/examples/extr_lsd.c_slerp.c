
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float acos (int ) ;
 int axpy_cpu (int,float,float*,int,float*,int) ;
 int dot_cpu (int,float*,int,float*,int) ;
 int fill_cpu (int,int ,float*,int) ;
 float mag_array (float*,int) ;
 int scale_array (float*,int,int) ;
 float sin (float) ;

void slerp(float *start, float *end, float s, int n, float *out)
{
    float omega = acos(dot_cpu(n, start, 1, end, 1));
    float so = sin(omega);
    fill_cpu(n, 0, out, 1);
    axpy_cpu(n, sin((1-s)*omega)/so, start, 1, out, 1);
    axpy_cpu(n, sin(s*omega)/so, end, 1, out, 1);

    float mag = mag_array(out, n);
    scale_array(out, n, 1./mag);
}
