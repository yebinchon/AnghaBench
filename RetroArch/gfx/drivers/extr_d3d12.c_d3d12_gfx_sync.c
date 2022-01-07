
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ fenceValue; int fenceEvent; int fence; } ;
struct TYPE_5__ {TYPE_1__ queue; } ;
typedef TYPE_2__ d3d12_video_t ;


 scalar_t__ D3D12GetCompletedValue (int ) ;
 int D3D12SetEventOnCompletion (int ,scalar_t__,int ) ;
 int INFINITE ;
 int WaitForSingleObject (int ,int ) ;

__attribute__((used)) static void d3d12_gfx_sync(d3d12_video_t* d3d12)
{
   if (D3D12GetCompletedValue(d3d12->queue.fence) < d3d12->queue.fenceValue)
   {
      D3D12SetEventOnCompletion(
            d3d12->queue.fence, d3d12->queue.fenceValue, d3d12->queue.fenceEvent);
      WaitForSingleObject(d3d12->queue.fenceEvent, INFINITE);
   }
}
