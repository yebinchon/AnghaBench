
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* pickup_sound; char* sounds; int classname; } ;
typedef TYPE_1__ gitem_t ;


 int CG_Error (char*,int ) ;
 int MAX_QPATH ;
 TYPE_1__* bg_itemlist ;
 int memcpy (char*,char*,int) ;
 int qfalse ;
 int strcmp (char*,char*) ;
 int trap_S_RegisterSound (char*,int ) ;

__attribute__((used)) static void CG_RegisterItemSounds( int itemNum ) {
 gitem_t *item;
 char data[MAX_QPATH];
 char *s, *start;
 int len;

 item = &bg_itemlist[ itemNum ];

 if( item->pickup_sound ) {
  trap_S_RegisterSound( item->pickup_sound, qfalse );
 }


 s = item->sounds;
 if (!s || !s[0])
  return;

 while (*s) {
  start = s;
  while (*s && *s != ' ') {
   s++;
  }

  len = s-start;
  if (len >= MAX_QPATH || len < 5) {
   CG_Error( "PrecacheItem: %s has bad precache string",
    item->classname);
   return;
  }
  memcpy (data, start, len);
  data[len] = 0;
  if ( *s ) {
   s++;
  }

  if ( !strcmp(data+len-3, "wav" )) {
   trap_S_RegisterSound( data, qfalse );
  }
 }
}
