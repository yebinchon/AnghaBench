
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int video_info_t ;
typedef int d3dpp ;
struct TYPE_3__ {int cur_mon_id; int dev; } ;
typedef TYPE_1__ d3d8_video_t ;
typedef scalar_t__ LPDIRECT3D8 ;
typedef int * HWND ;
typedef int D3DPRESENT_PARAMETERS ;


 int RARCH_ERR (char*) ;
 scalar_t__ d3d8_create () ;
 int d3d8_create_device (int *,int *,scalar_t__,int *,int ) ;
 int d3d8_make_d3dpp (TYPE_1__*,int const*,int *) ;
 scalar_t__ g_pD3D8 ;
 int memset (int *,int ,int) ;
 int * win32_get_window () ;

__attribute__((used)) static bool d3d8_init_base(void *data, const video_info_t *info)
{
   D3DPRESENT_PARAMETERS d3dpp;
   HWND focus_window = ((void*)0);
   d3d8_video_t *d3d = (d3d8_video_t*)data;


   focus_window = win32_get_window();


   memset(&d3dpp, 0, sizeof(d3dpp));

   g_pD3D8 = (LPDIRECT3D8)d3d8_create();


   d3d8_make_d3dpp(d3d, info, &d3dpp);

   if (!g_pD3D8)
   {
      RARCH_ERR("[D3D8]: Failed to create D3D interface.\n");
      return 0;
   }

   if (!d3d8_create_device(&d3d->dev, &d3dpp,
            g_pD3D8,
            focus_window,
            d3d->cur_mon_id)
      )
   {
      RARCH_ERR("[D3D8]: Failed to initialize device.\n");
      return 0;
   }

   return 1;
}
