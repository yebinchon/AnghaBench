
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int intfstream_t ;


 int SEEK_SET ;
 scalar_t__ intfstream_read (int *,char*,int) ;
 int intfstream_seek (int *,unsigned int,int ) ;
 scalar_t__ string_is_equal (char*,char*) ;

int detect_serial_ascii_game(intfstream_t *fd, char *game_id)
{
   unsigned pos;
   int numberOfAscii = 0;
   bool rv = 0;

   for (pos = 0; pos < 10000; pos++)
   {
      intfstream_seek(fd, pos, SEEK_SET);
      if (intfstream_read(fd, game_id, 15) > 0)
      {
         unsigned i;
         game_id[15] = '\0';
         numberOfAscii = 0;


         if (string_is_equal(game_id, "WBFS")) {
            continue;
         }


         for (i = 0; i < 15; i++)
         {

            if (game_id[i] == 45 || (game_id[i] >= 48 && game_id[i] <= 57) || (game_id[i] >= 65 && game_id[i] <= 90))
               numberOfAscii++;
            else
               break;
         }


         if (numberOfAscii > 3 && numberOfAscii < 9)
         {

            game_id[numberOfAscii] = '\0';
            rv = 1;
            break;
         }
      }
   }

   return rv;
}
