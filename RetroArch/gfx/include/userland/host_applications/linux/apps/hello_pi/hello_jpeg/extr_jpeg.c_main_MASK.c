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
typedef  int /*<<< orphan*/  OPENMAX_JPEG_DECODER ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 int FUNC6 (char*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ ) ; 
 size_t FUNC9 (int /*<<< orphan*/ *) ; 
 char* FUNC10 (size_t) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 int FUNC12 (int /*<<< orphan*/ **) ; 

int
FUNC13(int argc, char *argv[])
{
    OPENMAX_JPEG_DECODER *pDecoder;
    char           *sourceImage;
    size_t          imageSize;
    int             s;
    if (argc < 2) {
	FUNC11("Usage: %s <filename>\n", argv[0]);
	return -1;
    }
    FILE           *fp = FUNC5(argv[1], "rb");
    if (!fp) {
	FUNC11("File %s not found.\n", argv[1]);
    }
    FUNC8(fp, 0L, SEEK_END);
    imageSize = FUNC9(fp);
    FUNC8(fp, 0L, SEEK_SET);
    sourceImage = FUNC10(imageSize);
    FUNC0(sourceImage != NULL);
    s = FUNC6(sourceImage, 1, imageSize, fp);
    FUNC0(s == imageSize);
    FUNC4(fp);
    FUNC1();
    s = FUNC12(&pDecoder);
    FUNC0(s == 0);
    s = FUNC3(pDecoder, sourceImage, imageSize);
    FUNC0(s == 0);
    FUNC2(pDecoder);
    FUNC7(sourceImage);
    return 0;
}