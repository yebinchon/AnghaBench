
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int png_time ;
struct TYPE_8__ {char* key; int text; void* compression; } ;
typedef TYPE_1__ png_text ;
typedef scalar_t__ png_structp ;
typedef scalar_t__ png_infop ;
struct TYPE_9__ {int blue; int green; int red; } ;
typedef TYPE_2__ png_color_16 ;
struct TYPE_10__ {int pnmtype; double gamma; int have_text; scalar_t__ info_ptr; scalar_t__ png_ptr; int url; int email; int copyright; int desc; int author; int title; int modtime; scalar_t__ have_time; int bg_blue; int bg_green; int bg_red; scalar_t__ have_bg; int sample_depth; int height; int width; scalar_t__ interlaced; int outfile; int jmpbuf; } ;
typedef TYPE_3__ mainprog_info ;


 int PNG_COLOR_TYPE_GRAY ;
 int PNG_COLOR_TYPE_RGB ;
 int PNG_COLOR_TYPE_RGB_ALPHA ;
 int PNG_COMPRESSION_TYPE_DEFAULT ;
 int PNG_FILTER_TYPE_DEFAULT ;
 int PNG_INTERLACE_ADAM7 ;
 int PNG_INTERLACE_NONE ;
 void* PNG_TEXT_COMPRESSION_NONE ;
 int TEXT_AUTHOR ;
 int TEXT_COPY ;
 int TEXT_DESC ;
 int TEXT_EMAIL ;
 int TEXT_TITLE ;
 int TEXT_URL ;
 int Z_BEST_COMPRESSION ;
 int png_convert_from_time_t (int *,int ) ;
 scalar_t__ png_create_info_struct (scalar_t__) ;
 scalar_t__ png_create_write_struct (int ,TYPE_3__*,int ,int *) ;
 int png_destroy_write_struct (scalar_t__*,scalar_t__*) ;
 int png_get_libpng_ver (int *) ;
 int png_init_io (scalar_t__,int ) ;
 int png_set_IHDR (scalar_t__,scalar_t__,int ,int ,int ,int,int,int ,int ) ;
 int png_set_bKGD (scalar_t__,scalar_t__,TYPE_2__*) ;
 int png_set_compression_level (scalar_t__,int ) ;
 int png_set_gAMA (scalar_t__,scalar_t__,double) ;
 int png_set_packing (scalar_t__) ;
 int png_set_tIME (scalar_t__,scalar_t__,int *) ;
 int png_set_text (scalar_t__,scalar_t__,TYPE_1__*,int) ;
 int png_write_info (scalar_t__,scalar_t__) ;
 scalar_t__ setjmp (int ) ;
 int writepng_error_handler ;

int writepng_init(mainprog_info *mainprog_ptr)
{
    png_structp png_ptr;
    png_infop info_ptr;
    int color_type, interlace_type;




    png_ptr = png_create_write_struct(png_get_libpng_ver(((void*)0)), mainprog_ptr,
      writepng_error_handler, ((void*)0));
    if (!png_ptr)
        return 4;

    info_ptr = png_create_info_struct(png_ptr);
    if (!info_ptr) {
        png_destroy_write_struct(&png_ptr, ((void*)0));
        return 4;
    }
    if (setjmp(mainprog_ptr->jmpbuf)) {
        png_destroy_write_struct(&png_ptr, &info_ptr);
        return 2;
    }




    png_init_io(png_ptr, mainprog_ptr->outfile);
    png_set_compression_level(png_ptr, Z_BEST_COMPRESSION);
    if (mainprog_ptr->pnmtype == 5)
        color_type = PNG_COLOR_TYPE_GRAY;
    else if (mainprog_ptr->pnmtype == 6)
        color_type = PNG_COLOR_TYPE_RGB;
    else if (mainprog_ptr->pnmtype == 8)
        color_type = PNG_COLOR_TYPE_RGB_ALPHA;
    else {
        png_destroy_write_struct(&png_ptr, &info_ptr);
        return 11;
    }

    interlace_type = mainprog_ptr->interlaced? PNG_INTERLACE_ADAM7 :
                                               PNG_INTERLACE_NONE;

    png_set_IHDR(png_ptr, info_ptr, mainprog_ptr->width, mainprog_ptr->height,
      mainprog_ptr->sample_depth, color_type, interlace_type,
      PNG_COMPRESSION_TYPE_DEFAULT, PNG_FILTER_TYPE_DEFAULT);

    if (mainprog_ptr->gamma > 0.0)
        png_set_gAMA(png_ptr, info_ptr, mainprog_ptr->gamma);

    if (mainprog_ptr->have_bg) {
        png_color_16 background;

        background.red = mainprog_ptr->bg_red;
        background.green = mainprog_ptr->bg_green;
        background.blue = mainprog_ptr->bg_blue;
        png_set_bKGD(png_ptr, info_ptr, &background);
    }

    if (mainprog_ptr->have_time) {
        png_time modtime;

        png_convert_from_time_t(&modtime, mainprog_ptr->modtime);
        png_set_tIME(png_ptr, info_ptr, &modtime);
    }

    if (mainprog_ptr->have_text) {
        png_text text[6];
        int num_text = 0;

        if (mainprog_ptr->have_text & TEXT_TITLE) {
            text[num_text].compression = PNG_TEXT_COMPRESSION_NONE;
            text[num_text].key = "Title";
            text[num_text].text = mainprog_ptr->title;
            ++num_text;
        }
        if (mainprog_ptr->have_text & TEXT_AUTHOR) {
            text[num_text].compression = PNG_TEXT_COMPRESSION_NONE;
            text[num_text].key = "Author";
            text[num_text].text = mainprog_ptr->author;
            ++num_text;
        }
        if (mainprog_ptr->have_text & TEXT_DESC) {
            text[num_text].compression = PNG_TEXT_COMPRESSION_NONE;
            text[num_text].key = "Description";
            text[num_text].text = mainprog_ptr->desc;
            ++num_text;
        }
        if (mainprog_ptr->have_text & TEXT_COPY) {
            text[num_text].compression = PNG_TEXT_COMPRESSION_NONE;
            text[num_text].key = "Copyright";
            text[num_text].text = mainprog_ptr->copyright;
            ++num_text;
        }
        if (mainprog_ptr->have_text & TEXT_EMAIL) {
            text[num_text].compression = PNG_TEXT_COMPRESSION_NONE;
            text[num_text].key = "E-mail";
            text[num_text].text = mainprog_ptr->email;
            ++num_text;
        }
        if (mainprog_ptr->have_text & TEXT_URL) {
            text[num_text].compression = PNG_TEXT_COMPRESSION_NONE;
            text[num_text].key = "URL";
            text[num_text].text = mainprog_ptr->url;
            ++num_text;
        }
        png_set_text(png_ptr, info_ptr, text, num_text);
    }




    png_write_info(png_ptr, info_ptr);
    png_set_packing(png_ptr);





    mainprog_ptr->png_ptr = png_ptr;
    mainprog_ptr->info_ptr = info_ptr;




    return 0;
}
