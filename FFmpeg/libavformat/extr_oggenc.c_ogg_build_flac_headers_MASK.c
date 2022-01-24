#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_6__ {int extradata_size; char* extradata; } ;
struct TYPE_5__ {int* header_len; int /*<<< orphan*/ ** header; } ;
typedef  TYPE_1__ OGGStreamContext ;
typedef  int /*<<< orphan*/  AVDictionary ;
typedef  TYPE_2__ AVCodecParameters ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FLAC_STREAMINFO_SIZE ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/ * FUNC6 (int,int,int*,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(AVCodecParameters *par,
                                  OGGStreamContext *oggstream, int bitexact,
                                  AVDictionary **m)
{
    uint8_t *p;

    if (par->extradata_size < FLAC_STREAMINFO_SIZE)
        return FUNC0(EINVAL);

    // first packet: STREAMINFO
    oggstream->header_len[0] = 51;
    oggstream->header[0] = FUNC1(51); // per ogg flac specs
    p = oggstream->header[0];
    if (!p)
        return FUNC0(ENOMEM);
    FUNC5(&p, 0x7F);
    FUNC4(&p, "FLAC", 4);
    FUNC5(&p, 1); // major version
    FUNC5(&p, 0); // minor version
    FUNC2(&p, 1); // headers packets without this one
    FUNC4(&p, "fLaC", 4);
    FUNC5(&p, 0x00); // streaminfo
    FUNC3(&p, 34);
    FUNC4(&p, par->extradata, FLAC_STREAMINFO_SIZE);

    // second packet: VorbisComment
    p = FUNC6(4, bitexact, &oggstream->header_len[1], m, 0, NULL, 0);
    if (!p)
        return FUNC0(ENOMEM);
    oggstream->header[1] = p;
    FUNC5(&p, 0x84); // last metadata block and vorbis comment
    FUNC3(&p, oggstream->header_len[1] - 4);

    return 0;
}