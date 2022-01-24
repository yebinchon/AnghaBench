#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int nb_chapters; int /*<<< orphan*/  metadata; int /*<<< orphan*/  pb; } ;
struct TYPE_11__ {int version; } ;
typedef  TYPE_1__ ID3v2EncContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int ID3v2_ENCODING_UTF16BOM ; 
 int ID3v2_ENCODING_UTF8 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*,TYPE_1__*,int,int) ; 
 int FUNC2 (TYPE_2__*,TYPE_1__*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*,int) ; 

int FUNC4(AVFormatContext *s, ID3v2EncContext *id3)
{
    int enc = id3->version == 3 ? ID3v2_ENCODING_UTF16BOM :
                                  ID3v2_ENCODING_UTF8;
    int i, ret;

    FUNC0(s);
    if ((ret = FUNC3(s->pb, &s->metadata, id3, enc)) < 0)
        return ret;

    if ((ret = FUNC2(s, id3, enc)) < 0)
        return ret;

    for (i = 0; i < s->nb_chapters; i++) {
        if ((ret = FUNC1(s, id3, i, enc)) < 0)
            return ret;
    }

    return 0;
}