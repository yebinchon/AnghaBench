#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  char uint8_t ;
typedef  int uint32_t ;
struct TYPE_9__ {char* buffer; } ;
typedef  TYPE_1__ PutByteContext ;

/* Variables and functions */
 int /*<<< orphan*/  APP0 ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  DHT ; 
 int /*<<< orphan*/  DQT ; 
 int /*<<< orphan*/  DRI ; 
 int /*<<< orphan*/  SOF0 ; 
 int /*<<< orphan*/  SOI ; 
 int /*<<< orphan*/  SOS ; 
 int /*<<< orphan*/  avpriv_mjpeg_bits_ac_chrominance ; 
 int /*<<< orphan*/  avpriv_mjpeg_bits_ac_luminance ; 
 int /*<<< orphan*/  avpriv_mjpeg_bits_dc_chrominance ; 
 int /*<<< orphan*/  avpriv_mjpeg_bits_dc_luminance ; 
 int /*<<< orphan*/  avpriv_mjpeg_val_ac_chrominance ; 
 int /*<<< orphan*/  avpriv_mjpeg_val_ac_luminance ; 
 int /*<<< orphan*/  avpriv_mjpeg_val_dc ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(uint8_t *buf, int size, uint32_t type, uint32_t w,
                              uint32_t h, const uint8_t *qtable, int nb_qtable,
                              int dri)
{
    PutByteContext pbc;
    uint8_t *dht_size_ptr;
    int dht_size, i;

    FUNC1(&pbc, buf, size);

    /* Convert from blocks to pixels. */
    w <<= 3;
    h <<= 3;

    /* SOI */
    FUNC7(&pbc, SOI);

    /* JFIF header */
    FUNC7(&pbc, APP0);
    FUNC2(&pbc, 16);
    FUNC3(&pbc, "JFIF", 5);
    FUNC2(&pbc, 0x0201);
    FUNC4(&pbc, 0);
    FUNC2(&pbc, 1);
    FUNC2(&pbc, 1);
    FUNC4(&pbc, 0);
    FUNC4(&pbc, 0);

    if (dri) {
        FUNC7(&pbc, DRI);
        FUNC2(&pbc, 4);
        FUNC2(&pbc, dri);
    }

    /* DQT */
    FUNC7(&pbc, DQT);
    FUNC2(&pbc, 2 + nb_qtable * (1 + 64));

    for (i = 0; i < nb_qtable; i++) {
        FUNC4(&pbc, i);

        /* Each table is an array of 64 values given in zig-zag
         * order, identical to the format used in a JFIF DQT
         * marker segment. */
        FUNC3(&pbc, qtable + 64 * i, 64);
    }

    /* DHT */
    FUNC7(&pbc, DHT);
    dht_size_ptr = pbc.buffer;
    FUNC2(&pbc, 0);

    dht_size  = 2;
    dht_size += FUNC6(&pbc, 0, 0,avpriv_mjpeg_bits_dc_luminance,
                                          avpriv_mjpeg_val_dc);
    dht_size += FUNC6(&pbc, 0, 1, avpriv_mjpeg_bits_dc_chrominance,
                                          avpriv_mjpeg_val_dc);
    dht_size += FUNC6(&pbc, 1, 0, avpriv_mjpeg_bits_ac_luminance,
                                          avpriv_mjpeg_val_ac_luminance);
    dht_size += FUNC6(&pbc, 1, 1, avpriv_mjpeg_bits_ac_chrominance,
                                          avpriv_mjpeg_val_ac_chrominance);
    FUNC0(dht_size_ptr, dht_size);

    /* SOF0 */
    FUNC7(&pbc, SOF0);
    FUNC2(&pbc, 17); /* size */
    FUNC4(&pbc, 8); /* bits per component */
    FUNC2(&pbc, h);
    FUNC2(&pbc, w);
    FUNC4(&pbc, 3); /* number of components */
    FUNC4(&pbc, 1); /* component number */
    FUNC4(&pbc, (2 << 4) | (type ? 2 : 1)); /* hsample/vsample */
    FUNC4(&pbc, 0); /* matrix number */
    FUNC4(&pbc, 2); /* component number */
    FUNC4(&pbc, 1 << 4 | 1); /* hsample/vsample */
    FUNC4(&pbc, nb_qtable == 2 ? 1 : 0); /* matrix number */
    FUNC4(&pbc, 3); /* component number */
    FUNC4(&pbc, 1 << 4 | 1); /* hsample/vsample */
    FUNC4(&pbc, nb_qtable == 2 ? 1 : 0); /* matrix number */

    /* SOS */
    FUNC7(&pbc, SOS);
    FUNC2(&pbc, 12);
    FUNC4(&pbc, 3);
    FUNC4(&pbc, 1);
    FUNC4(&pbc, 0);
    FUNC4(&pbc, 2);
    FUNC4(&pbc, 17);
    FUNC4(&pbc, 3);
    FUNC4(&pbc, 17);
    FUNC4(&pbc, 0);
    FUNC4(&pbc, 63);
    FUNC4(&pbc, 0);

    /* Return the length in bytes of the JPEG header. */
    return FUNC5(&pbc);
}