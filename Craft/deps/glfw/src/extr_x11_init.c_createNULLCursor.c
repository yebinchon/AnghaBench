
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pixels ;
struct TYPE_3__ {int member_0; int member_1; unsigned char* member_2; } ;
typedef TYPE_1__ GLFWimage ;
typedef int Cursor ;


 int _glfwCreateCursor (TYPE_1__*,int ,int ) ;
 int memset (unsigned char*,int ,int) ;

__attribute__((used)) static Cursor createNULLCursor(void)
{
    unsigned char pixels[16 * 16 * 4];
    GLFWimage image = { 16, 16, pixels };

    memset(pixels, 0, sizeof(pixels));

    return _glfwCreateCursor(&image, 0, 0);
}
