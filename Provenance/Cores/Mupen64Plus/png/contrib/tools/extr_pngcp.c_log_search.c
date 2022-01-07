
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct display {unsigned int nsp; int best_size; } ;


 int MAX_SIZE ;
 int print_search_results (struct display*) ;

__attribute__((used)) static void
log_search(struct display *dp, unsigned int log_depth)
{

   if (dp->nsp <= log_depth)
   {
      print_search_results(dp);

      dp->best_size = MAX_SIZE;
   }
}
