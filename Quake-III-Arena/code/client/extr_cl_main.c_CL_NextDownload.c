
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* downloadList; int downloadRestart; } ;


 int CL_BeginDownload (char*,char*) ;
 int CL_DownloadsComplete () ;
 TYPE_1__ clc ;
 int memmove (char*,char*,int) ;
 int qtrue ;
 char* strchr (char*,char) ;
 int strlen (char*) ;

void CL_NextDownload(void) {
 char *s;
 char *remoteName, *localName;


 if (*clc.downloadList) {
  s = clc.downloadList;




  if (*s == '@')
   s++;
  remoteName = s;

  if ( (s = strchr(s, '@')) == ((void*)0) ) {
   CL_DownloadsComplete();
   return;
  }

  *s++ = 0;
  localName = s;
  if ( (s = strchr(s, '@')) != ((void*)0) )
   *s++ = 0;
  else
   s = localName + strlen(localName);

  CL_BeginDownload( localName, remoteName );

  clc.downloadRestart = qtrue;


  memmove( clc.downloadList, s, strlen(s) + 1);

  return;
 }

 CL_DownloadsComplete();
}
