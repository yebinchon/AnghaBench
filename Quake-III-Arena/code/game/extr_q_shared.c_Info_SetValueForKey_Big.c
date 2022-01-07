
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int newi ;


 int BIG_INFO_STRING ;
 int Com_Error (int ,char*) ;
 int Com_Printf (char*) ;
 int Com_sprintf (char*,int,char*,char const*,char const*) ;
 int ERR_DROP ;
 int Info_RemoveKey_Big (char*,char const*) ;
 int strcat (char*,char*) ;
 scalar_t__ strchr (char const*,char) ;
 int strlen (char const*) ;

void Info_SetValueForKey_Big( char *s, const char *key, const char *value ) {
 char newi[BIG_INFO_STRING];

 if ( strlen( s ) >= BIG_INFO_STRING ) {
  Com_Error( ERR_DROP, "Info_SetValueForKey: oversize infostring" );
 }

 if (strchr (key, '\\') || strchr (value, '\\'))
 {
  Com_Printf ("Can't use keys or values with a \\\n");
  return;
 }

 if (strchr (key, ';') || strchr (value, ';'))
 {
  Com_Printf ("Can't use keys or values with a semicolon\n");
  return;
 }

 if (strchr (key, '\"') || strchr (value, '\"'))
 {
  Com_Printf ("Can't use keys or values with a \"\n");
  return;
 }

 Info_RemoveKey_Big (s, key);
 if (!value || !strlen(value))
  return;

 Com_sprintf (newi, sizeof(newi), "\\%s\\%s", key, value);

 if (strlen(newi) + strlen(s) > BIG_INFO_STRING)
 {
  Com_Printf ("BIG Info string length exceeded\n");
  return;
 }

 strcat (s, newi);
}
