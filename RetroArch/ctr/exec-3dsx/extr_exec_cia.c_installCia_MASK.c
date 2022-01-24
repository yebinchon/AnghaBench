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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  Result ;
typedef  int /*<<< orphan*/  Handle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FILE_CHUNK_SIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MEDIATYPE_SD ; 
 scalar_t__ RD_ALREADY_EXISTS ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(Handle ciaFile){
	Result failed;
	Handle outputHandle;
	u64 fileSize;
	u64 fileOffset = 0;
	u32 bytesRead;
	u32 bytesWritten;
	u8 transferBuffer[FILE_CHUNK_SIZE];

	failed = FUNC2(MEDIATYPE_SD, &outputHandle);
	if(FUNC7(failed))
		return -1;

	failed = FUNC3(ciaFile, &fileSize);
	if(FUNC7(failed))
		return -1;

	while(fileOffset < fileSize){
		u64 bytesRemaining = fileSize - fileOffset;
		failed = FUNC4(ciaFile, &bytesRead, fileOffset, transferBuffer, bytesRemaining < FILE_CHUNK_SIZE ? bytesRemaining : FILE_CHUNK_SIZE);
		if(FUNC7(failed)){
			FUNC0(outputHandle);
			return -1;
		}

		failed = FUNC5(outputHandle, &bytesWritten, fileOffset, transferBuffer, bytesRead, 0);
		if(FUNC7(failed)){
			FUNC0(outputHandle);
			if(FUNC6(failed) == RD_ALREADY_EXISTS)
				return 1;
			return -1;
		}

		if(bytesWritten != bytesRead){
			FUNC0(outputHandle);
			return -1;
		}

		fileOffset += bytesWritten;
	}

	failed = FUNC1(outputHandle);
	if(FUNC7(failed))
		return -1;

	return 1;
}