
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Image ;
typedef int FILE ;


 int errno ;
 int fclose (int *) ;
 int logerror (int *,char const*,char const*,int ) ;
 int strerror (int) ;

__attribute__((used)) static int
logclose(Image *image, FILE *f, const char *name, const char *operation)
{
   int e = errno;

   fclose(f);
   return logerror(image, name, operation, strerror(e));
}
