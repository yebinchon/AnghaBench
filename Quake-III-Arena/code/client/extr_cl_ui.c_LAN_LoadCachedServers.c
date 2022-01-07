
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int fileHandle_t ;
struct TYPE_2__ {int numglobalservers; int nummplayerservers; int numfavoriteservers; int globalServers; int mplayerServers; int favoriteServers; scalar_t__ numGlobalServerAddresses; } ;


 int FS_FCloseFile (int ) ;
 int FS_Read (int*,int,int ) ;
 scalar_t__ FS_SV_FOpenFileRead (char*,int *) ;
 TYPE_1__ cls ;

void LAN_LoadCachedServers( ) {
 int size;
 fileHandle_t fileIn;
 cls.numglobalservers = cls.nummplayerservers = cls.numfavoriteservers = 0;
 cls.numGlobalServerAddresses = 0;
 if (FS_SV_FOpenFileRead("servercache.dat", &fileIn)) {
  FS_Read(&cls.numglobalservers, sizeof(int), fileIn);
  FS_Read(&cls.nummplayerservers, sizeof(int), fileIn);
  FS_Read(&cls.numfavoriteservers, sizeof(int), fileIn);
  FS_Read(&size, sizeof(int), fileIn);
  if (size == sizeof(cls.globalServers) + sizeof(cls.favoriteServers) + sizeof(cls.mplayerServers)) {
   FS_Read(&cls.globalServers, sizeof(cls.globalServers), fileIn);
   FS_Read(&cls.mplayerServers, sizeof(cls.mplayerServers), fileIn);
   FS_Read(&cls.favoriteServers, sizeof(cls.favoriteServers), fileIn);
  } else {
   cls.numglobalservers = cls.nummplayerservers = cls.numfavoriteservers = 0;
   cls.numGlobalServerAddresses = 0;
  }
  FS_FCloseFile(fileIn);
 }
}
