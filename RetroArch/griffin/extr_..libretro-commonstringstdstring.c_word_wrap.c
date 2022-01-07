
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strlen (char const*) ;
 char* utf8skip (char const*,int) ;

char *word_wrap(char* buffer, const char *string, int line_width, bool unicode, unsigned max_lines)
{
   unsigned i = 0;
   unsigned len = (unsigned)strlen(string);
   unsigned lines = 1;

   while (i < len)
   {
      unsigned counter;
      int pos = (int)(&buffer[i] - buffer);


      for (counter = 1; counter <= (unsigned)line_width; counter++)
      {
         const char *character;
         unsigned char_len;
         unsigned j = i;


         if (i == len)
         {
            buffer[i] = 0;
            return buffer;
         }

         character = utf8skip(&string[i], 1);
         char_len = (unsigned)(character - &string[i]);

         if (!unicode)
            counter += char_len - 1;

         do
         {
            buffer[i] = string[i];
            char_len--;
            i++;
         } while(char_len);



         if (buffer[j] == '\n')
         {
            lines++;
            counter = 1;
         }
      }


      if (string[i] == ' ')
      {
         if ((max_lines == 0 || lines < max_lines))
         {
            buffer[i] = '\n';
            i++;
            lines++;
         }
      }
      else
      {
         int k;


         for (k = i; k > 0; k--)
         {
            if (string[k] != ' ' || (max_lines != 0 && lines >= max_lines))
               continue;

            buffer[k] = '\n';

            i = k + 1;
            lines++;
            break;
         }

         if (&buffer[i] - buffer == pos)
            return buffer;
      }
   }

   buffer[i] = 0;

   return buffer;
}
