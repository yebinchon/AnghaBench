#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/ * oformat; TYPE_2__* pb; TYPE_1__* priv_data; } ;
struct TYPE_17__ {scalar_t__ buf_ptr; } ;
struct TYPE_16__ {int /*<<< orphan*/  essence_container_count; int /*<<< orphan*/  timestamp; } ;
typedef  TYPE_1__ MXFContext ;
typedef  TYPE_2__ AVIOContext ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  ContentStorage ; 
 long long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Identification ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*,scalar_t__) ; 
 int /*<<< orphan*/  Preface ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ff_mxf_opatom_muxer ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  op1a_ul ; 
 int /*<<< orphan*/  opatom_ul ; 

__attribute__((used)) static void FUNC12(AVFormatContext *s)
{
    MXFContext *mxf = s->priv_data;
    AVIOContext *pb = s->pb;

    FUNC9(pb, 0x012f00);
    FUNC1(s, "preface key", pb->buf_ptr - 16);
    FUNC6(pb, 138 + 16LL * FUNC0(mxf->essence_container_count));

    // write preface set uid
    FUNC8(pb, 16, 0x3C0A);
    FUNC11(pb, Preface, 0);
    FUNC1(s, "preface uid", pb->buf_ptr - 16);

    // last modified date
    FUNC8(pb, 8, 0x3B02);
    FUNC4(pb, mxf->timestamp);

    // write version
    FUNC8(pb, 2, 0x3B05);
    FUNC2(pb, 259); // v1.3

    // Object Model Version
    FUNC8(pb, 4, 0x3B07);
    FUNC3(pb, 1);

    // write identification_refs
    FUNC8(pb, 16 + 8, 0x3B06);
    FUNC10(pb, 1);
    FUNC11(pb, Identification, 0);

    // write content_storage_refs
    FUNC8(pb, 16, 0x3B03);
    FUNC11(pb, ContentStorage, 0);

    // operational pattern
    FUNC8(pb, 16, 0x3B09);
    if (s->oformat == &ff_mxf_opatom_muxer)
        FUNC5(pb, opatom_ul, 16);
    else
        FUNC5(pb, op1a_ul, 16);

    // write essence_container_refs
    FUNC8(pb, 8 + 16LL * FUNC0(mxf->essence_container_count), 0x3B0A);
    FUNC7(s);

    // write dm_scheme_refs
    FUNC8(pb, 8, 0x3B0B);
    FUNC4(pb, 0);
}