
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int nFrameWidth; int nFrameHeight; int nStride; int nSliceHeight; int xFramerate; int eColorFormat; } ;
struct TYPE_6__ {TYPE_1__ video; } ;
struct TYPE_7__ {int nPortIndex; scalar_t__ eDir; int nBufferCountActual; int nBufferCountMin; int nBufferSize; int nBufferAlignment; TYPE_2__ format; scalar_t__ bBuffersContiguous; scalar_t__ bPopulated; scalar_t__ bEnabled; } ;
typedef TYPE_3__ OMX_PARAM_PORTDEFINITIONTYPE ;


 scalar_t__ OMX_DirInput ;
 int printf (char*,int,char*,int,int,int,int,char*,char*,char*,int,int,int,int,int,int) ;

__attribute__((used)) static void
print_def(OMX_PARAM_PORTDEFINITIONTYPE def)
{
   printf("Port %u: %s %u/%u %u %u %s,%s,%s %ux%u %ux%u @%u %u\n",
          def.nPortIndex,
          def.eDir == OMX_DirInput ? "in" : "out",
          def.nBufferCountActual,
          def.nBufferCountMin,
          def.nBufferSize,
          def.nBufferAlignment,
          def.bEnabled ? "enabled" : "disabled",
          def.bPopulated ? "populated" : "not pop.",
          def.bBuffersContiguous ? "contig." : "not cont.",
          def.format.video.nFrameWidth,
          def.format.video.nFrameHeight,
          def.format.video.nStride,
          def.format.video.nSliceHeight,
          def.format.video.xFramerate, def.format.video.eColorFormat);
}
