
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int name; struct TYPE_5__* next; } ;
typedef TYPE_1__ shader_t ;
struct TYPE_6__ {TYPE_1__* defaultShader; } ;


 int COM_StripExtension (char const*,char*) ;
 int FILE_HASH_SIZE ;
 int MAX_QPATH ;
 scalar_t__ Q_stricmp (int ,char*) ;
 int generateHashValue (char*,int ) ;
 TYPE_1__** hashTable ;
 TYPE_2__ tr ;

shader_t *R_FindShaderByName( const char *name ) {
 char strippedName[MAX_QPATH];
 int hash;
 shader_t *sh;

 if ( (name==((void*)0)) || (name[0] == 0) ) {
  return tr.defaultShader;
 }

 COM_StripExtension( name, strippedName );

 hash = generateHashValue(strippedName, FILE_HASH_SIZE);




 for (sh=hashTable[hash]; sh; sh=sh->next) {




  if (Q_stricmp(sh->name, strippedName) == 0) {

   return sh;
  }
 }

 return tr.defaultShader;
}
