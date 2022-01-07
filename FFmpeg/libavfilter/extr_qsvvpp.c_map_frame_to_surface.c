
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int Pitch; int A; int R; int G; int B; int V; int U; int Y; int UV; } ;
struct TYPE_7__ {TYPE_1__ Data; } ;
typedef TYPE_2__ mfxFrameSurface1 ;
struct TYPE_8__ {int format; int * linesize; int * data; } ;
typedef TYPE_3__ AVFrame ;







 int MFX_ERR_UNSUPPORTED ;

__attribute__((used)) static int map_frame_to_surface(AVFrame *frame, mfxFrameSurface1 *surface)
{
    switch (frame->format) {
    case 132:
    case 131:
        surface->Data.Y = frame->data[0];
        surface->Data.UV = frame->data[1];
        break;
    case 129:
        surface->Data.Y = frame->data[0];
        surface->Data.U = frame->data[1];
        surface->Data.V = frame->data[2];
        break;
    case 128:
        surface->Data.Y = frame->data[0];
        surface->Data.U = frame->data[0] + 1;
        surface->Data.V = frame->data[0] + 3;
        break;
    case 130:
        surface->Data.B = frame->data[0];
        surface->Data.G = frame->data[0] + 1;
        surface->Data.R = frame->data[0] + 2;
        surface->Data.A = frame->data[0] + 3;
        break;
    default:
        return MFX_ERR_UNSUPPORTED;
    }
    surface->Data.Pitch = frame->linesize[0];

    return 0;
}
