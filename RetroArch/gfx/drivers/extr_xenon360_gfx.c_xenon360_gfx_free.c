
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gl_t ;


 int free (int *) ;

__attribute__((used)) static void xenon360_gfx_free(void *data)
{
   gl_t *vid = data;
   if (!vid)
      return;

   free(vid);
}
