
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;
typedef struct TYPE_14__ TYPE_11__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct TYPE_24__ {int curvalue; } ;
struct TYPE_23__ {int curvalue; } ;
struct TYPE_22__ {int curvalue; } ;
struct TYPE_21__ {int curvalue; } ;
struct TYPE_20__ {int curvalue; } ;
struct TYPE_19__ {int curvalue; } ;
struct TYPE_18__ {int curvalue; } ;
struct TYPE_17__ {int curvalue; } ;
struct TYPE_16__ {int curvalue; } ;
struct TYPE_13__ {int curvalue; } ;
struct TYPE_15__ {TYPE_9__ texturebits; TYPE_8__ filter; TYPE_7__ geometry; TYPE_6__ lighting; TYPE_5__ tq; TYPE_4__ allow_extensions; TYPE_3__ fs; TYPE_2__ mode; TYPE_1__ driver; TYPE_10__ colordepth; } ;
struct TYPE_14__ {int texturebits; int filter; int geometry; int lighting; int tq; int extensions; int fullscreen; int mode; int driver; int colordepth; } ;


 TYPE_12__ s_graphicsoptions ;
 TYPE_11__ s_ivo ;

__attribute__((used)) static void GraphicsOptions_GetInitialVideo( void )
{
 s_ivo.colordepth = s_graphicsoptions.colordepth.curvalue;
 s_ivo.driver = s_graphicsoptions.driver.curvalue;
 s_ivo.mode = s_graphicsoptions.mode.curvalue;
 s_ivo.fullscreen = s_graphicsoptions.fs.curvalue;
 s_ivo.extensions = s_graphicsoptions.allow_extensions.curvalue;
 s_ivo.tq = s_graphicsoptions.tq.curvalue;
 s_ivo.lighting = s_graphicsoptions.lighting.curvalue;
 s_ivo.geometry = s_graphicsoptions.geometry.curvalue;
 s_ivo.filter = s_graphicsoptions.filter.curvalue;
 s_ivo.texturebits = s_graphicsoptions.texturebits.curvalue;
}
