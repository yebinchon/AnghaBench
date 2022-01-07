
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t numitems; int * itemnames; } ;
struct TYPE_4__ {TYPE_1__ list; int fs_gamePtr; int descriptionPtr; int * descriptionList; int * fs_gameList; } ;


 int Q_strncpyz (int ,char*,int) ;
 TYPE_2__ s_mods ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static void UI_Mods_ParseInfos( char *modDir, char *modDesc ) {
 s_mods.fs_gameList[s_mods.list.numitems] = s_mods.fs_gamePtr;
 Q_strncpyz( s_mods.fs_gamePtr, modDir, 16 );

 s_mods.descriptionList[s_mods.list.numitems] = s_mods.descriptionPtr;
 Q_strncpyz( s_mods.descriptionPtr, modDesc, 48 );

 s_mods.list.itemnames[s_mods.list.numitems] = s_mods.descriptionPtr;
 s_mods.descriptionPtr += strlen( s_mods.descriptionPtr ) + 1;
 s_mods.fs_gamePtr += strlen( s_mods.fs_gamePtr ) + 1;
 s_mods.list.numitems++;
}
