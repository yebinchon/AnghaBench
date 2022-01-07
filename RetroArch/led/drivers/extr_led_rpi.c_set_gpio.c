
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int FILE ;


 int RARCH_WARN (char*,int) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,int) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int set_gpio(int gpio, int value)
{
   FILE *fp;
   char buf[256];
   snprintf(buf, sizeof(buf), "/sys/class/gpio/gpio%d/value", gpio);
   fp = fopen(buf, "w");

   if(!fp)
   {
      RARCH_WARN("[LED]: failed to set GPIO %d\n", gpio);
      return -1;
   }

   fprintf(fp, "%d\n", value ? 1 : 0);
   fclose(fp);
   return 1;
}
