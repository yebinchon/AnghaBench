
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int desc ;
struct TYPE_4__ {int index; int * texture; } ;
typedef int ID3D11Texture2D ;
typedef TYPE_1__ AVD3D11FrameDescriptor ;
typedef int AVBufferRef ;


 int ID3D11Texture2D_Release (int *) ;
 int * av_buffer_create (int *,int,int ,int *,int ) ;
 int av_free (TYPE_1__*) ;
 TYPE_1__* av_mallocz (int) ;
 int free_texture ;

__attribute__((used)) static AVBufferRef *wrap_texture_buf(ID3D11Texture2D *tex, int index)
{
    AVBufferRef *buf;
    AVD3D11FrameDescriptor *desc = av_mallocz(sizeof(*desc));
    if (!desc) {
        ID3D11Texture2D_Release(tex);
        return ((void*)0);
    }

    desc->texture = tex;
    desc->index = index;

    buf = av_buffer_create((uint8_t *)desc, sizeof(desc), free_texture, tex, 0);
    if (!buf) {
        ID3D11Texture2D_Release(tex);
        av_free(desc);
        return ((void*)0);
    }

    return buf;
}
