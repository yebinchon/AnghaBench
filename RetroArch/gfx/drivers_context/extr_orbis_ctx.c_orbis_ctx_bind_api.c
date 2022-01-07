
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum gfx_ctx_api { ____Placeholder_gfx_ctx_api } gfx_ctx_api ;


 scalar_t__ EGL_FALSE ;
 int EGL_OPENGL_ES_API ;
 int GFX_CTX_OPENGL_ES_API ;
 int ctx_orbis_api ;
 scalar_t__ eglBindAPI (int ) ;

__attribute__((used)) static bool orbis_ctx_bind_api(void *data,
                                enum gfx_ctx_api api, unsigned major, unsigned minor)
{
    (void)data;
    ctx_orbis_api = api;

    if (api == GFX_CTX_OPENGL_ES_API)
        if (eglBindAPI(EGL_OPENGL_ES_API) != EGL_FALSE)
            return 1;

    return 0;
}
