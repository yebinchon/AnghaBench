#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  key ;
typedef  int /*<<< orphan*/  iv ;
struct TYPE_8__ {int /*<<< orphan*/  sequence; } ;
typedef  TYPE_1__ VariantStream ;
struct TYPE_9__ {char* iv; char* key_string; char* key; int (* io_open ) (TYPE_2__*,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/ * key_file; int /*<<< orphan*/ * key_uri; int /*<<< orphan*/ * iv_string; int /*<<< orphan*/ * key_basename; int /*<<< orphan*/ * key_url; int /*<<< orphan*/ * url; struct TYPE_9__* priv_data; } ;
typedef  TYPE_2__ HLSContext ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVIO_FLAG_WRITE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int KEYSIZE ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC11 (int /*<<< orphan*/ *,int) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (TYPE_2__*,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(AVFormatContext *s, VariantStream *vs)
{
    HLSContext *hls = s->priv_data;
    int ret;
    int len;
    AVIOContext *pb;
    uint8_t key[KEYSIZE];

    len = FUNC12(s->url) + 4 + 1;
    hls->key_basename = FUNC3(len);
    if (!hls->key_basename)
        return FUNC0(ENOMEM);

    FUNC5(hls->key_basename, s->url, len);
    FUNC4(hls->key_basename, ".key", len);

    if (hls->key_url) {
        FUNC5(hls->key_file, hls->key_url, sizeof(hls->key_file));
        FUNC5(hls->key_uri, hls->key_url, sizeof(hls->key_uri));
    } else {
        FUNC5(hls->key_file, hls->key_basename, sizeof(hls->key_file));
        FUNC5(hls->key_uri, hls->key_basename, sizeof(hls->key_uri));
    }

    if (!*hls->iv_string) {
        uint8_t iv[16] = { 0 };
        char buf[33];

        if (!hls->iv) {
            FUNC1(iv + 8, vs->sequence);
        } else {
            FUNC10(iv, hls->iv, sizeof(iv));
        }
        FUNC9(buf, iv, sizeof(iv), 0);
        buf[32] = '\0';
        FUNC10(hls->iv_string, buf, sizeof(hls->iv_string));
    }

    if (!*hls->key_uri) {
        FUNC2(hls, AV_LOG_ERROR, "no key URI specified in key info file\n");
        return FUNC0(EINVAL);
    }

    if (!*hls->key_file) {
        FUNC2(hls, AV_LOG_ERROR, "no key file specified in key info file\n");
        return FUNC0(EINVAL);
    }

    if (!*hls->key_string) {
        if (!hls->key) {
            if ((ret = FUNC11(key, sizeof(key))) < 0) {
                FUNC2(s, AV_LOG_ERROR, "Cannot generate a strong random key\n");
                return ret;
            }
        } else {
            FUNC10(key, hls->key, sizeof(key));
        }

        FUNC9(hls->key_string, key, sizeof(key), 0);
        if ((ret = s->io_open(s, &pb, hls->key_file, AVIO_FLAG_WRITE, NULL)) < 0)
            return ret;
        FUNC7(pb, 0, SEEK_CUR);
        FUNC8(pb, key, KEYSIZE);
        FUNC6(pb);
    }
    return 0;
}