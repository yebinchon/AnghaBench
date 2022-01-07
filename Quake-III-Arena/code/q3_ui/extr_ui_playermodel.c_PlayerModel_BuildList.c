
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
struct TYPE_2__ {int nummodels; int numpages; int * modelnames; scalar_t__ modelpage; } ;


 int COM_StripExtension (char*,char*) ;
 int Com_sprintf (int ,int,char*,char*,char*) ;
 int MAX_MODELSPERPAGE ;
 int MAX_PLAYERMODELS ;
 int Q_stricmpn (char*,char*,int) ;
 int qfalse ;
 TYPE_1__ s_playermodel ;
 int strcmp (char*,char*) ;
 int strlen (char*) ;
 scalar_t__ trap_Cvar_VariableValue (char*) ;
 int trap_FS_GetFileList (char*,char*,char*,int) ;
 int trap_S_RegisterSound (char*,int ) ;
 char* va (char*,char*) ;

__attribute__((used)) static void PlayerModel_BuildList( void )
{
 int numdirs;
 int numfiles;
 char dirlist[2048];
 char filelist[2048];
 char skinname[64];
 char* dirptr;
 char* fileptr;
 int i;
 int j;
 int dirlen;
 int filelen;
 qboolean precache;

 precache = trap_Cvar_VariableValue("com_buildscript");

 s_playermodel.modelpage = 0;
 s_playermodel.nummodels = 0;


 numdirs = trap_FS_GetFileList("models/players", "/", dirlist, 2048 );
 dirptr = dirlist;
 for (i=0; i<numdirs && s_playermodel.nummodels < MAX_PLAYERMODELS; i++,dirptr+=dirlen+1)
 {
  dirlen = strlen(dirptr);

  if (dirlen && dirptr[dirlen-1]=='/') dirptr[dirlen-1]='\0';

  if (!strcmp(dirptr,".") || !strcmp(dirptr,".."))
   continue;


  numfiles = trap_FS_GetFileList( va("models/players/%s",dirptr), "tga", filelist, 2048 );
  fileptr = filelist;
  for (j=0; j<numfiles && s_playermodel.nummodels < MAX_PLAYERMODELS;j++,fileptr+=filelen+1)
  {
   filelen = strlen(fileptr);

   COM_StripExtension(fileptr,skinname);


   if (!Q_stricmpn(skinname,"icon_",5))
   {
    Com_sprintf( s_playermodel.modelnames[s_playermodel.nummodels++],
     sizeof( s_playermodel.modelnames[s_playermodel.nummodels] ),
     "models/players/%s/%s", dirptr, skinname );


   }

   if( precache ) {
    trap_S_RegisterSound( va( "sound/player/announce/%s_wins.wav", skinname), qfalse );
   }
  }
 }



 s_playermodel.numpages = s_playermodel.nummodels/MAX_MODELSPERPAGE;
 if (s_playermodel.nummodels % MAX_MODELSPERPAGE)
  s_playermodel.numpages++;
}
