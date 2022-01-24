#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int uncompressed_size; } ;
typedef  TYPE_1__ unz_file_info ;
typedef  int /*<<< orphan*/  unzFile ;
typedef  int /*<<< orphan*/  uint8 ;
typedef  int /*<<< orphan*/  gzFile ;

/* Variables and functions */
 int UNZ_OK ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,TYPE_1__*,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (char*) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

uint8 *FUNC14(char *filename, int *file_size)
{
    int size = 0;
    uint8 *buf = NULL;

    if(FUNC0(filename))
    {
        unzFile *fd = NULL;
        unz_file_info info;
        int ret = 0;

        /* Attempt to open the archive */
        fd = FUNC11(filename);
        if(!fd) return (NULL);

        /* Go to first file in archive */
        ret = FUNC10(fd);
        if(ret != UNZ_OK)
        {
            FUNC7(fd);
            return (NULL);
        }

        ret = FUNC9(fd, &info, filename, 128, NULL, 0, NULL, 0);
        if(ret != UNZ_OK)
        {
            FUNC7(fd);
            return (NULL);
        }

        /* Open the file for reading */
        ret = FUNC12(fd);
        if(ret != UNZ_OK)
        {
            FUNC7(fd);
            return (NULL);
        }

        /* Allocate file data buffer */
        size = info.uncompressed_size;
        buf = FUNC6(size);
        if(!buf)
        {
            FUNC7(fd);
            return (NULL);
        }

        /* Read (decompress) the file */
        ret = FUNC13(fd, buf, info.uncompressed_size);
        if(ret != info.uncompressed_size)
        {
            FUNC1(buf);
            FUNC8(fd);
            FUNC7(fd);
            return (NULL);
        }

        /* Close the current file */
        ret = FUNC8(fd);
        if(ret != UNZ_OK)
        {
            FUNC1(buf);
            FUNC7(fd);
            return (NULL);
        }

        /* Close the archive */
        ret = FUNC7(fd);
        if(ret != UNZ_OK)
        {
            FUNC1(buf);
            return (NULL);
        }

        /* Update file size and return pointer to file data */
        *file_size = size;
        return (buf);
    }
    else
    {
        gzFile *gd = NULL;

        /* Open file */
        gd = FUNC3(filename, "rb");
        if(!gd) return (0);

        /* Get file size */
        size = FUNC5(gd);

        /* Allocate file data buffer */
        buf = FUNC6(size);
        if(!buf)
        {
            FUNC2(gd);
            return (0);
        }

        /* Read file data */
        FUNC4(gd, buf, size);

        /* Close file */
        FUNC2(gd);

        /* Update file size and return pointer to file data */
        *file_size = size;
        return (buf);
    }
}