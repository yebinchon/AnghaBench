
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ malloc (size_t) ;
 int memcpy (char*,char const*,size_t) ;
 int strcpy (char*,char const*) ;
 char* strdup (char const*) ;
 size_t strlen (char const*) ;
 char* strstr (char const*,char const*) ;

char *string_replace_substring(const char *in,
      const char *pattern, const char *replacement)
{
   size_t numhits, pattern_len, replacement_len, outlen;
   const char *inat = ((void*)0);
   const char *inprev = ((void*)0);
   char *out = ((void*)0);
   char *outat = ((void*)0);



   if (!pattern || !replacement)
      return strdup(in);

   pattern_len = strlen(pattern);
   replacement_len = strlen(replacement);
   numhits = 0;
   inat = in;

   while ((inat = strstr(inat, pattern)))
   {
      inat += pattern_len;
      numhits++;
   }

   outlen = strlen(in) - pattern_len*numhits + replacement_len*numhits;
   out = (char *)malloc(outlen+1);

   if (!out)
      return ((void*)0);

   outat = out;
   inat = in;
   inprev = in;

   while ((inat = strstr(inat, pattern)))
   {
      memcpy(outat, inprev, inat-inprev);
      outat += inat-inprev;
      memcpy(outat, replacement, replacement_len);
      outat += replacement_len;
      inat += pattern_len;
      inprev = inat;
   }
   strcpy(outat, inprev);

   return out;
}
