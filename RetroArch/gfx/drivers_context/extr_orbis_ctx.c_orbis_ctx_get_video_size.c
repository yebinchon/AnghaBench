
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int orbis_ctx_data_t ;


 unsigned int ATTR_ORBISGL_HEIGHT ;
 unsigned int ATTR_ORBISGL_WIDTH ;

__attribute__((used)) static void orbis_ctx_get_video_size(void *data,
                                      unsigned *width, unsigned *height)
{
    orbis_ctx_data_t *ctx_orbis = (orbis_ctx_data_t *)data;

    *width = ATTR_ORBISGL_WIDTH;
    *height = ATTR_ORBISGL_HEIGHT;
}
