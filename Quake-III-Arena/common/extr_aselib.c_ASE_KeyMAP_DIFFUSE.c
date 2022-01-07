
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t numMaterials; TYPE_1__* materials; } ;
struct TYPE_3__ {char* name; } ;


 int ASE_GetToken (int ) ;
 TYPE_2__ ase ;
 char* gamedir ;
 int printf (char*,char*) ;
 int qfalse ;
 char* s_token ;
 int sprintf (char*,char*,char*) ;
 scalar_t__* strchr (char*,char) ;
 int strcmp (char const*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int strlwr (char*) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static void ASE_KeyMAP_DIFFUSE( const char *token )
{
 char buffer[1024], buff1[1024], buff2[1024];
  char *buf1, *buf2;
 int i = 0, count;

 if ( !strcmp( token, "*BITMAP" ) )
 {
  ASE_GetToken( qfalse );

  strcpy( buffer, s_token + 1 );
  if ( strchr( buffer, '"' ) )
   *strchr( buffer, '"' ) = 0;

  while ( buffer[i] )
  {
   if ( buffer[i] == '\\' )
    buffer[i] = '/';
   i++;
  }

    buf1 = buffer;
    buf2 = gamedir;


    if ( (gamedir[1] == ':' && (buffer[0] == '/' && buffer[1] == '/')) ||
      (buffer[1] == ':' && (gamedir[0] == '/' && gamedir[1] == '/')) ) {
      if (buffer[1] == ':') {
        buf1 = buffer + 2;
        buf2 = gamedir + 2;
      } else {
        buf1 = gamedir + 2;
        buf2 = buffer +2;
      }
      count = 0;
      while (*buf2 && count < 2) {
        if (*buf2 == '/') {
          count++;
        }
        buf2++;
      }
    }
    strcpy(buff1, buf1);
    strlwr(buff1);
    strcpy(buff2, buf2);
    strlwr(buff2);
    if ( strstr( buff2, buff1 + 2 ) )
  {
   strcpy( ase.materials[ase.numMaterials].name, strstr( buff2, buff1 + 2 ) + strlen( buff1 ) - 2 );
  }
  else
  {
   sprintf( ase.materials[ase.numMaterials].name, "(not converted: '%s')", buffer );
   printf( "WARNING: illegal material name '%s'\n", buffer );
  }
 }
 else
 {
 }
}
