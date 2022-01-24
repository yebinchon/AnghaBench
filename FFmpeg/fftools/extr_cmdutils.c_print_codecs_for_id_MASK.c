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
typedef  enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;
struct TYPE_4__ {char* name; } ;
typedef  TYPE_1__ AVCodec ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int,TYPE_1__ const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void FUNC2(enum AVCodecID id, int encoder)
{
    const AVCodec *codec = NULL;

    FUNC1(" (%s: ", encoder ? "encoders" : "decoders");

    while ((codec = FUNC0(id, codec, encoder)))
        FUNC1("%s ", codec->name);

    FUNC1(")");
}