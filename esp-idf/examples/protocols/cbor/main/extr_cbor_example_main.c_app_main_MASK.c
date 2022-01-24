#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  CborValue ;
typedef  int /*<<< orphan*/  CborParser ;
typedef  int /*<<< orphan*/  CborEncoder ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,double) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  stdout ; 

void FUNC16(void)
{
    CborEncoder root_encoder;
    CborParser root_parser;
    CborValue it;
    uint8_t buf[100];

    // Initialize the outermost cbor encoder
    FUNC11(&root_encoder, buf, sizeof(buf), 0);

    // Create an array containing several items
    CborEncoder array_encoder;
    CborEncoder map_encoder;
    FUNC8(&root_encoder, &array_encoder, 5); // [
    // 1. Create a map containing several pairs
    FUNC9(&array_encoder, &map_encoder, 3); // {
    // chip:esp32
    FUNC4(&map_encoder, "chip");
    FUNC4(&map_encoder, "esp32");
    // unicore:false
    FUNC4(&map_encoder, "unicore");
    FUNC1(&map_encoder, false);
    // ip:[192,168,1,100]
    FUNC4(&map_encoder, "ip");
    CborEncoder array2;
    FUNC8(&map_encoder, &array2, 4); // [
    // Encode several numbers
    FUNC5(&array2, 192);
    FUNC5(&array2, 168);
    FUNC5(&array2, 1);
    FUNC5(&array2, 100);
    FUNC7(&map_encoder, &array2);        // ]
    FUNC7(&array_encoder, &map_encoder); // }
    // 2. Encode float number
    FUNC2(&array_encoder, 3.14);
    // 3. Encode simple value
    FUNC3(&array_encoder, 99);
    // 4. Encode a string
    FUNC4(&array_encoder, "2019-07-10 09:00:00+0000");
    // 5. Encode a undefined value
    FUNC6(&array_encoder);
    FUNC7(&root_encoder, &array_encoder); // ]

    // If error happend when encoding, then this value should be meaningless
    FUNC0(TAG, "encoded buffer size %d", FUNC10(&root_encoder, buf));

    // Initialize the cbor parser and the value iterator
    FUNC12(buf, sizeof(buf), 0, &root_parser, &it);

    FUNC0(TAG, "convert CBOR to JSON");
    // Dump the values in JSON format
    FUNC13(stdout, &it, 0);
    FUNC15("");

    FUNC0(TAG, "decode CBOR manually");
    // Decode CBOR data manully
    FUNC14(&it, 0);
}