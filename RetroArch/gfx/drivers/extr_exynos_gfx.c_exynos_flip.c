
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_page {int buf_id; } ;
struct exynos_data {scalar_t__ pageflip_pending; int cur_page; } ;


 int DRM_MODE_PAGE_FLIP_EVENT ;
 int RARCH_ERR (char*) ;
 scalar_t__ drmModePageFlip (int ,int ,int ,int ,struct exynos_page*) ;
 int drm_wait_flip (int) ;
 int g_crtc_id ;
 int g_drm_fd ;

__attribute__((used)) static int exynos_flip(struct exynos_data *pdata, struct exynos_page *page)
{

   if (pdata->pageflip_pending > 0)
      drm_wait_flip(-1);


   if (drmModePageFlip(g_drm_fd, g_crtc_id, page->buf_id,
            DRM_MODE_PAGE_FLIP_EVENT, page) != 0)
   {
      RARCH_ERR("[video_exynos]: failed to issue page flip\n");
      return -1;
   }
   else
   {
      pdata->pageflip_pending++;
   }


   if (!pdata->cur_page)
      drm_wait_flip(-1);

   return 0;
}
