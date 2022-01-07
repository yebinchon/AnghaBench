
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wint_t ;
typedef scalar_t__ wchar_t ;
typedef int ps ;
struct TYPE_4__ {int member_0; } ;
typedef TYPE_1__ mbstate_t ;


 int EOF ;
 char const* ILLEGAL_ALIAS_CHARACTERS ;
 int MAX_ALIAS_EXT_LENGTH ;
 scalar_t__ NAME_MAX ;
 int mbrtowc (scalar_t__*,char const*,scalar_t__,TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;
 char const* strchr (char const*,int) ;
 char* strrchr (char const*,char) ;
 int towupper (int ) ;
 int wctob (int ) ;

__attribute__((used)) static int _FAT_directory_createAlias (char* alias, const char* lfn)
{
   bool lossyConversion = 0;
   int lfnPos = 0;
   int aliasPos = 0;
   wchar_t lfnChar;
   int oemChar;
   mbstate_t ps = {0};
   int bytesUsed = 0;
   const char* lfnExt;
   int aliasExtLen;


   while (lfn[lfnPos] == '.')
   {
      lfnPos ++;
      lossyConversion = 1;
   }


   while (aliasPos < 8 && lfn[lfnPos] != '.' && lfn[lfnPos] != '\0')
   {
      bytesUsed = mbrtowc(&lfnChar, lfn + lfnPos, NAME_MAX - lfnPos, &ps);
      if (bytesUsed < 0)
         return -1;

      oemChar = wctob(towupper((wint_t)lfnChar));


      if (wctob((wint_t)lfnChar) != oemChar)
         lossyConversion = 1;

      if (oemChar == ' ')
      {

         lossyConversion = 1;
         lfnPos += bytesUsed;
         continue;
      }

      if (oemChar == EOF)
      {
         oemChar = '_';
         lossyConversion = 1;
      }

      if (strchr (ILLEGAL_ALIAS_CHARACTERS, oemChar) != ((void*)0))
      {

         oemChar = '_';
         lossyConversion = 1;
      }

      alias[aliasPos] = (char)oemChar;
      aliasPos++;
      lfnPos += bytesUsed;
   }


   if (lfn[lfnPos] != '.' && lfn[lfnPos] != '\0')
      lossyConversion = 1;


   lfnExt = strrchr (lfn, '.');

   if (lfnExt != ((void*)0) && lfnExt != strchr (lfn, '.'))
      lossyConversion = 1;

   if (lfnExt != ((void*)0) && lfnExt[1] != '\0')
   {
      lfnExt++;
      alias[aliasPos] = '.';
      aliasPos++;
      memset (&ps, 0, sizeof(ps));
      for (aliasExtLen = 0; aliasExtLen < MAX_ALIAS_EXT_LENGTH && *lfnExt != '\0'; aliasExtLen++)
      {
         bytesUsed = mbrtowc(&lfnChar, lfnExt, NAME_MAX - lfnPos, &ps);
         if (bytesUsed < 0)
            return -1;
         oemChar = wctob(towupper((wint_t)lfnChar));


         if (wctob((wint_t)lfnChar) != oemChar)
            lossyConversion = 1;
         if (oemChar == ' ')
         {

            lossyConversion = 1;
            lfnExt += bytesUsed;
            continue;
         }
         if (oemChar == EOF)
         {
            oemChar = '_';
            lossyConversion = 1;
         }
         if (strchr (ILLEGAL_ALIAS_CHARACTERS, oemChar) != ((void*)0))
         {

            oemChar = '_';
            lossyConversion = 1;
         }

         alias[aliasPos] = (char)oemChar;
         aliasPos++;
         lfnExt += bytesUsed;
      }

      if (*lfnExt != '\0')
         lossyConversion = 1;
   }

   alias[aliasPos] = '\0';
   if (lossyConversion)
      return aliasPos;
   return 0;
}
