
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u32 ;
typedef int jobject ;
struct TYPE_3__ {int height; int width; int stride; } ;
typedef int JNIEnv ;
typedef TYPE_1__ AndroidBitmapInfo ;


 int AndroidBitmap_getInfo (int *,int ,TYPE_1__*) ;
 int AndroidBitmap_lockPixels (int *,int ,void**) ;
 int AndroidBitmap_unlockPixels (int *,int ) ;
 int * dispbuffer ;
 int g_buf_width ;

void
Java_org_yabause_android_YabauseRunnable_screenshot( JNIEnv* env, jobject obj, jobject bitmap )
{
    u32 * buffer;
    AndroidBitmapInfo info;
    void * pixels;
    int x, y;

    AndroidBitmap_getInfo(env, bitmap, &info);

    AndroidBitmap_lockPixels(env, bitmap, &pixels);

    buffer = dispbuffer;

    for(y = 0;y < info.height;y++) {
        for(x = 0;x < info.width;x++) {
            *((uint32_t *) pixels + x) = *(buffer + x);
        }
        pixels += info.stride;
        buffer += g_buf_width;
    }

    AndroidBitmap_unlockPixels(env, bitmap);
}
