
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double modf (double,double*) ;
 int snprintf (char*,int,char*,int,int,int) ;

int deg_to_str(double f, char *buf, int buf_size)
{
   double fsec, fdeg, fmin;

   if (buf_size <= 0)
      return -1;
   *buf = 0;
   if (f < 0 || f > 360)
      return -1;

   fmin = modf(f, &fdeg);
   fsec = modf(fmin * 60, &fmin);
   fsec *= 60;
   snprintf(buf, buf_size, "%03d/1,%02d/1,%05d/1000", (int)fdeg, (int)fmin, (int)(fsec*1000));

   return 0;
}
