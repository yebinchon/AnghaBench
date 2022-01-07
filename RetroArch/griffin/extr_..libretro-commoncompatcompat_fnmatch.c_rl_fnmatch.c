
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FNM_NOMATCH ;

int rl_fnmatch(const char *pattern, const char *string, int flags)
{
   int rv;
   const char *c = ((void*)0);
   int charmatch = 0;

   for (c = pattern; *c != '\0'; c++)
   {

      if ((*c != '*') && (*string == '\0'))
         return FNM_NOMATCH;

      switch (*c)
      {

         case '*':



            do {
               c++;
               if (*c == '\0')
                  return 0;
            } while (*c == '*');



            do {






               if (*string == '\0')
                  return FNM_NOMATCH;

               rv = rl_fnmatch(c, string, flags);
               string++;
            } while (rv != 0);

            return 0;

         case '[':
            charmatch = 0;
            for (c++; *c != ']'; c++)
            {

               if (*c == '\0')
                  return FNM_NOMATCH;


               if (charmatch)
                  continue;

               if (*c == *string)
                  charmatch = 1;
            }


            if (!charmatch)
               return FNM_NOMATCH;

            string++;
            break;

         case '?':
            string++;
            break;

         case '\\':
            c++;




            if (*c == '\0')
               return FNM_NOMATCH;
         default:
            if (*c != *string)
               return FNM_NOMATCH;
            string++;
      }
   }


   if (*string == '\0')
      return 0;
   return FNM_NOMATCH;
}
