
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct global {int idat_cache; scalar_t__ status_code; int skip; scalar_t__ optimize_zlib; scalar_t__ idat_max; scalar_t__ verbose; scalar_t__ quiet; scalar_t__ warnings; scalar_t__ errors; } ;


 int CLEAR (struct global) ;
 int IDAT_list_init (int *) ;
 int SKIP_NONE ;

__attribute__((used)) static void
global_init(struct global *global)

{
   CLEAR(*global);


   global->errors = 0;
   global->warnings = 0;
   global->quiet = 0;
   global->verbose = 0;
   global->idat_max = 0;
   global->optimize_zlib = 0;
   global->skip = SKIP_NONE;
   global->status_code = 0;

   IDAT_list_init(&global->idat_cache);
}
