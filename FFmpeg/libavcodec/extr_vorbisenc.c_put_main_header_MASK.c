#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int submaps; int coupling_steps; int* magnitude; int* angle; int* mux; int* floor; int* residue; } ;
typedef  TYPE_2__ vorbis_enc_mapping ;
struct TYPE_7__ {int channels; int* log2_blocksize; int ncodebooks; int nfloors; int nresidues; int nmappings; int nmodes; TYPE_1__* modes; TYPE_2__* mappings; int /*<<< orphan*/ * residues; int /*<<< orphan*/ * floors; int /*<<< orphan*/ * codebooks; int /*<<< orphan*/  sample_rate; } ;
typedef  TYPE_3__ vorbis_enc_context ;
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_5__ {int blockflag; int mapping; } ;
typedef  int /*<<< orphan*/  PutBitContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(vorbis_enc_context *venc, uint8_t **out)
{
    int i;
    PutBitContext pb;
    int len, hlens[3];
    int buffer_len = 50000;
    uint8_t *buffer = FUNC2(buffer_len), *p = buffer;
    if (!buffer)
        return FUNC0(ENOMEM);

    // identification header
    FUNC6(&pb, p, buffer_len);
    FUNC8(&pb, 8, 1); //magic
    for (i = 0; "vorbis"[i]; i++)
        FUNC8(&pb, 8, "vorbis"[i]);
    FUNC9(&pb, 0); // version
    FUNC8(&pb,  8, venc->channels);
    FUNC9(&pb, venc->sample_rate);
    FUNC9(&pb, 0); // bitrate
    FUNC9(&pb, 0); // bitrate
    FUNC9(&pb, 0); // bitrate
    FUNC8(&pb,  4, venc->log2_blocksize[0]);
    FUNC8(&pb,  4, venc->log2_blocksize[1]);
    FUNC8(&pb,  1, 1); // framing

    FUNC4(&pb);
    hlens[0] = FUNC10(&pb) >> 3;
    buffer_len -= hlens[0];
    p += hlens[0];

    // comment header
    FUNC6(&pb, p, buffer_len);
    FUNC8(&pb, 8, 3); //magic
    for (i = 0; "vorbis"[i]; i++)
        FUNC8(&pb, 8, "vorbis"[i]);
    FUNC9(&pb, 0); // vendor length TODO
    FUNC9(&pb, 0); // amount of comments
    FUNC8(&pb,  1, 1); // framing

    FUNC4(&pb);
    hlens[1] = FUNC10(&pb) >> 3;
    buffer_len -= hlens[1];
    p += hlens[1];

    // setup header
    FUNC6(&pb, p, buffer_len);
    FUNC8(&pb, 8, 5); //magic
    for (i = 0; "vorbis"[i]; i++)
        FUNC8(&pb, 8, "vorbis"[i]);

    // codebooks
    FUNC8(&pb, 8, venc->ncodebooks - 1);
    for (i = 0; i < venc->ncodebooks; i++)
        FUNC11(&pb, &venc->codebooks[i]);

    // time domain, reserved, zero
    FUNC8(&pb,  6, 0);
    FUNC8(&pb, 16, 0);

    // floors
    FUNC8(&pb, 6, venc->nfloors - 1);
    for (i = 0; i < venc->nfloors; i++)
        FUNC12(&pb, &venc->floors[i]);

    // residues
    FUNC8(&pb, 6, venc->nresidues - 1);
    for (i = 0; i < venc->nresidues; i++)
        FUNC13(&pb, &venc->residues[i]);

    // mappings
    FUNC8(&pb, 6, venc->nmappings - 1);
    for (i = 0; i < venc->nmappings; i++) {
        vorbis_enc_mapping *mc = &venc->mappings[i];
        int j;
        FUNC8(&pb, 16, 0); // mapping type

        FUNC8(&pb, 1, mc->submaps > 1);
        if (mc->submaps > 1)
            FUNC8(&pb, 4, mc->submaps - 1);

        FUNC8(&pb, 1, !!mc->coupling_steps);
        if (mc->coupling_steps) {
            FUNC8(&pb, 8, mc->coupling_steps - 1);
            for (j = 0; j < mc->coupling_steps; j++) {
                FUNC8(&pb, FUNC5(venc->channels - 1), mc->magnitude[j]);
                FUNC8(&pb, FUNC5(venc->channels - 1), mc->angle[j]);
            }
        }

        FUNC8(&pb, 2, 0); // reserved

        if (mc->submaps > 1)
            for (j = 0; j < venc->channels; j++)
                FUNC8(&pb, 4, mc->mux[j]);

        for (j = 0; j < mc->submaps; j++) {
            FUNC8(&pb, 8, 0); // reserved time configuration
            FUNC8(&pb, 8, mc->floor[j]);
            FUNC8(&pb, 8, mc->residue[j]);
        }
    }

    // modes
    FUNC8(&pb, 6, venc->nmodes - 1);
    for (i = 0; i < venc->nmodes; i++) {
        FUNC8(&pb, 1, venc->modes[i].blockflag);
        FUNC8(&pb, 16, 0); // reserved window type
        FUNC8(&pb, 16, 0); // reserved transform type
        FUNC8(&pb, 8, venc->modes[i].mapping);
    }

    FUNC8(&pb, 1, 1); // framing

    FUNC4(&pb);
    hlens[2] = FUNC10(&pb) >> 3;

    len = hlens[0] + hlens[1] + hlens[2];
    p = *out = FUNC2(64 + len + len/255);
    if (!p)
        return FUNC0(ENOMEM);

    *p++ = 2;
    p += FUNC3(p, hlens[0]);
    p += FUNC3(p, hlens[1]);
    buffer_len = 0;
    for (i = 0; i < 3; i++) {
        FUNC7(p, buffer + buffer_len, hlens[i]);
        p += hlens[i];
        buffer_len += hlens[i];
    }

    FUNC1(&buffer);
    return p - *out;
}