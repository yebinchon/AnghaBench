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
typedef  int /*<<< orphan*/  gzFile ;

/* Variables and functions */
 int UNZ_OK ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,TYPE_1__*,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (char*) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,unsigned char*,int) ; 

int FUNC13(char *filename, unsigned char *buffer, int maxsize, char *extension)
{
  int size = 0;
  
  if(FUNC0(filename))
  {
    unz_file_info info;
    int ret = 0;
    char fname[256];

    /* Attempt to open the archive */
    unzFile *fd = FUNC10(filename);
    if (!fd) return 0;

    /* Go to first file in archive */
    ret = FUNC9(fd);
    if(ret != UNZ_OK)
    {
      FUNC6(fd);
      return 0;
    }

    /* Get file informations and update filename */
    ret = FUNC8(fd, &info, fname, 256, NULL, 0, NULL, 0);
    if(ret != UNZ_OK)
    {
      FUNC6(fd);
      return 0;
    }

    /* Compressed filename extension */
    if (extension)
    {
      FUNC5(extension, &fname[FUNC4(fname) - 3], 3);
      extension[3] = 0;
    }

    /* Open the file for reading */
    ret = FUNC11(fd);
    if(ret != UNZ_OK)
    {
      FUNC6(fd);
      return 0;
    }

    /* Retrieve uncompressed file size */
    size = info.uncompressed_size;
    if(size > maxsize)
    {
      size = maxsize;
    }

    /* Read (decompress) the file */
    ret = FUNC12(fd, buffer, size);
    if(ret != size)
    {
      FUNC7(fd);
      FUNC6(fd);
      return 0;
    }

    /* Close the current file */
    ret = FUNC7(fd);
    if(ret != UNZ_OK)
    {
      FUNC6(fd);
      return 0;
    }

    /* Close the archive */
    ret = FUNC6(fd);
    if(ret != UNZ_OK) return 0;
  }
  else
  {
    /* Open file */
    gzFile *gd = FUNC2(filename, "rb");
    if (!gd) return 0;

    /* Read file data */
    size = FUNC3(gd, buffer, maxsize);

    /* filename extension */
    if (extension)
    {
      FUNC5(extension, &filename[FUNC4(filename) - 3], 3);
      extension[3] = 0;
    }

    /* Close file */
    FUNC1(gd);
  }

  /* Return loaded ROM size */
  return size;
}