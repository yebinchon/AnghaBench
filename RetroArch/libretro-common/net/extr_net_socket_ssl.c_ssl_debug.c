
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fflush (int *) ;
 int mbedtls_fprintf (int *,char*,char const*,int,char const*) ;

__attribute__((used)) static void ssl_debug(void *ctx, int level,
                      const char *file, int line,
                      const char *str)
{
   ((void) level);

   mbedtls_fprintf((FILE*)ctx, "%s:%04d: %s", file, line, str);
   fflush((FILE*)ctx);
}
