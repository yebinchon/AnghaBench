
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* next; int * soundName; } ;
typedef TYPE_1__ sfx_t ;


 int Com_Error (int ,char*,...) ;
 int Com_Memset (TYPE_1__*,int ,int) ;
 int ERR_FATAL ;
 scalar_t__ MAX_QPATH ;
 int MAX_SFX ;
 int Q_stricmp (int *,char const*) ;
 int S_HashSFXName (char const*) ;
 TYPE_1__* s_knownSfx ;
 int s_numSfx ;
 TYPE_1__** sfxHash ;
 int strcpy (int *,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static sfx_t *S_FindName( const char *name ) {
 int i;
 int hash;

 sfx_t *sfx;

 if (!name) {
  Com_Error (ERR_FATAL, "S_FindName: NULL\n");
 }
 if (!name[0]) {
  Com_Error (ERR_FATAL, "S_FindName: empty name\n");
 }

 if (strlen(name) >= MAX_QPATH) {
  Com_Error (ERR_FATAL, "Sound name too long: %s", name);
 }

 hash = S_HashSFXName(name);

 sfx = sfxHash[hash];

 while (sfx) {
  if (!Q_stricmp(sfx->soundName, name) ) {
   return sfx;
  }
  sfx = sfx->next;
 }


 for (i=0 ; i < s_numSfx ; i++) {
  if (!s_knownSfx[i].soundName[0]) {
   break;
  }
 }

 if (i == s_numSfx) {
  if (s_numSfx == MAX_SFX) {
   Com_Error (ERR_FATAL, "S_FindName: out of sfx_t");
  }
  s_numSfx++;
 }

 sfx = &s_knownSfx[i];
 Com_Memset (sfx, 0, sizeof(*sfx));
 strcpy (sfx->soundName, name);

 sfx->next = sfxHash[hash];
 sfxHash[hash] = sfx;

 return sfx;
}
