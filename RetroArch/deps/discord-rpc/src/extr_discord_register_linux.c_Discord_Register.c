
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdgMimeCommand ;
typedef size_t ssize_t ;
typedef int exePath ;
typedef int desktopFilename ;
typedef int desktopFilePath ;
typedef int desktopFile ;
typedef int FILE ;


 int Mkdir (char*) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*) ;
 int fwrite (char*,int,int,int *) ;
 char* getenv (char*) ;
 size_t readlink (char*,char*,int) ;
 int snprintf (char*,int,char const*,char const*,...) ;
 int stderr ;
 int strcat (char*,char*) ;
 scalar_t__ system (char*) ;

void Discord_Register(const char* applicationId, const char* command)
{
   FILE* fp;
   int fileLen;
   char xdgMimeCommand[1024];
   char desktopFilename[256];
   char desktopFilePath[1024];
   char desktopFile[2048];


   char exePath[1024];
   const char* home = getenv("HOME");
   if (!home)
      return;

   if (!command || !command[0])
   {
      ssize_t size = readlink("/proc/self/exe", exePath, sizeof(exePath));
      if (size <= 0 || size >= (ssize_t)sizeof(exePath))
         return;
      exePath[size] = '\0';
      command = exePath;
   }

   {
      const char* desktopFileFormat = "[Desktop Entry]\n"
         "Name=Game %s\n"
         "Exec=%s\n"
         "Type=Application\n"
         "NoDisplay=true\n"
         "Categories=Discord;Games;\n"
         "MimeType=x-scheme-handler/discord-%s;\n";
      fileLen = snprintf(
            desktopFile, sizeof(desktopFile), desktopFileFormat, applicationId, command, applicationId);
      if (fileLen <= 0)
         return;
   }

   snprintf(desktopFilename, sizeof(desktopFilename), "/discord-%s.desktop", applicationId);

   snprintf(desktopFilePath, sizeof(desktopFilePath), "%s/.local", home);
   if (!Mkdir(desktopFilePath))
      return;
   strcat(desktopFilePath, "/share");
   if (!Mkdir(desktopFilePath))
      return;
   strcat(desktopFilePath, "/applications");
   if (!Mkdir(desktopFilePath))
      return;
   strcat(desktopFilePath, desktopFilename);

   fp = fopen(desktopFilePath, "w");
   if (!fp)
      return;

   fwrite(desktopFile, 1, fileLen, fp);
   fclose(fp);

   snprintf(xdgMimeCommand,
         sizeof(xdgMimeCommand),
         "xdg-mime default discord-%s.desktop x-scheme-handler/discord-%s",
         applicationId,
         applicationId);
   if (system(xdgMimeCommand) < 0)
      fprintf(stderr, "Failed to register mime handler\n");
}
