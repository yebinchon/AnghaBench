
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEFAULT_SCREENSHOT_FILENAME_FORMAT ;
 int FILENAME_MAX ;
 int Log_print (char*) ;
 char* screenshot_filename_format ;
 int screenshot_no_max ;
 int strcpy (char*,int ) ;

__attribute__((used)) static void Screen_SetScreenshotFilenamePattern(const char *p)
{
 char *f = screenshot_filename_format;
 char no_width = '0';
 screenshot_no_max = 1;

 while (f < screenshot_filename_format + FILENAME_MAX - 9) {

  if (*p == '#') {
   if (no_width > '0')
    break;

   do {
    screenshot_no_max *= 10;
    p++;
    no_width++;


   } while (no_width < '9' && *p == '#');
   *f++ = '%';
   *f++ = '0';
   *f++ = no_width;
   *f++ = 'd';
   continue;
  }
  if (*p == '%')
   *f++ = '%';
  *f++ = *p;
  if (*p == '\0')
   return;
  p++;
 }
 Log_print("Invalid filename pattern for screenshots, using default.");
 strcpy(screenshot_filename_format, DEFAULT_SCREENSHOT_FILENAME_FORMAT);
 screenshot_no_max = 1000;
}
