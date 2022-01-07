
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pixel_t ;
struct TYPE_3__ {int type; char* message; } ;
typedef TYPE_1__ OSDMessage_struct ;



 int TitanWriteColor (int *,int,int,int,int) ;
 char** font ;

void OSDSoftDisplayMessage(OSDMessage_struct * message, pixel_t * buffer, int w, int h)
{
   int i;
   char * c;
   int loffset = 0;

   if (buffer == ((void*)0)) return;

   switch (message->type)
   {
      case 128:
         loffset = h - 48;
         break;
   }

   c = message->message;
   i = 0;
   while(*c)
   {
      if (*c >= 47)
      {
         int first_line, l, p;
         first_line = *c * 10;
         for(l = 0;l < 10;l++)
         {
            for(p = 0;p < 9;p++)
            {
               if (font[first_line + l][p] == '.')
                  TitanWriteColor(buffer, w, (i * 8) + 20 + p, loffset + l + 20, 0xFF000000);
               else if (font[first_line + l][p] == '#')
                  TitanWriteColor(buffer, w, (i * 8) + 20 + p, loffset + l + 20, 0xFFFFFFFF);
            }
         }
      }
      c++;
      i++;
   }
}
