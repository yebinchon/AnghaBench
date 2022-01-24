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
typedef  char uint8_t ;
struct TYPE_4__ {char* subtitle_header; int /*<<< orphan*/  subtitle_header_size; } ;
typedef  TYPE_1__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_BUG ; 
 int /*<<< orphan*/  ENOMEM ; 
 char* FUNC1 (char*,int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char*,char*) ; 

__attribute__((used)) static int FUNC6(AVCodecContext *avctx)
{
    int ret = FUNC3(avctx);
    char *new_header;
    uint8_t *event_pos;

    if (ret < 0)
        return ret;

    event_pos = FUNC5(avctx->subtitle_header, "\r\n[Events]\r\n");
    if (!event_pos)
        return AVERROR_BUG;

    new_header = FUNC1("%.*s%s%s",
        (int)(event_pos - avctx->subtitle_header), avctx->subtitle_header,
        "Style: "
        "Teletext,"            /* Name */
        "Monospace,11,"        /* Font{name,size} */
        "&Hffffff,&Hffffff,&H0,&H0," /* {Primary,Secondary,Outline,Back}Colour */
        "0,0,0,0,"             /* Bold, Italic, Underline, StrikeOut */
        "160,100,"             /* Scale{X,Y} */
        "0,0,"                 /* Spacing, Angle */
        "3,0.1,0,"             /* BorderStyle, Outline, Shadow */
        "5,1,1,1,"             /* Alignment, Margin[LRV] */
        "0\r\n"                /* Encoding */
        "Style: "
        "Subtitle,"            /* Name */
        "Monospace,16,"        /* Font{name,size} */
        "&Hffffff,&Hffffff,&H0,&H0," /* {Primary,Secondary,Outline,Back}Colour */
        "0,0,0,0,"             /* Bold, Italic, Underline, StrikeOut */
        "100,100,"             /* Scale{X,Y} */
        "0,0,"                 /* Spacing, Angle */
        "1,1,1,"               /* BorderStyle, Outline, Shadow */
        "8,48,48,20,"          /* Alignment, Margin[LRV] */
        "0\r\n"                /* Encoding */
        , event_pos);

    if (!new_header)
        return FUNC0(ENOMEM);

    FUNC2(avctx->subtitle_header);
    avctx->subtitle_header = new_header;
    avctx->subtitle_header_size = FUNC4(new_header);
    return 0;
}