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
struct TYPE_9__ {int (* io_open ) (TYPE_2__*,int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;TYPE_1__* priv_data; } ;
struct TYPE_8__ {char* key_info_file; char* key_uri; char* key_file; char* iv_string; int /*<<< orphan*/  key_string; } ;
typedef  TYPE_1__ HLSContext ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int /*<<< orphan*/  AVIO_FLAG_READ ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int KEYSIZE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 size_t FUNC6 (char*,char*) ; 
 int FUNC7 (TYPE_2__*,int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_2__*,int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(AVFormatContext *s)
{
    HLSContext *hls = s->priv_data;
    int ret;
    AVIOContext *pb;
    uint8_t key[KEYSIZE];

    if ((ret = s->io_open(s, &pb, hls->key_info_file, AVIO_FLAG_READ, NULL)) < 0) {
        FUNC1(hls, AV_LOG_ERROR,
               "error opening key info file %s\n", hls->key_info_file);
        return ret;
    }

    FUNC5(pb, hls->key_uri, sizeof(hls->key_uri));
    hls->key_uri[FUNC6(hls->key_uri, "\r\n")] = '\0';

    FUNC5(pb, hls->key_file, sizeof(hls->key_file));
    hls->key_file[FUNC6(hls->key_file, "\r\n")] = '\0';

    FUNC5(pb, hls->iv_string, sizeof(hls->iv_string));
    hls->iv_string[FUNC6(hls->iv_string, "\r\n")] = '\0';

    FUNC4(s, &pb);

    if (!*hls->key_uri) {
        FUNC1(hls, AV_LOG_ERROR, "no key URI specified in key info file\n");
        return FUNC0(EINVAL);
    }

    if (!*hls->key_file) {
        FUNC1(hls, AV_LOG_ERROR, "no key file specified in key info file\n");
        return FUNC0(EINVAL);
    }

    if ((ret = s->io_open(s, &pb, hls->key_file, AVIO_FLAG_READ, NULL)) < 0) {
        FUNC1(hls, AV_LOG_ERROR, "error opening key file %s\n", hls->key_file);
        return ret;
    }

    ret = FUNC2(pb, key, sizeof(key));
    FUNC4(s, &pb);
    if (ret != sizeof(key)) {
        FUNC1(hls, AV_LOG_ERROR, "error reading key file %s\n", hls->key_file);
        if (ret >= 0 || ret == AVERROR_EOF)
            ret = FUNC0(EINVAL);
        return ret;
    }
    FUNC3(hls->key_string, key, sizeof(key), 0);

    return 0;
}