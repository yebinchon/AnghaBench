
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;
typedef int u32 ;
typedef char u16 ;
typedef int result_struct ;


 int MappedMemoryAddMatch (int,char,int,int *,int*) ;
 char MappedMemoryReadByte (int) ;
 char MappedMemoryReadWord (int) ;



 int free (char*) ;
 scalar_t__ malloc (int) ;
 int strcpy (char*,char const*) ;
 char* strdup (char const*) ;
 int strlen (char const*) ;
 char* strtok (char*,char*) ;
 int strtoul (char*,int *,int ) ;

__attribute__((used)) static int SearchString(u32 startaddr, u32 endaddr, int searchtype,
                        const char *searchstr, result_struct *results,
                        u32 *maxresults)
{
   u8 *buf=((void*)0);
   u32 *buf32=((void*)0);
   u32 buflen=0;
   u32 counter;
   u32 addr;
   u32 numresults=0;

   buflen=(u32)strlen(searchstr);

   if ((buf32=(u32 *)malloc(buflen*sizeof(u32))) == ((void*)0))
      return 0;

   buf = (u8 *)buf32;


   switch (searchtype & 0x70)
   {
      case 128:
         strcpy((char *)buf, searchstr);
         break;
      case 129:
      case 130:
      {
         char *text;
         char *searchtext=strdup(searchstr);


         buflen = 0;
         for (text=strtok((char *)searchtext, " ,"); text != ((void*)0); text=strtok(((void*)0), " ,"))
         {
            buf32[buflen] = strtoul(text, ((void*)0), 0);
            buflen++;
         }
         free(searchtext);

         break;
      }
   }

   addr = startaddr;
   counter = 0;

   for (;;)
   {

      switch (searchtype & 0x70)
      {
         case 128:
         {
            u8 val = MappedMemoryReadByte(addr);
            addr++;

            if (val == buf[counter])
            {
               counter++;
               if (counter == buflen)
                  MappedMemoryAddMatch(addr-buflen, val, searchtype, results, &numresults);
            }
            else
               counter = 0;
            break;
         }
         case 129:
         {
            int diff;
            u32 j;
            u8 val2;
            u8 val = MappedMemoryReadByte(addr);

            for (j = 1; j < buflen; j++)
            {

               val2 = MappedMemoryReadByte(addr+j);


               diff = (int)val2 - (int)val;


               if (((int)buf32[j] - (int)buf32[j-1]) != diff)
                  break;

               if (j == (buflen - 1))
                  MappedMemoryAddMatch(addr, val, searchtype, results, &numresults);

               val = val2;
            }

            addr++;

            break;
         }
         case 130:
         {
            int diff;
            u32 j;
            u16 val2;
            u16 val = MappedMemoryReadWord(addr);

            for (j = 1; j < buflen; j++)
            {

               val2 = MappedMemoryReadWord(addr+(j*2));


               diff = (int)val2 - (int)val;


               if (((int)buf32[j] - (int)buf32[j-1]) != diff)
                  break;

               if (j == (buflen - 1))
                  MappedMemoryAddMatch(addr, val, searchtype, results, &numresults);

               val = val2;
            }

            addr+=2;
            break;
         }
      }

      if (addr > endaddr || numresults >= maxresults[0])
         break;
   }

   free(buf);
   maxresults[0] = numresults;
   return 1;
}
