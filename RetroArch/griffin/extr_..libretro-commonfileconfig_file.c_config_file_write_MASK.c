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
typedef  int /*<<< orphan*/  config_file_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int O_CREAT ; 
 int O_RDWR ; 
 int /*<<< orphan*/  _IOFBF ; 
 void* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (char const*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * stdout ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 

bool FUNC10(config_file_t *conf, const char *path, bool sort)
{
   if (!FUNC9(path))
   {
#ifdef ORBIS
      int fd     = orbisOpen(path,O_RDWR|O_CREAT,0644);
      if (fd < 0)
         return false;
      config_file_dump_orbis(conf,fd);
      orbisClose(fd);
#else
      void* buf  = NULL;
      FILE *file = (FILE*)FUNC4(path, "wb");
      if (!file)
         return false;

      /* TODO: this is only useful for a few platforms, find which and add ifdef */
#if !defined(PS2) && !defined(PSP)
      buf = FUNC0(1, 0x4000);
      FUNC8(file, (char*)buf, _IOFBF, 0x4000);
#endif

      FUNC1(conf, file, sort);

      if (file != stdout)
         FUNC3(file);
      if (buf)
         FUNC5(buf);
#endif
   }
   else
      FUNC1(conf, stdout, sort);

   return true;
}