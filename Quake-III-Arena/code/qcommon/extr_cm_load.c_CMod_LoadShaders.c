
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int filelen; scalar_t__ fileofs; } ;
typedef TYPE_1__ lump_t ;
struct TYPE_9__ {void* surfaceFlags; void* contentFlags; } ;
typedef TYPE_2__ dshader_t ;
struct TYPE_10__ {int numShaders; TYPE_2__* shaders; } ;


 int Com_Error (int ,char*) ;
 int Com_Memcpy (TYPE_2__*,TYPE_2__*,int) ;
 int ERR_DROP ;
 TYPE_2__* Hunk_Alloc (int,int ) ;
 void* LittleLong (void*) ;
 TYPE_3__ cm ;
 scalar_t__ cmod_base ;
 int h_high ;

void CMod_LoadShaders( lump_t *l ) {
 dshader_t *in, *out;
 int i, count;

 in = (void *)(cmod_base + l->fileofs);
 if (l->filelen % sizeof(*in)) {
  Com_Error (ERR_DROP, "CMod_LoadShaders: funny lump size");
 }
 count = l->filelen / sizeof(*in);

 if (count < 1) {
  Com_Error (ERR_DROP, "Map with no shaders");
 }
 cm.shaders = Hunk_Alloc( count * sizeof( *cm.shaders ), h_high );
 cm.numShaders = count;

 Com_Memcpy( cm.shaders, in, count * sizeof( *cm.shaders ) );

 out = cm.shaders;
 for ( i=0 ; i<count ; i++, in++, out++ ) {
  out->contentFlags = LittleLong( out->contentFlags );
  out->surfaceFlags = LittleLong( out->surfaceFlags );
 }
}
