
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GL_RGBA ;
 int GL_TEXTURE_2D ;
 int GL_UNSIGNED_BYTE ;
 int exit (int) ;
 int flip_image_vertical (unsigned char*,unsigned int,unsigned int) ;
 int fprintf (int ,char*,char const*,unsigned int,char*) ;
 int free (unsigned char*) ;
 int glTexImage2D (int ,int ,int ,unsigned int,unsigned int,int ,int ,int ,unsigned char*) ;
 unsigned int lodepng_decode32_file (unsigned char**,unsigned int*,unsigned int*,char const*) ;
 char* lodepng_error_text (unsigned int) ;
 int stderr ;

void load_png_texture(const char *file_name) {
    unsigned int error;
    unsigned char *data;
    unsigned int width, height;
    error = lodepng_decode32_file(&data, &width, &height, file_name);
    if (error) {
        fprintf(stderr, "load_png_texture %s failed, error %u: %s\n", file_name, error, lodepng_error_text(error));
        exit(1);
    }
    flip_image_vertical(data, width, height);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, width, height, 0, GL_RGBA,
        GL_UNSIGNED_BYTE, data);
    free(data);
}
