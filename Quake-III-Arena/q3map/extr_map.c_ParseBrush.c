
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int bspbrush_t ;
struct TYPE_5__ {int* portalareas; int contents; int brushnum; scalar_t__ entitynum; } ;


 int CONTENTS_DETAIL ;
 int CONTENTS_LAVA ;
 int CONTENTS_SLIME ;
 int CONTENTS_WATER ;
 int * FinishBrush () ;
 int FreeBrush (TYPE_1__*) ;
 int ParseRawBrush () ;
 int RemoveDuplicateBrushPlanes (TYPE_1__*) ;
 int SetBrushContents (TYPE_1__*) ;
 TYPE_1__* buildBrush ;
 int entitySourceBrushes ;
 scalar_t__ nodetail ;
 scalar_t__ nowater ;
 scalar_t__ num_entities ;

void ParseBrush (void) {
 bspbrush_t *b;

 ParseRawBrush();

 buildBrush->portalareas[0] = -1;
 buildBrush->portalareas[1] = -1;
 buildBrush->entitynum = num_entities-1;
 buildBrush->brushnum = entitySourceBrushes;


 if ( !RemoveDuplicateBrushPlanes( buildBrush ) ) {
  return;
 }


 SetBrushContents( buildBrush );


 if (nodetail && (buildBrush->contents & CONTENTS_DETAIL) ) {
  FreeBrush( buildBrush );
  return;
 }


 if (nowater && (buildBrush->contents & (CONTENTS_LAVA | CONTENTS_SLIME | CONTENTS_WATER)) ) {
  FreeBrush( buildBrush );
  return;
 }

 b = FinishBrush( );
 if ( !b ) {
  return;
 }
}
