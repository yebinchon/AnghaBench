
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XFACE_WIDTH ;

__attribute__((used)) static int all_same(char *bitmap, int w, int h)
{
    char val, *row;
    int x;

    val = *bitmap;
    while (h--) {
        row = bitmap;
        x = w;
        while (x--)
            if (*(row++) != val)
                return 0;
        bitmap += XFACE_WIDTH;
    }
    return 1;
}
