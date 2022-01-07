
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int i_bitdepth; } ;
typedef TYPE_1__ x264_param_t ;
struct TYPE_5__ {int bit_depth; int * picture_init; int * encoder_close; int * encoder_delayed_frames; int * encoder_encode; int * encoder_headers; int * encoder_open; int * param_parse; int * param_apply_fastfirstpass; int * param_apply_profile; int * param_default_preset; int (* param_default ) (TYPE_1__*) ;} ;


 int X264_BIT_DEPTH ;
 int free (char*) ;
 void* hb_dlsym (void*,char*) ;
 char* hb_strdup_printf (char*,int) ;
 int libx264_10bit_names ;
 int libx264_8bit_names ;
 int stub1 (TYPE_1__*) ;
 TYPE_2__* x264_apis ;
 int x264_bit_depth ;
 void* x264_encoder_close ;
 void* x264_encoder_delayed_frames ;
 void* x264_encoder_encode ;
 void* x264_encoder_headers ;
 void* x264_encoder_open ;
 void* x264_lib_open (int ) ;
 void* x264_lib_open_ubuntu_10bit () ;
 void* x264_param_apply_fastfirstpass ;
 void* x264_param_apply_profile ;
 void* x264_param_default ;
 void* x264_param_default_preset ;
 void* x264_param_parse ;
 void* x264_picture_init ;

void hb_x264_global_init(void)
{

    x264_apis[0].bit_depth = x264_bit_depth;



    x264_apis[0].param_default = x264_param_default;
    x264_apis[0].param_default_preset = x264_param_default_preset;
    x264_apis[0].param_apply_profile = x264_param_apply_profile;
    x264_apis[0].param_apply_fastfirstpass = x264_param_apply_fastfirstpass;
    x264_apis[0].param_parse = x264_param_parse;
    x264_apis[0].encoder_open = x264_encoder_open;
    x264_apis[0].encoder_headers = x264_encoder_headers;
    x264_apis[0].encoder_encode = x264_encoder_encode;
    x264_apis[0].encoder_delayed_frames = x264_encoder_delayed_frames;
    x264_apis[0].encoder_close = x264_encoder_close;
    x264_apis[0].picture_init = x264_picture_init;

    if (x264_apis[0].bit_depth == 0)
    {

        x264_apis[0].bit_depth = 8;
        x264_apis[1].bit_depth = 10;
        x264_apis[1].param_default = x264_param_default;
        x264_apis[1].param_default_preset = x264_param_default_preset;
        x264_apis[1].param_apply_profile = x264_param_apply_profile;
        x264_apis[1].param_apply_fastfirstpass = x264_param_apply_fastfirstpass;
        x264_apis[1].param_parse = x264_param_parse;
        x264_apis[1].encoder_open = x264_encoder_open;
        x264_apis[1].encoder_headers = x264_encoder_headers;
        x264_apis[1].encoder_encode = x264_encoder_encode;
        x264_apis[1].encoder_delayed_frames = x264_encoder_delayed_frames;
        x264_apis[1].encoder_close = x264_encoder_close;
        x264_apis[1].picture_init = x264_picture_init;
        return;
    }


    x264_apis[1].bit_depth = -1;



    void *h;
    if (x264_apis[0].bit_depth == 8)
    {
        h = x264_lib_open(libx264_10bit_names);






    }
    else
    {
        h = x264_lib_open(libx264_8bit_names);
    }
    if (h == ((void*)0))
    {
        return;
    }

    int ii;
    int dll_bitdepth = 0;

    int *pbit_depth = (int*)hb_dlsym(h, "x264_bit_depth");
    if (pbit_depth != ((void*)0))
    {
        dll_bitdepth = *pbit_depth;
    }

    x264_apis[1].param_default = hb_dlsym(h, "x264_param_default");
    x264_apis[1].param_default_preset = hb_dlsym(h, "x264_param_default_preset");
    x264_apis[1].param_apply_profile = hb_dlsym(h, "x264_param_apply_profile");
    x264_apis[1].param_apply_fastfirstpass =
                                hb_dlsym(h, "x264_param_apply_fastfirstpass");
    x264_apis[1].param_parse = hb_dlsym(h, "x264_param_parse");

    for (ii = 140; ii < 200; ii++)
    {
        char *name = hb_strdup_printf("x264_encoder_open_%d", ii);
        x264_apis[1].encoder_open = hb_dlsym(h, name);
        free(name);
        if (x264_apis[1].encoder_open != ((void*)0))
        {
            break;
        }
    }
    x264_apis[1].encoder_headers = hb_dlsym(h, "x264_encoder_headers");
    x264_apis[1].encoder_encode = hb_dlsym(h, "x264_encoder_encode");
    x264_apis[1].encoder_delayed_frames =
                                hb_dlsym(h, "x264_encoder_delayed_frames");
    x264_apis[1].encoder_close = hb_dlsym(h, "x264_encoder_close");
    x264_apis[1].picture_init = hb_dlsym(h, "x264_picture_init");

    if (dll_bitdepth > 0 && dll_bitdepth != x264_apis[0].bit_depth &&
        x264_apis[1].param_default != ((void*)0) &&
        x264_apis[1].param_default_preset != ((void*)0) &&
        x264_apis[1].param_apply_profile != ((void*)0) &&
        x264_apis[1].param_apply_fastfirstpass != ((void*)0) &&
        x264_apis[1].param_parse != ((void*)0) &&
        x264_apis[1].encoder_open != ((void*)0) &&
        x264_apis[1].encoder_headers != ((void*)0) &&
        x264_apis[1].encoder_encode != ((void*)0) &&
        x264_apis[1].encoder_delayed_frames != ((void*)0) &&
        x264_apis[1].encoder_close != ((void*)0) &&
        x264_apis[1].picture_init != ((void*)0))
    {
        x264_apis[1].bit_depth = dll_bitdepth;
    }
}
