
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wavefront_model_loading_s {int dummy; } ;
typedef int WAVEFRONT_MODEL_T ;
typedef int FILE ;


 int MAX_VERTICES ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fread (struct wavefront_model_loading_s*,int,int const,int *) ;

__attribute__((used)) static int load_wavefront_dat(const char *modelname, WAVEFRONT_MODEL_T *model, struct wavefront_model_loading_s *m)
{
   FILE *fp;
   int s;
   const int size = sizeof *m +
      sizeof(float)*(3+2+3)*MAX_VERTICES +
      sizeof(unsigned short)*3*MAX_VERTICES;

   fp = fopen(modelname, "r");
   if (!fp) return -1;
   s = fread(m, 1, size, fp);
   if (s < 0) return -1;
   fclose(fp);
   return 0;
}
