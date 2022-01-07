
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int intfstream_t ;


 int detect_ps1_game_sub (int *,char*,int) ;

int detect_ps1_game(intfstream_t *fd, char *game_id)
{
   if (detect_ps1_game_sub(fd, game_id, 0))
      return 1;

   return detect_ps1_game_sub(fd, game_id, 1);
}
