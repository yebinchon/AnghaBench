
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int biCompression; } ;
typedef TYPE_1__ BITMAPINFOHEADER ;
typedef int AVFormatContext ;


 int AV_LOG_DEBUG ;
 int av_log (int *,int ,char*,...) ;
 int biBitCount ;
 int biClrImportant ;
 int biClrUsed ;
 int biCompression ;
 int biHeight ;
 int biPlanes ;
 int biSize ;
 int biSizeImage ;
 int biWidth ;
 int biXPelsPerMeter ;
 int biYPelsPerMeter ;
 int dstruct (int *,TYPE_1__*,int ,char*) ;

__attribute__((used)) static void dump_bih(AVFormatContext *s, BITMAPINFOHEADER *bih)
{
    av_log(s, AV_LOG_DEBUG, "BITMAPINFOHEADER\n");
    dstruct(s, bih, biSize, "lu");
    dstruct(s, bih, biWidth, "ld");
    dstruct(s, bih, biHeight, "ld");
    dstruct(s, bih, biPlanes, "d");
    dstruct(s, bih, biBitCount, "d");
    dstruct(s, bih, biCompression, "lu");
    av_log(s, AV_LOG_DEBUG, "    biCompression:\t\"%.4s\"\n",
                   (char*) &bih->biCompression);
    dstruct(s, bih, biSizeImage, "lu");
    dstruct(s, bih, biXPelsPerMeter, "lu");
    dstruct(s, bih, biYPelsPerMeter, "lu");
    dstruct(s, bih, biClrUsed, "lu");
    dstruct(s, bih, biClrImportant, "lu");
}
