#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int flags; int /*<<< orphan*/ * oformat; TYPE_2__* pb; TYPE_1__* priv_data; } ;
struct TYPE_14__ {scalar_t__ buf_ptr; } ;
struct TYPE_13__ {int /*<<< orphan*/  timestamp; } ;
typedef  TYPE_1__ MXFContext ;
typedef  TYPE_2__ AVIOContext ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int AVFMT_FLAG_BITEXACT ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Identification ; 
 int /*<<< orphan*/  LIBAVFORMAT_VERSION ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ff_mxf_opatom_muxer ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int,char const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC10(AVFormatContext *s)
{
    MXFContext *mxf = s->priv_data;
    AVIOContext *pb = s->pb;
    const char *company = "FFmpeg";
    const char *product = s->oformat != &ff_mxf_opatom_muxer ? "OP1a Muxer" : "OPAtom Muxer";
    const char *version;
    int length;

    FUNC7(pb, 0x013000);
    FUNC1(s, "identification key", pb->buf_ptr - 16);

    version = s->flags & AVFMT_FLAG_BITEXACT ?
        "0.0.0" : FUNC0(LIBAVFORMAT_VERSION);
    length = 100 +FUNC4(company) +
                  FUNC4(product) +
                  FUNC4(version);
    FUNC3(pb, length);

    // write uid
    FUNC5(pb, 16, 0x3C0A);
    FUNC8(pb, Identification, 0);
    FUNC1(s, "identification uid", pb->buf_ptr - 16);

    // write generation uid
    FUNC5(pb, 16, 0x3C09);
    FUNC8(pb, Identification, 1);
    FUNC6(pb, 0x3C01, company); // Company Name
    FUNC6(pb, 0x3C02, product); // Product Name

    FUNC5(pb, 10, 0x3C03); // Product Version
    FUNC9(s);

    FUNC6(pb, 0x3C04, version); // Version String

    // write product uid
    FUNC5(pb, 16, 0x3C05);
    FUNC8(pb, Identification, 2);

    // modification date
    FUNC5(pb, 8, 0x3C06);
    FUNC2(pb, mxf->timestamp);

    FUNC5(pb, 10, 0x3C07); // Toolkit Version
    FUNC9(s);
}