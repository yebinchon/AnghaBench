
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int SEEK_END ;
 int SEEK_SET ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fputc (char,int *) ;
 int fread (char*,int,size_t,int *) ;
 int free (char*) ;
 int fseek (int *,int ,int ) ;
 size_t ftell (int *) ;
 int fwrite (char const*,int,int ,int *) ;
 scalar_t__ isspace (char) ;
 char* malloc (size_t) ;
 int printf (char*,...) ;
 int strcmp (char const*,char*) ;
 int strlen (char const*) ;
 int strncmp (char*,char*,int) ;
 char* strstr (char const*,char*) ;

int main(int argc, const char** argv)
{

   const char* slang = ((void*)0);
   const char* vs_asm = ((void*)0);
   const char* ps_asm = ((void*)0);
   const char* vs_out = ((void*)0);
   const char* ps_out = ((void*)0);

   for(int i = 1; i < argc - 1; i+=2)
   {
      if(!strcmp(argv[i], "--slang"))
         slang = argv[i + 1];
      else if(!strcmp(argv[i], "--vsource"))
         vs_asm = argv[i + 1];
      else if(!strcmp(argv[i], "--psource"))
         ps_asm = argv[i + 1];
      else if(!strcmp(argv[i], "--vsh"))
         vs_out = argv[i + 1];
      else if(!strcmp(argv[i], "--psh"))
         ps_out = argv[i + 1];
   }

   if(!slang || !vs_out || !ps_out || (!vs_asm && ps_asm) || (vs_asm && !ps_asm))
   {
      printf("Usage :\n");
      printf("%s --slang <slang input> --vsh <vsh output> --psh <psh output>\n", argv[0]);
      printf("%s --slang <slang input> --vsource <vsh asm input> --psource <psh asm input> --vsh <vsh output> --psh <psh output>\n", argv[0]);
   }

   char* slang_buffer;
   size_t slang_filesize;
   {
      FILE* slang_file = fopen(slang, "rb");
      fseek(slang_file, 0, SEEK_END);
      slang_filesize = ftell(slang_file);
      fseek(slang_file, 0, SEEK_SET);
      slang_buffer = malloc(slang_filesize + 1);
      fread(slang_buffer, 1, slang_filesize, slang_file);
      fclose(slang_file);
   }

   slang_buffer[slang_filesize] = '\0';

   FILE* vs_out_fp = fopen(vs_out, "wb");
   FILE* ps_out_fp = fopen(ps_out, "wb");

   const char* line = "#version 150\n";
   fwrite(line, 1, strlen(line),vs_out_fp);
   fwrite(line, 1, strlen(line),ps_out_fp);

   char* next = slang_buffer;

   bool vson = 1;
   bool pson = 1;

   while(*next)
   {
      const char* line = next;

      while(*next && *next != '\n' && *next != '\r')
         next++;

      if (*next == '\r')
         *next++ = '\0';

      *next++ = '\0';




      if(strstr(line, "#version"))
         continue;

      if(strstr(line, "#pragma"))
      {
         if(strstr(line, "#pragma stage vertex"))
         {
            vson = 1;
            pson = 0;
         }
         else if(strstr(line, "#pragma stage fragment"))
         {
            vson = 0;
            pson = 1;
         }

         continue;
      }

      char* layout = strstr(line, "layout(");
      if(layout)
      {
         while(*layout != ')')
            layout++;

         layout++;

         while(*layout && isspace(*layout))
            layout++;

         if(!strncmp(layout, "uniform", 7))
            line = layout;
      }

      if(vson)
      {
         fwrite(line, 1, strlen(line),vs_out_fp);
         fputc('\n', vs_out_fp);
      }

      if(pson)
      {
         fwrite(line, 1, strlen(line),ps_out_fp);
         fputc('\n', ps_out_fp);
      }

   }

   fclose(vs_out_fp);
   fclose(ps_out_fp);

   free(slang_buffer);

   return 0;
}
