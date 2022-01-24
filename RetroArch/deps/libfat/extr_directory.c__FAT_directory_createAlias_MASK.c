#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wint_t ;
typedef  scalar_t__ wchar_t ;
typedef  int /*<<< orphan*/  ps ;
struct TYPE_4__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ mbstate_t ;

/* Variables and functions */
 int EOF ; 
 char const* ILLEGAL_ALIAS_CHARACTERS ; 
 int MAX_ALIAS_EXT_LENGTH ; 
 scalar_t__ NAME_MAX ; 
 int FUNC0 (scalar_t__*,char const*,scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 char const* FUNC2 (char const*,int) ; 
 char* FUNC3 (char const*,char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6 (char* alias, const char* lfn)
{
   bool lossyConversion = false;	/* Set when the alias had to be modified to be valid */
   int lfnPos = 0;
   int aliasPos = 0;
   wchar_t lfnChar;
   int oemChar;
   mbstate_t ps = {0};
   int bytesUsed = 0;
   const char* lfnExt;
   int aliasExtLen;

   /* Strip leading periods */
   while (lfn[lfnPos] == '.')
   {
      lfnPos ++;
      lossyConversion = true;
   }

   /* Primary portion of alias */
   while (aliasPos < 8 && lfn[lfnPos] != '.' && lfn[lfnPos] != '\0')
   {
      bytesUsed = FUNC0(&lfnChar, lfn + lfnPos, NAME_MAX - lfnPos, &ps);
      if (bytesUsed < 0)
         return -1;

      oemChar = FUNC5(FUNC4((wint_t)lfnChar));

      /* Case of letter was changed */
      if (FUNC5((wint_t)lfnChar) != oemChar)
         lossyConversion = true;

      if (oemChar == ' ')
      {
         /* Skip spaces in filename */
         lossyConversion = true;
         lfnPos += bytesUsed;
         continue;
      }

      if (oemChar == EOF)
      {
         oemChar = '_';		/* Replace unconvertable characters with underscores */
         lossyConversion = true;
      }

      if (FUNC2 (ILLEGAL_ALIAS_CHARACTERS, oemChar) != NULL)
      {
         /* Invalid Alias character */
         oemChar = '_';		/* Replace illegal characters with underscores */
         lossyConversion = true;
      }

      alias[aliasPos] = (char)oemChar;
      aliasPos++;
      lfnPos += bytesUsed;
   }

   /* Name was more than 8 characters long */
   if (lfn[lfnPos] != '.' && lfn[lfnPos] != '\0')
      lossyConversion = true;

   /* Alias extension */
   lfnExt = FUNC3 (lfn, '.');
   /* More than one period in name */
   if (lfnExt != NULL && lfnExt != FUNC2 (lfn, '.'))
      lossyConversion = true;

   if (lfnExt != NULL && lfnExt[1] != '\0')
   {
      lfnExt++;
      alias[aliasPos] = '.';
      aliasPos++;
      FUNC1 (&ps, 0, sizeof(ps));
      for (aliasExtLen = 0; aliasExtLen < MAX_ALIAS_EXT_LENGTH && *lfnExt != '\0'; aliasExtLen++)
      {
         bytesUsed = FUNC0(&lfnChar, lfnExt, NAME_MAX - lfnPos, &ps);
         if (bytesUsed < 0)
            return -1;
         oemChar = FUNC5(FUNC4((wint_t)lfnChar));

         /* Case of letter was changed */
         if (FUNC5((wint_t)lfnChar) != oemChar)
            lossyConversion = true;
         if (oemChar == ' ')
         {
            /* Skip spaces in alias */
            lossyConversion = true;
            lfnExt += bytesUsed;
            continue;
         }
         if (oemChar == EOF)
         {
            oemChar = '_';		/* Replace unconvertable characters with underscores */
            lossyConversion = true;
         }
         if (FUNC2 (ILLEGAL_ALIAS_CHARACTERS, oemChar) != NULL)
         {
            /* Invalid Alias character */
            oemChar = '_';		/* Replace illegal characters with underscores */
            lossyConversion = true;
         }

         alias[aliasPos] = (char)oemChar;
         aliasPos++;
         lfnExt += bytesUsed;
      }
      /* Extension was more than 3 characters long */
      if (*lfnExt != '\0')
         lossyConversion = true;
   }

   alias[aliasPos] = '\0';
   if (lossyConversion)
      return aliasPos;
   return 0;
}