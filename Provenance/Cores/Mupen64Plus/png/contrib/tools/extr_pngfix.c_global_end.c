
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct global {int status_code; int idat_cache; } ;


 int CLEAR (struct global) ;
 int IDAT_list_end (int *) ;

__attribute__((used)) static int
global_end(struct global *global)
{

   int rc;

   IDAT_list_end(&global->idat_cache);
   rc = global->status_code;
   CLEAR(*global);
   return rc;
}
