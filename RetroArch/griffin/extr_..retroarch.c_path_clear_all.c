
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RARCH_PATH_BASENAME ;
 int RARCH_PATH_CONFIG ;
 int RARCH_PATH_CONFIG_APPEND ;
 int RARCH_PATH_CONTENT ;
 int RARCH_PATH_CORE_OPTIONS ;
 int path_clear (int ) ;

__attribute__((used)) static void path_clear_all(void)
{
   path_clear(RARCH_PATH_CONTENT);
   path_clear(RARCH_PATH_CONFIG);
   path_clear(RARCH_PATH_CONFIG_APPEND);
   path_clear(RARCH_PATH_CORE_OPTIONS);
   path_clear(RARCH_PATH_BASENAME);
}
