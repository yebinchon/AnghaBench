
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum rarch_movie_type { ____Placeholder_rarch_movie_type } rarch_movie_type ;
typedef int bsv_movie_t ;


 int * bsv_movie_init_internal (char const*,int) ;
 int * bsv_movie_state_handle ;

__attribute__((used)) static bool bsv_movie_init_handle(const char *path,
      enum rarch_movie_type type)
{
   bsv_movie_t *state = bsv_movie_init_internal(path, type);
   if (!state)
      return 0;

   bsv_movie_state_handle = state;
   return 1;
}
