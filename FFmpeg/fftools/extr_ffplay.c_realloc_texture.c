
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Uint32 ;
typedef int SDL_Texture ;
typedef int SDL_BlendMode ;


 int AV_LOG_VERBOSE ;
 int * SDL_CreateTexture (int ,scalar_t__,int ,int,int) ;
 int SDL_DestroyTexture (int *) ;
 int SDL_GetPixelFormatName (scalar_t__) ;
 scalar_t__ SDL_LockTexture (int *,int *,void**,int*) ;
 scalar_t__ SDL_QueryTexture (int *,scalar_t__*,int*,int*,int*) ;
 scalar_t__ SDL_SetTextureBlendMode (int *,int ) ;
 int SDL_TEXTUREACCESS_STREAMING ;
 int SDL_UnlockTexture (int *) ;
 int av_log (int *,int ,char*,int,int,int ) ;
 int memset (void*,int ,int) ;
 int renderer ;

__attribute__((used)) static int realloc_texture(SDL_Texture **texture, Uint32 new_format, int new_width, int new_height, SDL_BlendMode blendmode, int init_texture)
{
    Uint32 format;
    int access, w, h;
    if (!*texture || SDL_QueryTexture(*texture, &format, &access, &w, &h) < 0 || new_width != w || new_height != h || new_format != format) {
        void *pixels;
        int pitch;
        if (*texture)
            SDL_DestroyTexture(*texture);
        if (!(*texture = SDL_CreateTexture(renderer, new_format, SDL_TEXTUREACCESS_STREAMING, new_width, new_height)))
            return -1;
        if (SDL_SetTextureBlendMode(*texture, blendmode) < 0)
            return -1;
        if (init_texture) {
            if (SDL_LockTexture(*texture, ((void*)0), &pixels, &pitch) < 0)
                return -1;
            memset(pixels, 0, pitch * new_height);
            SDL_UnlockTexture(*texture);
        }
        av_log(((void*)0), AV_LOG_VERBOSE, "Created %dx%d texture with %s.\n", new_width, new_height, SDL_GetPixelFormatName(new_format));
    }
    return 0;
}
