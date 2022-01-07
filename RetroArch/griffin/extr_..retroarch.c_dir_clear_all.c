
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RARCH_DIR_SAVEFILE ;
 int RARCH_DIR_SAVESTATE ;
 int RARCH_DIR_SYSTEM ;
 int dir_clear (int ) ;

__attribute__((used)) static void dir_clear_all(void)
{
   dir_clear(RARCH_DIR_SYSTEM);
   dir_clear(RARCH_DIR_SAVEFILE);
   dir_clear(RARCH_DIR_SAVESTATE);
}
