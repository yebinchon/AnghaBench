
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int filename ;


 int FILENAME_MAX ;
 int Screen_FindScreenshotFilename (char*,int) ;
 int Screen_SaveScreenshot (char*,int) ;

void Screen_SaveNextScreenshot(int interlaced)
{
 char filename[FILENAME_MAX];
 Screen_FindScreenshotFilename(filename, sizeof(filename));
 Screen_SaveScreenshot(filename, interlaced);
}
