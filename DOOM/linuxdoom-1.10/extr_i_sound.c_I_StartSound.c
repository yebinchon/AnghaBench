
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int addsfx (int,int,int ,int) ;
 int fflush (scalar_t__) ;
 int fprintf (scalar_t__,char*,int,int,int,int) ;
 scalar_t__ sndserver ;
 int * steptable ;

int
I_StartSound
( int id,
  int vol,
  int sep,
  int pitch,
  int priority )
{


  priority = 0;
    id = addsfx( id, vol, steptable[pitch], sep );



    return id;

}
