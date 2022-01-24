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
typedef  int /*<<< orphan*/  xdgMimeCommand ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  exePath ;
typedef  int /*<<< orphan*/  desktopFilename ;
typedef  int /*<<< orphan*/  desktopFilePath ;
typedef  int /*<<< orphan*/  desktopFile ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int,int /*<<< orphan*/ *) ; 
 char* FUNC5 (char*) ; 
 size_t FUNC6 (char*,char*,int) ; 
 int FUNC7 (char*,int,char const*,char const*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 scalar_t__ FUNC9 (char*) ; 

void FUNC10(const char* applicationId, const char* command)
{
   FILE* fp;
   int fileLen;
   char xdgMimeCommand[1024];
   char desktopFilename[256];
   char desktopFilePath[1024];
   char desktopFile[2048];
   /* Add a desktop file and update some MIME handlers 
    * so that xdg-open does the right thing. */
   char exePath[1024];
   const char* home = FUNC5("HOME");
   if (!home)
      return;

   if (!command || !command[0])
   {
      ssize_t size = FUNC6("/proc/self/exe", exePath, sizeof(exePath));
      if (size <= 0 || size >= (ssize_t)sizeof(exePath))
         return;
      exePath[size] = '\0';
      command = exePath;
   }

   {
      const char* desktopFileFormat = "[Desktop Entry]\n"
         "Name=Game %s\n"
         "Exec=%s\n" /* note: it really wants that %u in there */
         "Type=Application\n"
         "NoDisplay=true\n"
         "Categories=Discord;Games;\n"
         "MimeType=x-scheme-handler/discord-%s;\n";
      fileLen = FUNC7(
            desktopFile, sizeof(desktopFile), desktopFileFormat, applicationId, command, applicationId);
      if (fileLen <= 0)
         return;
   }

   FUNC7(desktopFilename, sizeof(desktopFilename), "/discord-%s.desktop", applicationId);

   FUNC7(desktopFilePath, sizeof(desktopFilePath), "%s/.local", home);
   if (!FUNC0(desktopFilePath))
      return;
   FUNC8(desktopFilePath, "/share");
   if (!FUNC0(desktopFilePath))
      return;
   FUNC8(desktopFilePath, "/applications");
   if (!FUNC0(desktopFilePath))
      return;
   FUNC8(desktopFilePath, desktopFilename);

   fp = FUNC2(desktopFilePath, "w");
   if (!fp)
      return;

   FUNC4(desktopFile, 1, fileLen, fp);
   FUNC1(fp);

   FUNC7(xdgMimeCommand,
         sizeof(xdgMimeCommand),
         "xdg-mime default discord-%s.desktop x-scheme-handler/discord-%s",
         applicationId,
         applicationId);
   if (FUNC9(xdgMimeCommand) < 0)
      FUNC3(stderr, "Failed to register mime handler\n");
}