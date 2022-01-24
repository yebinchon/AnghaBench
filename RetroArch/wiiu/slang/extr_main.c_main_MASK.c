#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (char) ; 
 char* FUNC9 (size_t) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char const*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,int) ; 
 char* FUNC14 (char const*,char*) ; 

int FUNC15(int argc, const char** argv)
{

   const char* slang = NULL;
   const char* vs_asm = NULL;
   const char* ps_asm = NULL;
   const char* vs_out = NULL;
   const char* ps_out = NULL;

   for(int i = 1; i < argc - 1; i+=2)
   {
      if(!FUNC11(argv[i], "--slang"))
         slang = argv[i + 1];
      else if(!FUNC11(argv[i], "--vsource"))
         vs_asm = argv[i + 1];
      else if(!FUNC11(argv[i], "--psource"))
         ps_asm = argv[i + 1];
      else if(!FUNC11(argv[i], "--vsh"))
         vs_out = argv[i + 1];
      else if(!FUNC11(argv[i], "--psh"))
         ps_out = argv[i + 1];
   }

   if(!slang || !vs_out || !ps_out || (!vs_asm && ps_asm) || (vs_asm && !ps_asm))
   {
      FUNC10("Usage :\n");
      FUNC10("%s --slang <slang input> --vsh <vsh output> --psh <psh output>\n", argv[0]);
      FUNC10("%s --slang <slang input> --vsource <vsh asm input> --psource <psh asm input> --vsh <vsh output> --psh <psh output>\n", argv[0]);
   }

   char* slang_buffer;
   size_t slang_filesize;
   {
      FILE* slang_file = FUNC1(slang, "rb");
      FUNC5(slang_file, 0, SEEK_END);
      slang_filesize = FUNC6(slang_file);
      FUNC5(slang_file, 0, SEEK_SET);
      slang_buffer = FUNC9(slang_filesize + 1);
      FUNC3(slang_buffer, 1, slang_filesize, slang_file);
      FUNC0(slang_file);
   }

   slang_buffer[slang_filesize] = '\0';

   FILE* vs_out_fp = FUNC1(vs_out, "wb");
   FILE* ps_out_fp = FUNC1(ps_out, "wb");

   const char* line = "#version 150\n";
   FUNC7(line, 1, FUNC12(line),vs_out_fp);
   FUNC7(line, 1, FUNC12(line),ps_out_fp);

   char* next = slang_buffer;

   bool vson = true;
   bool pson = true;

   while(*next)
   {
      const char* line = next;

      while(*next && *next != '\n' && *next != '\r')
         next++;

      if (*next == '\r')
         *next++ = '\0';

      *next++ = '\0';

//      while((*next == '\n') || (*next == '\r'))
//         *next++ = '\0';

      if(FUNC14(line, "#version"))
         continue;

      if(FUNC14(line, "#pragma"))
      {
         if(FUNC14(line, "#pragma stage vertex"))
         {
            vson = true;
            pson = false;
         }
         else if(FUNC14(line, "#pragma stage fragment"))
         {
            vson = false;
            pson = true;
         }

         continue;
      }

      char* layout = FUNC14(line, "layout(");
      if(layout)
      {
         while(*layout != ')')
            layout++;

         layout++;

         while(*layout && FUNC8(*layout))
            layout++;

         if(!FUNC13(layout, "uniform", 7))
            line = layout;
      }

      if(vson)
      {
         FUNC7(line, 1, FUNC12(line),vs_out_fp);
         FUNC2('\n', vs_out_fp);
      }

      if(pson)
      {
         FUNC7(line, 1, FUNC12(line),ps_out_fp);
         FUNC2('\n', ps_out_fp);
      }

   }

   FUNC0(vs_out_fp);
   FUNC0(ps_out_fp);

   FUNC4(slang_buffer);

   return 0;
}