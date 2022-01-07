
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* BASEDIRNAME ;
 int Error (char*,char const*,...) ;
 int Q_getwd (char*) ;
 int Q_strncasecmp (char const*,char*,int) ;
 char* gamedir ;
 char* qdir ;
 int qprintf (char*,char*) ;
 int strcat (char*,char const*) ;
 int strcpy (char*,char*) ;
 size_t strlen (char const*) ;
 int strncpy (char*,char const*,int) ;
 char* writedir ;

void SetQdirFromPath( const char *path )
{
 char temp[1024];
 const char *c;
  const char *sep;
 int len, count;

 if (!(path[0] == '/' || path[0] == '\\' || path[1] == ':'))
 {
  Q_getwd (temp);
  strcat (temp, path);
  path = temp;
 }



 len = strlen(BASEDIRNAME);
 for (c=path+strlen(path)-1 ; c != path ; c--)
 {
  int i;

  if (!Q_strncasecmp (c, BASEDIRNAME, len))
  {





      sep = c + len;
      count = 1;
      while (*sep && *sep != '/' && *sep != '\\')
      {
        sep++;
        count++;
      }
   strncpy (qdir, path, c+len+count-path);
   qprintf ("qdir: %s\n", qdir);
   for ( i = 0; i < strlen( qdir ); i++ )
   {
    if ( qdir[i] == '\\' )
     qdir[i] = '/';
   }

   c += len+count;
   while (*c)
   {
    if (*c == '/' || *c == '\\')
    {
     strncpy (gamedir, path, c+1-path);

     for ( i = 0; i < strlen( gamedir ); i++ )
     {
      if ( gamedir[i] == '\\' )
       gamedir[i] = '/';
     }

     qprintf ("gamedir: %s\n", gamedir);

     if ( !writedir[0] )
      strcpy( writedir, gamedir );
     else if ( writedir[strlen( writedir )-1] != '/' )
     {
      writedir[strlen( writedir )] = '/';
      writedir[strlen( writedir )+1] = 0;
     }

     return;
    }
    c++;
   }
   Error ("No gamedir in %s", path);
   return;
  }
 }
 Error ("SetQdirFromPath: no '%s' in %s", BASEDIRNAME, path);
}
