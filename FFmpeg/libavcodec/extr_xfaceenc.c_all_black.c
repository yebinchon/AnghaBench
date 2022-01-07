
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XFACE_WIDTH ;

__attribute__((used)) static int all_black(char *bitmap, int w, int h)
{
    if (w > 3) {
        w /= 2;
        h /= 2;
        return (all_black(bitmap, w, h) && all_black(bitmap + w, w, h) &&
                all_black(bitmap + XFACE_WIDTH * h, w, h) &&
                all_black(bitmap + XFACE_WIDTH * h + w, w, h));
    } else {

        return *bitmap || *(bitmap + 1) ||
               *(bitmap + XFACE_WIDTH) || *(bitmap + XFACE_WIDTH + 1);
    }
}
