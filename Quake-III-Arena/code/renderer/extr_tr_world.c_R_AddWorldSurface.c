
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ viewCount; int fogIndex; int shader; int data; } ;
typedef TYPE_1__ msurface_t ;
struct TYPE_6__ {scalar_t__ viewCount; } ;


 int R_AddDrawSurf (int ,int ,int ,int) ;
 scalar_t__ R_CullSurface (int ,int ) ;
 int R_DlightSurface (TYPE_1__*,int) ;
 TYPE_2__ tr ;

__attribute__((used)) static void R_AddWorldSurface( msurface_t *surf, int dlightBits ) {
 if ( surf->viewCount == tr.viewCount ) {
  return;
 }

 surf->viewCount = tr.viewCount;



 if ( R_CullSurface( surf->data, surf->shader ) ) {
  return;
 }


 if ( dlightBits ) {
  dlightBits = R_DlightSurface( surf, dlightBits );
  dlightBits = ( dlightBits != 0 );
 }

 R_AddDrawSurf( surf->data, surf->shader, surf->fogIndex, dlightBits );
}
