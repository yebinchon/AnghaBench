
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_8__ {int member_3; int member_4; int member_2; int member_1; int member_0; } ;
struct TYPE_6__ {int Count; } ;
struct TYPE_7__ {int Height; int DepthOrArraySize; int MipLevels; int Layout; TYPE_1__ SampleDesc; int Width; int member_0; } ;
typedef TYPE_2__ D3D12_RESOURCE_DESC ;
typedef TYPE_3__ D3D12_HEAP_PROPERTIES ;
typedef int D3D12_GPU_VIRTUAL_ADDRESS ;
typedef int D3D12Resource ;
typedef int D3D12Device ;


 int D3D12CreateCommittedResource (int ,TYPE_3__*,int ,TYPE_2__*,int ,int *,int *) ;
 int D3D12GetGPUVirtualAddress (int ) ;
 int D3D12_CPU_PAGE_PROPERTY_UNKNOWN ;
 int D3D12_HEAP_FLAG_NONE ;
 int D3D12_HEAP_TYPE_UPLOAD ;
 int D3D12_MEMORY_POOL_UNKNOWN ;
 int D3D12_RESOURCE_DIMENSION_BUFFER ;
 int D3D12_RESOURCE_STATE_GENERIC_READ ;
 int D3D12_TEXTURE_LAYOUT_ROW_MAJOR ;

D3D12_GPU_VIRTUAL_ADDRESS
d3d12_create_buffer(D3D12Device device, UINT size_in_bytes, D3D12Resource* buffer)
{
   D3D12_HEAP_PROPERTIES heap_props = { D3D12_HEAP_TYPE_UPLOAD, D3D12_CPU_PAGE_PROPERTY_UNKNOWN,
                                        D3D12_MEMORY_POOL_UNKNOWN, 1, 1 };
   D3D12_RESOURCE_DESC resource_desc = { D3D12_RESOURCE_DIMENSION_BUFFER };

   resource_desc.Width = size_in_bytes;
   resource_desc.Height = 1;
   resource_desc.DepthOrArraySize = 1;
   resource_desc.MipLevels = 1;
   resource_desc.SampleDesc.Count = 1;
   resource_desc.Layout = D3D12_TEXTURE_LAYOUT_ROW_MAJOR;

   D3D12CreateCommittedResource(
         device, (D3D12_HEAP_PROPERTIES*)&heap_props, D3D12_HEAP_FLAG_NONE, &resource_desc,
         D3D12_RESOURCE_STATE_GENERIC_READ, ((void*)0), buffer);

   return D3D12GetGPUVirtualAddress(*buffer);
}
