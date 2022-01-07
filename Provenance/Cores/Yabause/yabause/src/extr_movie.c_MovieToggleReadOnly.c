
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ Status; int ReadOnly; } ;


 int DisplayMessage (char*) ;
 TYPE_1__ Movie ;
 scalar_t__ Playback ;

void MovieToggleReadOnly(void) {

 if(Movie.Status == Playback) {

  if(Movie.ReadOnly == 1)
  {
   Movie.ReadOnly=0;
   DisplayMessage("Movie is now read+write.");
  }
  else
  {
   Movie.ReadOnly=1;
   DisplayMessage("Movie is now read only.");
  }
 }
}
