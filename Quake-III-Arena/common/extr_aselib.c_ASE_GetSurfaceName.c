
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int numFrames; } ;
struct TYPE_5__ {char const* name; TYPE_1__ anim; } ;
typedef TYPE_2__ aseGeomObject_t ;
struct TYPE_6__ {TYPE_2__* objects; } ;


 TYPE_3__ ase ;

const char *ASE_GetSurfaceName( int which )
{
 aseGeomObject_t *pObject = &ase.objects[which];

 if ( !pObject->anim.numFrames )
  return 0;

 return pObject->name;
}
