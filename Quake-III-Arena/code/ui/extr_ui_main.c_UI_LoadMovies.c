
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int movieCount; int * movieList; } ;


 int MAX_MOVIES ;
 int Q_stricmp (char*,char*) ;
 int Q_strupr (char*) ;
 int String_Alloc (char*) ;
 int strlen (char*) ;
 int trap_FS_GetFileList (char*,char*,char*,int) ;
 TYPE_1__ uiInfo ;

__attribute__((used)) static void UI_LoadMovies() {
 char movielist[4096];
 char *moviename;
 int i, len;

 uiInfo.movieCount = trap_FS_GetFileList( "video", "roq", movielist, 4096 );

 if (uiInfo.movieCount) {
  if (uiInfo.movieCount > MAX_MOVIES) {
   uiInfo.movieCount = MAX_MOVIES;
  }
  moviename = movielist;
  for ( i = 0; i < uiInfo.movieCount; i++ ) {
   len = strlen( moviename );
   if (!Q_stricmp(moviename + len - 4,".roq")) {
    moviename[len-4] = '\0';
   }
   Q_strupr(moviename);
   uiInfo.movieList[i] = String_Alloc(moviename);
   moviename += len + 1;
  }
 }

}
