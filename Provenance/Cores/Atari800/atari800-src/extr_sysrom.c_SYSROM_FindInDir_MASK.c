#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct dirent {char* d_name; } ;
typedef  scalar_t__ ULONG ;
struct TYPE_2__ {int size; scalar_t__ crc32; int /*<<< orphan*/  filename; scalar_t__ unset; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ CRC_NULL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FALSE ; 
 int FILENAME_MAX ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (char*,int,int) ; 
 int SYSROM_SIZE ; 
 TYPE_1__* SYSROM_roms ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (char*,char*) ; 
 scalar_t__ num_unset_roms ; 
 int /*<<< orphan*/ * FUNC10 (char const*) ; 
 struct dirent* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC13 (char) ; 

int FUNC14(char const *directory, int only_if_not_set)
{
	DIR *dir;
	struct dirent *entry;

	if (only_if_not_set && num_unset_roms == 0)
		/* No unset ROM paths left. */
		return TRUE;

	if ((dir = FUNC10(directory)) == NULL)
		return FALSE;

	while ((entry = FUNC11(dir)) != NULL) {
		char full_filename[FILENAME_MAX];
		FILE *file;
		int len;
		int id;
		ULONG crc;
		int matched_crc = FALSE;
		FUNC4(full_filename, directory, entry->d_name);
		if ((file = FUNC9(full_filename, "rb")) == NULL)
			/* Ignore non-readable files (e.g. directories). */
			continue;

		len = FUNC5(file);
		/* Don't proceed to CRC computation if the file has invalid size. */
		if (!FUNC2(len)){
			FUNC8(file);
			continue;
		}
		FUNC6(file);

		if (!FUNC0(file, &crc)) {
			FUNC8(file);
			continue;
		}
		FUNC8(file);

		/* Match ROM image by CRC. */
		for (id = 0; id < SYSROM_SIZE; ++id) {
			if ((!only_if_not_set || SYSROM_roms[id].unset)
			    && SYSROM_roms[id].size == len
			    && SYSROM_roms[id].crc32 != CRC_NULL && SYSROM_roms[id].crc32 == crc) {
				FUNC12(SYSROM_roms[id].filename, full_filename);
				FUNC1(id);
				matched_crc = TRUE;
				break;
			}
		}

		if (!matched_crc) {
			/* Match custom ROM image by name. */
			char *c = entry->d_name;
			while (*c != 0) {
				*c = (char)FUNC13(*c);
				++c;
			}

			id = FUNC3(entry->d_name, len, only_if_not_set);
			if (id >= 0){
				FUNC12(SYSROM_roms[id].filename, full_filename);
				FUNC1(id);
			}
		}
	}

	FUNC7(dir);
	return TRUE;
}