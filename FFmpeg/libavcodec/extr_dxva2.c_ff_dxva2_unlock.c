
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ context_mutex; } ;
struct TYPE_8__ {int lock_ctx; int (* unlock ) (int ) ;} ;
struct TYPE_7__ {TYPE_1__* device_ctx; } ;
struct TYPE_6__ {TYPE_3__* hwctx; } ;
typedef TYPE_2__ FFDXVASharedContext ;
typedef int AVDXVAContext ;
typedef TYPE_3__ AVD3D11VADeviceContext ;
typedef int AVCodecContext ;


 TYPE_5__* D3D11VA_CONTEXT (int *) ;
 int * DXVA_CONTEXT (int *) ;
 TYPE_2__* DXVA_SHARED_CONTEXT (int *) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int ReleaseMutex (scalar_t__) ;
 scalar_t__ ff_dxva2_is_d3d11 (int *) ;
 int stub1 (int ) ;

__attribute__((used)) static void ff_dxva2_unlock(AVCodecContext *avctx)
{
}
