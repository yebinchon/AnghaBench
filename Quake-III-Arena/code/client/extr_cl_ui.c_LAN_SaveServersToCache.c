
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int fileHandle_t ;
struct TYPE_2__ {int numglobalservers; int nummplayerservers; int numfavoriteservers; int globalServers; int mplayerServers; int favoriteServers; } ;


 int FS_FCloseFile (int ) ;
 int FS_SV_FOpenFileWrite (char*) ;
 int FS_Write (int*,int,int ) ;
 TYPE_1__ cls ;

void LAN_SaveServersToCache( ) {
 int size;
 fileHandle_t fileOut = FS_SV_FOpenFileWrite("servercache.dat");
 FS_Write(&cls.numglobalservers, sizeof(int), fileOut);
 FS_Write(&cls.nummplayerservers, sizeof(int), fileOut);
 FS_Write(&cls.numfavoriteservers, sizeof(int), fileOut);
 size = sizeof(cls.globalServers) + sizeof(cls.favoriteServers) + sizeof(cls.mplayerServers);
 FS_Write(&size, sizeof(int), fileOut);
 FS_Write(&cls.globalServers, sizeof(cls.globalServers), fileOut);
 FS_Write(&cls.mplayerServers, sizeof(cls.mplayerServers), fileOut);
 FS_Write(&cls.favoriteServers, sizeof(cls.favoriteServers), fileOut);
 FS_FCloseFile(fileOut);
}
