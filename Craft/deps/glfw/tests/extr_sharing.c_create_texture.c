
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLuint ;


 int GL_LINEAR ;
 int GL_LUMINANCE ;
 int GL_TEXTURE_2D ;
 int GL_TEXTURE_MAG_FILTER ;
 int GL_TEXTURE_MIN_FILTER ;
 int GL_UNSIGNED_BYTE ;
 int glBindTexture (int ,int ) ;
 int glGenTextures (int,int *) ;
 int glTexImage2D (int ,int ,int ,int,int,int ,int ,int ,char*) ;
 int glTexParameteri (int ,int ,int ) ;
 int rand () ;

__attribute__((used)) static GLuint create_texture(void)
{
    int x, y;
    char pixels[256 * 256];
    GLuint texture;

    glGenTextures(1, &texture);
    glBindTexture(GL_TEXTURE_2D, texture);

    for (y = 0; y < 256; y++)
    {
        for (x = 0; x < 256; x++)
            pixels[y * 256 + x] = rand() % 256;
    }

    glTexImage2D(GL_TEXTURE_2D, 0, GL_LUMINANCE, 256, 256, 0, GL_LUMINANCE, GL_UNSIGNED_BYTE, pixels);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);

    return texture;
}
