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
typedef  scalar_t__ ZSTD_dictContentType_e ;
struct TYPE_3__ {int entropyPresent; int dictSize; char const* dictContent; int /*<<< orphan*/  entropy; void* dictID; } ;
typedef  TYPE_1__ ZSTD_DDict ;
typedef  scalar_t__ U32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (char const*) ; 
 int ZSTD_FRAMEIDSIZE ; 
 scalar_t__ const ZSTD_MAGIC_DICTIONARY ; 
 scalar_t__ ZSTD_dct_fullDict ; 
 scalar_t__ ZSTD_dct_rawContent ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  dictionary_corrupted ; 

__attribute__((used)) static size_t
FUNC4(ZSTD_DDict* ddict,
                           ZSTD_dictContentType_e dictContentType)
{
    ddict->dictID = 0;
    ddict->entropyPresent = 0;
    if (dictContentType == ZSTD_dct_rawContent) return 0;

    if (ddict->dictSize < 8) {
        if (dictContentType == ZSTD_dct_fullDict)
            return FUNC1(dictionary_corrupted);   /* only accept specified dictionaries */
        return 0;   /* pure content mode */
    }
    {   U32 const magic = FUNC2(ddict->dictContent);
        if (magic != ZSTD_MAGIC_DICTIONARY) {
            if (dictContentType == ZSTD_dct_fullDict)
                return FUNC1(dictionary_corrupted);   /* only accept specified dictionaries */
            return 0;   /* pure content mode */
        }
    }
    ddict->dictID = FUNC2((const char*)ddict->dictContent + ZSTD_FRAMEIDSIZE);

    /* load entropy tables */
    FUNC0( FUNC3(&ddict->entropy,
                                ddict->dictContent, ddict->dictSize),
             dictionary_corrupted );
    ddict->entropyPresent = 1;
    return 0;
}