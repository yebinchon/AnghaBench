#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_8__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uuid ;
typedef  int uint8_t ;
typedef  int int64_t ;
struct TYPE_13__ {int nb_streams; int /*<<< orphan*/  metadata; TYPE_4__** streams; } ;
struct TYPE_12__ {TYPE_1__* priv_data; } ;
struct TYPE_11__ {int size; } ;
struct TYPE_10__ {int bitrates_count; int* bitrates; TYPE_8__* fc; scalar_t__ export_xmp; } ;
struct TYPE_9__ {int /*<<< orphan*/  spherical; } ;
typedef  TYPE_1__ MOVStreamContext ;
typedef  TYPE_2__ MOVContext ;
typedef  TYPE_3__ MOVAtom ;
typedef  TYPE_4__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INT_MAX ; 
 int /*<<< orphan*/  SIZE_MAX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_8__*,int /*<<< orphan*/ ,char*) ; 
 int* FUNC5 (size_t) ; 
 int* FUNC6 (int*,int,int) ; 
 int* FUNC7 (int*,char*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int*,size_t) ; 
 int FUNC9 (int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC10 (int*,int const*,int) ; 
 int FUNC11 (TYPE_1__*,int /*<<< orphan*/ *,size_t) ; 
 int FUNC12 (int*,char**,int) ; 

__attribute__((used)) static int FUNC13(MOVContext *c, AVIOContext *pb, MOVAtom atom)
{
    AVStream *st;
    MOVStreamContext *sc;
    int64_t ret;
    uint8_t uuid[16];
    static const uint8_t uuid_isml_manifest[] = {
        0xa5, 0xd4, 0x0b, 0x30, 0xe8, 0x14, 0x11, 0xdd,
        0xba, 0x2f, 0x08, 0x00, 0x20, 0x0c, 0x9a, 0x66
    };
    static const uint8_t uuid_xmp[] = {
        0xbe, 0x7a, 0xcf, 0xcb, 0x97, 0xa9, 0x42, 0xe8,
        0x9c, 0x71, 0x99, 0x94, 0x91, 0xe3, 0xaf, 0xac
    };
    static const uint8_t uuid_spherical[] = {
        0xff, 0xcc, 0x82, 0x63, 0xf8, 0x55, 0x4a, 0x93,
        0x88, 0x14, 0x58, 0x7a, 0x02, 0x52, 0x1f, 0xdd,
    };

    if (atom.size < sizeof(uuid) || atom.size >= FUNC1(INT_MAX, SIZE_MAX))
        return AVERROR_INVALIDDATA;

    if (c->fc->nb_streams < 1)
        return 0;
    st = c->fc->streams[c->fc->nb_streams - 1];
    sc = st->priv_data;

    ret = FUNC8(pb, uuid, sizeof(uuid));
    if (ret < 0) {
        return ret;
    } else if (ret != sizeof(uuid)) {
        return AVERROR_INVALIDDATA;
    }
    if (!FUNC10(uuid, uuid_isml_manifest, sizeof(uuid))) {
        uint8_t *buffer, *ptr;
        char *endptr;
        size_t len = atom.size - sizeof(uuid);

        if (len < 4) {
            return AVERROR_INVALIDDATA;
        }
        ret = FUNC9(pb, 4); // zeroes
        len -= 4;

        buffer = FUNC5(len + 1);
        if (!buffer) {
            return FUNC0(ENOMEM);
        }
        ret = FUNC8(pb, buffer, len);
        if (ret < 0) {
            FUNC3(buffer);
            return ret;
        } else if (ret != len) {
            FUNC3(buffer);
            return AVERROR_INVALIDDATA;
        }

        ptr = buffer;
        while ((ptr = FUNC7(ptr, "systemBitrate=\""))) {
            ptr += sizeof("systemBitrate=\"") - 1;
            c->bitrates_count++;
            c->bitrates = FUNC6(c->bitrates, c->bitrates_count, sizeof(*c->bitrates));
            if (!c->bitrates) {
                c->bitrates_count = 0;
                FUNC3(buffer);
                return FUNC0(ENOMEM);
            }
            errno = 0;
            ret = FUNC12(ptr, &endptr, 10);
            if (ret < 0 || errno || *endptr != '"') {
                c->bitrates[c->bitrates_count - 1] = 0;
            } else {
                c->bitrates[c->bitrates_count - 1] = ret;
            }
        }

        FUNC3(buffer);
    } else if (!FUNC10(uuid, uuid_xmp, sizeof(uuid))) {
        uint8_t *buffer;
        size_t len = atom.size - sizeof(uuid);
        if (c->export_xmp) {
            buffer = FUNC5(len + 1);
            if (!buffer) {
                return FUNC0(ENOMEM);
            }
            ret = FUNC8(pb, buffer, len);
            if (ret < 0) {
                FUNC3(buffer);
                return ret;
            } else if (ret != len) {
                FUNC3(buffer);
                return AVERROR_INVALIDDATA;
            }
            buffer[len] = '\0';
            FUNC2(&c->fc->metadata, "xmp", buffer, 0);
            FUNC3(buffer);
        } else {
            // skip all uuid atom, which makes it fast for long uuid-xmp file
            ret = FUNC9(pb, len);
            if (ret < 0)
                return ret;
        }
    } else if (!FUNC10(uuid, uuid_spherical, sizeof(uuid))) {
        size_t len = atom.size - sizeof(uuid);
        ret = FUNC11(sc, pb, len);
        if (ret < 0)
            return ret;
        if (!sc->spherical)
            FUNC4(c->fc, AV_LOG_WARNING, "Invalid spherical metadata found\n");
    }

    return 0;
}