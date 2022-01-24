#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  id; } ;
struct TYPE_10__ {TYPE_1__* codecpar; } ;
struct TYPE_9__ {int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; } ;
typedef  int /*<<< orphan*/  OptionsContext ;
typedef  TYPE_2__ AVStream ;
typedef  int /*<<< orphan*/  AVFormatContext ;
typedef  TYPE_3__ AVCodec ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  codec_names ; 
 TYPE_3__* FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  str ; 

__attribute__((used)) static AVCodec *FUNC3(OptionsContext *o, AVFormatContext *s, AVStream *st)
{
    char *codec_name = NULL;

    FUNC0(codec_names, str, codec_name, s, st);
    if (codec_name) {
        AVCodec *codec = FUNC2(codec_name, st->codecpar->codec_type, 0);
        st->codecpar->codec_id = codec->id;
        return codec;
    } else
        return FUNC1(st->codecpar->codec_id);
}