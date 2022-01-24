#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  biCompression; } ;
typedef  TYPE_1__ BITMAPINFOHEADER ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  biBitCount ; 
 int /*<<< orphan*/  biClrImportant ; 
 int /*<<< orphan*/  biClrUsed ; 
 int /*<<< orphan*/  biCompression ; 
 int /*<<< orphan*/  biHeight ; 
 int /*<<< orphan*/  biPlanes ; 
 int /*<<< orphan*/  biSize ; 
 int /*<<< orphan*/  biSizeImage ; 
 int /*<<< orphan*/  biWidth ; 
 int /*<<< orphan*/  biXPelsPerMeter ; 
 int /*<<< orphan*/  biYPelsPerMeter ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC2(AVFormatContext *s, BITMAPINFOHEADER *bih)
{
    FUNC0(s, AV_LOG_DEBUG, "BITMAPINFOHEADER\n");
    FUNC1(s, bih, biSize, "lu");
    FUNC1(s, bih, biWidth, "ld");
    FUNC1(s, bih, biHeight, "ld");
    FUNC1(s, bih, biPlanes, "d");
    FUNC1(s, bih, biBitCount, "d");
    FUNC1(s, bih, biCompression, "lu");
    FUNC0(s, AV_LOG_DEBUG, "    biCompression:\t\"%.4s\"\n",
                   (char*) &bih->biCompression);
    FUNC1(s, bih, biSizeImage, "lu");
    FUNC1(s, bih, biXPelsPerMeter, "lu");
    FUNC1(s, bih, biYPelsPerMeter, "lu");
    FUNC1(s, bih, biClrUsed, "lu");
    FUNC1(s, bih, biClrImportant, "lu");
}