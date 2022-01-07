
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int name; } ;
typedef TYPE_1__ md3Tag_t ;
struct TYPE_6__ {int numFrames; int ofsTags; int numTags; } ;
typedef TYPE_2__ md3Header_t ;
typedef int byte ;


 int strcmp (int ,char const*) ;

__attribute__((used)) static md3Tag_t *R_GetTag( md3Header_t *mod, int frame, const char *tagName ) {
 md3Tag_t *tag;
 int i;

 if ( frame >= mod->numFrames ) {

  frame = mod->numFrames - 1;
 }

 tag = (md3Tag_t *)((byte *)mod + mod->ofsTags) + frame * mod->numTags;
 for ( i = 0 ; i < mod->numTags ; i++, tag++ ) {
  if ( !strcmp( tag->name, tagName ) ) {
   return tag;
  }
 }

 return ((void*)0);
}
