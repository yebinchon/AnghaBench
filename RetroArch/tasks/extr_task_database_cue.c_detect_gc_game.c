
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int intfstream_t ;


 int SEEK_SET ;
 scalar_t__ intfstream_read (int *,char*,int) ;
 int intfstream_seek (int *,int ,int ) ;

int detect_gc_game(intfstream_t *fd, char *game_id)
{
   bool rv = 0;

   intfstream_seek(fd, 0, SEEK_SET);

   if (intfstream_read(fd, game_id, 6) > 0)
   {
      game_id[6] = '\0';
      rv = 1;
   }

   return rv;
}
