
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int FILE ;


 int RARCH_WARN (char*,int) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,...) ;
 int snprintf (char*,int,char*,...) ;

__attribute__((used)) static int setup_gpio(int gpio)
{
   FILE *fp;
   char buf[256];
   snprintf(buf, sizeof(buf), "/sys/class/gpio/gpio%d/direction", gpio);
   fp = fopen(buf, "w");

   if(!fp)
   {
      snprintf(buf, sizeof(buf), "/sys/class/gpio/export");
      fp = fopen(buf, "w");

      if(!fp)
      {
         RARCH_WARN("[LED]: failed to export GPIO %d\n", gpio);
         return -1;
      }

      fprintf(fp,"%d\n", gpio);
      fclose(fp);

      snprintf(buf, sizeof(buf), "/sys/class/gpio/gpio%d/direction", gpio);
      fp = fopen(buf, "w");
   }

   if(!fp)
   {
      RARCH_WARN("[LED]: failed to set direction GPIO %d\n",
            gpio);
      return -1;
   }

   fprintf(fp, "out\n");
   fclose(fp);
   return 1;
}
