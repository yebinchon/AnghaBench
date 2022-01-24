#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ physaddr; scalar_t__ virtaddr; scalar_t__ sectionsize; scalar_t__ sectionptr; scalar_t__ relptr; scalar_t__ linenoptr; int numreloc; int numlineno; scalar_t__ flags; } ;
typedef  TYPE_1__ u8 ;
typedef  size_t u32 ;
typedef  TYPE_1__ section_header_struct ;
struct TYPE_13__ {int numsections; scalar_t__ timedate; scalar_t__ symtabptr; scalar_t__ numsymtabs; int optheader; int flags; int* magic; } ;
typedef  TYPE_3__ coff_header_struct ;
typedef  int /*<<< orphan*/  coff_header ;
struct TYPE_14__ {int versionstamp; scalar_t__ textsize; scalar_t__ datasize; scalar_t__ bsssize; scalar_t__ entrypoint; scalar_t__ textaddr; scalar_t__ dataaddr; } ;
typedef  TYPE_4__ aout_header_struct ;
typedef  int /*<<< orphan*/  aout_header ;
struct TYPE_16__ {scalar_t__ PC; } ;
struct TYPE_15__ {TYPE_7__ regs; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 TYPE_6__* MSH2 ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,TYPE_1__) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (char const*,char*) ; 
 size_t FUNC10 (void*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int) ; 

int FUNC14(const char *filename)
{
   coff_header_struct coff_header;
   aout_header_struct aout_header;
   section_header_struct *section_headers=NULL;
   FILE *fp;
   u8 *buffer;
   u32 i, j;
   size_t num_read = 0;

   if ((fp = FUNC9(filename, "rb")) == NULL)
      return -1;

   num_read = FUNC10((void *)&coff_header, sizeof(coff_header), 1, fp);
#ifndef WORDS_BIGENDIAN
   FUNC5(coff_header.numsections);
   FUNC0(coff_header.timedate);
   FUNC0(coff_header.timedate);
   FUNC0(coff_header.symtabptr);
   FUNC0(coff_header.numsymtabs);
   FUNC5(coff_header.optheader);
   FUNC5(coff_header.flags);
#endif

   if (coff_header.magic[0] != 0x05 || coff_header.magic[1] != 0x00 ||
       coff_header.optheader != sizeof(aout_header))
   {
      // Not SH COFF or is missing the optional header
      FUNC8(fp);
      return -1;
   }

   num_read = FUNC10((void *)&aout_header, sizeof(aout_header), 1, fp);
#ifndef WORDS_BIGENDIAN
   FUNC5(aout_header.versionstamp);
   FUNC0(aout_header.textsize);
   FUNC0(aout_header.datasize);
   FUNC0(aout_header.bsssize);
   FUNC0(aout_header.entrypoint);
   FUNC0(aout_header.textaddr);
   FUNC0(aout_header.dataaddr);
#endif

   // Read in each section header
   if ((section_headers = (section_header_struct *)FUNC13(sizeof(section_header_struct) * coff_header.numsections)) == NULL)
   {
      FUNC8(fp);
      return -2;
   }

   // read in section headers
   for (i = 0; i < coff_header.numsections; i++)
   {
      num_read = FUNC10((void *)&section_headers[i], sizeof(section_header_struct), 1, fp);
#ifndef WORDS_BIGENDIAN
      FUNC0(section_headers[i].physaddr);
      FUNC0(section_headers[i].virtaddr);
      FUNC0(section_headers[i].sectionsize);
      FUNC0(section_headers[i].sectionptr);
      FUNC0(section_headers[i].relptr);
      FUNC0(section_headers[i].linenoptr);
      FUNC5(section_headers[i].numreloc);
      FUNC5(section_headers[i].numlineno);
      FUNC0(section_headers[i].flags);
#endif
   }

   FUNC6();

   // Setup the vector table area, etc.
   FUNC7();

   // Read in sections, load them to ram
   for (i = 0; i < coff_header.numsections; i++)
   {
      if (section_headers[i].sectionsize == 0 ||
          section_headers[i].sectionptr == 0)
         // Skip to the next section
         continue;
      
      if ((buffer = (u8 *)FUNC13(section_headers[i].sectionsize)) == NULL)
      {
         FUNC8(fp);
         FUNC11(section_headers);
         return -2;
      }

      FUNC12(fp, section_headers[i].sectionptr, SEEK_SET);
      num_read = FUNC10((void *)buffer, 1, section_headers[i].sectionsize, fp);

      for (j = 0; j < section_headers[i].sectionsize; j++)
         FUNC1(section_headers[i].physaddr+j, buffer[j]);
      FUNC4(section_headers[i].physaddr,
                     section_headers[i].sectionsize);

      FUNC11(buffer);
   }

   // Clean up
   FUNC11(section_headers);
   FUNC8(fp);

   FUNC2(MSH2, &MSH2->regs);
   MSH2->regs.PC = aout_header.entrypoint;
   FUNC3(MSH2, &MSH2->regs);
   return 0;
}