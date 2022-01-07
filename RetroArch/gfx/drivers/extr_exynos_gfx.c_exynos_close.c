
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_data {int drmname; } ;


 int close (int) ;
 int drm_free () ;
 int g_drm_fd ;
 int memset (int ,int ,int) ;

__attribute__((used)) static void exynos_close(struct exynos_data *pdata)
{
   memset(pdata->drmname, 0, sizeof(char) * 32);

   drm_free();
   close(g_drm_fd);
   g_drm_fd = -1;
}
