#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_43__   TYPE_6__ ;
typedef  struct TYPE_42__   TYPE_5__ ;
typedef  struct TYPE_41__   TYPE_4__ ;
typedef  struct TYPE_40__   TYPE_3__ ;
typedef  struct TYPE_39__   TYPE_32__ ;
typedef  struct TYPE_38__   TYPE_2__ ;
typedef  struct TYPE_37__   TYPE_1__ ;

/* Type definitions */
struct TYPE_43__ {int nb_streams; TYPE_4__** streams; int /*<<< orphan*/  metadata; TYPE_5__* pb; TYPE_3__* priv_data; } ;
struct TYPE_42__ {scalar_t__ buf_ptr; } ;
struct TYPE_41__ {TYPE_1__* priv_data; } ;
struct TYPE_40__ {int store_user_comments; int track_instance_count; int tagged_value_count; TYPE_4__* timecode_track; int /*<<< orphan*/  timestamp; } ;
struct TYPE_39__ {int /*<<< orphan*/  (* write_desc ) (TYPE_6__*,TYPE_4__*) ;} ;
struct TYPE_38__ {int instance; int /*<<< orphan*/  type; int /*<<< orphan*/  name; } ;
struct TYPE_37__ {size_t index; } ;
typedef  TYPE_1__ MXFStreamContext ;
typedef  TYPE_2__ MXFPackage ;
typedef  TYPE_3__ MXFContext ;
typedef  TYPE_4__ AVStream ;
typedef  TYPE_5__ AVIOContext ;
typedef  TYPE_6__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  MaterialPackage ; 
 int /*<<< orphan*/  MultipleDescriptor ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,char*,scalar_t__) ; 
 int /*<<< orphan*/  SourcePackage ; 
 int /*<<< orphan*/  SubDescriptor ; 
 int /*<<< orphan*/  TaggedValue ; 
 int /*<<< orphan*/  TapeDescriptor ; 
 int /*<<< orphan*/  Track ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int) ; 
 TYPE_32__* mxf_essence_container_uls ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*,TYPE_4__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*,TYPE_4__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_6__*,TYPE_4__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_6__*,TYPE_4__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_6__*,int) ; 
 int FUNC16 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_6__*,TYPE_4__*) ; 

__attribute__((used)) static void FUNC19(AVFormatContext *s, MXFPackage *package)
{
    MXFContext *mxf = s->priv_data;
    AVIOContext *pb = s->pb;
    int i, track_count = s->nb_streams+1;
    int name_size = FUNC4(package->name);
    int user_comment_count = 0;

    if (package->type == MaterialPackage) {
        if (mxf->store_user_comments)
            user_comment_count = FUNC16(s, s->metadata);
        FUNC7(pb, 0x013600);
        FUNC0(s, "Material Package key", pb->buf_ptr - 16);
        FUNC3(pb, 92 + name_size + (16*track_count) + (16*user_comment_count) + 12LL*mxf->store_user_comments);
    } else {
        FUNC7(pb, 0x013700);
        FUNC0(s, "Source Package key", pb->buf_ptr - 16);
        FUNC3(pb, 112 + name_size + (16*track_count) + 12LL*mxf->store_user_comments); // 20 bytes length for descriptor reference
    }

    // write uid
    FUNC5(pb, 16, 0x3C0A);
    FUNC17(pb, package->type, package->instance);
    FUNC1(s, AV_LOG_DEBUG, "package type:%d\n", package->type);
    FUNC0(s, "package uid", pb->buf_ptr - 16);

    // write package umid
    FUNC5(pb, 32, 0x4401);
    FUNC15(s, package->instance);
    FUNC0(s, "package umid second part", pb->buf_ptr - 16);

    // package name
    if (name_size)
        FUNC6(pb, 0x4402, package->name);

    // package creation date
    FUNC5(pb, 8, 0x4405);
    FUNC2(pb, mxf->timestamp);

    // package modified date
    FUNC5(pb, 8, 0x4404);
    FUNC2(pb, mxf->timestamp);

    // write track refs
    FUNC5(pb, track_count*16 + 8, 0x4403);
    FUNC9(pb, track_count);
    // these are the uuids of the tracks the will be written in mxf_write_track
    for (i = 0; i < track_count; i++)
        FUNC17(pb, Track,  mxf->track_instance_count + i);

    // write user comment refs
    if (mxf->store_user_comments) {
        FUNC5(pb, user_comment_count*16 + 8, 0x4406);
        FUNC9(pb, user_comment_count);
        for (i = 0; i < user_comment_count; i++)
            FUNC17(pb, TaggedValue, mxf->tagged_value_count - user_comment_count + i);
    }

    // write multiple descriptor reference
    if (package->type == SourcePackage && package->instance == 1) {
        FUNC5(pb, 16, 0x4701);
        if (s->nb_streams > 1) {
            FUNC17(pb, MultipleDescriptor, 0);
            FUNC8(s);
        } else
            FUNC17(pb, SubDescriptor, 0);
    } else if (package->type == SourcePackage && package->instance == 2) {
        FUNC5(pb, 16, 0x4701);
        FUNC17(pb, TapeDescriptor, 0);
        FUNC12(s);
    }

    /*
     * for every 1 track in a package there is 1 sequence and 1 component.
     * all 3 of these elements share the same instance number for generating
     * there instance uuids. mxf->track_instance_count stores this value.
     * mxf->track_instance_count is incremented after a group of all 3 of
     * these elements are written.
     */

    // write timecode track
    FUNC14(s, mxf->timecode_track, package);
    FUNC10(s, mxf->timecode_track, package);
    FUNC13(s, mxf->timecode_track, package);
    mxf->track_instance_count++;

    for (i = 0; i < s->nb_streams; i++) {
        AVStream *st = s->streams[i];
        FUNC14(s, st, package);
        FUNC10(s, st, package);
        FUNC11(s, st, package);
        mxf->track_instance_count++;

        if (package->type == SourcePackage && package->instance == 1) {
            MXFStreamContext *sc = st->priv_data;
            mxf_essence_container_uls[sc->index].write_desc(s, st);
        }
    }
}