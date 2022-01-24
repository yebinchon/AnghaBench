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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FALSE ; 
 int FILENAME_MAX ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int NCOLUMNS ; 
 int /*<<< orphan*/  NROWS ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (int,int,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int,int,char*,int*) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int UI_USER_DELETE ; 
 int UI_USER_TOGGLE ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,char const*) ; 
 scalar_t__ FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 char const** filenames ; 
 int n_filenames ; 
 int /*<<< orphan*/  FUNC13 (char*,char) ; 
 scalar_t__ FUNC14 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*) ; 
 char* FUNC16 (char const*,char) ; 

__attribute__((used)) static int FUNC17(char *path, int select_dir, char pDirectories[][FILENAME_MAX], int nDirectories)
{
	char current_dir[FILENAME_MAX];
	char highlighted_file[FILENAME_MAX + 2]; /* +2 for square brackets */
	highlighted_file[0] = '\0';
	if (path[0] == '\0' && nDirectories > 0)
		FUNC15(current_dir, pDirectories[0]);
	else if (select_dir)
		FUNC15(current_dir, path);
	else
		FUNC11(path, current_dir, highlighted_file);
#ifdef __DJGPP__
	{
		char help_dir[FILENAME_MAX];
		_fixpath(current_dir, help_dir);
		strcpy(current_dir, help_dir);
	}
#elif defined(HAVE_GETCWD)
	if (current_dir[0] == '\0' || (current_dir[0] == '.' && current_dir[1] == '\0'))
#else
	if (current_dir[0] == '\0')
#endif
		FUNC4(current_dir);
	for (;;) {
		int index = 0;
		int i;

#define NROWS 20
#define NCOLUMNS 2
#define MAX_FILES (NROWS * NCOLUMNS)

		/* The WinCE version may spend several seconds when there are many
		   files in the directory. */
		/* The extra spaces are needed to clear the previous window title. */
		FUNC8("            Please wait...            ");
		FUNC6();

		for (;;) {
			FUNC5(current_dir);

			if (n_filenames > 0)
				break;

			/* Can't read directory - maybe it doesn't exist?
			   Split the last part from the path and try again. */
			FUNC3();
			{
				char temp[FILENAME_MAX];
				FUNC15(temp, current_dir);
				FUNC11(temp, current_dir, NULL);
			}
			if (current_dir[0] == '\0') {
				/* Path couldn't be split further.
				   Try the working directory as a last resort. */
				FUNC4(current_dir);
				FUNC5(current_dir);
				if (n_filenames >= 0)
					break;

				FUNC3();
				FUNC0("No files inside directory", 1);
				return FALSE;
			}
		}

		if (highlighted_file[0] != '\0') {
			for (i = 0; i < n_filenames; i++) {
				if (FUNC14(filenames[i], highlighted_file) == 0) {
					index = i;
					break;
				}
			}
		}

		for (;;) {
			int seltype;
			const char *selected_filename;

			FUNC2();
			FUNC8(current_dir);
			FUNC1(0x9a, 0x94, 0, 1, 39, 23);

			index = FUNC7(index, n_filenames, filenames, NULL, NULL, NULL, NULL,
			               NROWS, NCOLUMNS, 1, 2, 37 / NCOLUMNS, FALSE,
			               select_dir ? "Space: select current directory" : NULL,
			               &seltype);

			if (index == -2) {
				/* Tab = next favourite directory */
				if (nDirectories > 0) {
					/* default: pDirectories[0] */
					int current_index = nDirectories - 1;
					/* are we in one of pDirectories? */
					for (i = 0; i < nDirectories; i++)
						if (FUNC14(pDirectories[i], current_dir) == 0) {
							current_index = i;
							break;
						}
					i = current_index;
					do {
						if (++i >= nDirectories)
							i = 0;
						if (FUNC10(pDirectories[i])) {
							FUNC15(current_dir, pDirectories[i]);
							break;
						}
					} while (i != current_index);
				}
				highlighted_file[0] = '\0';
				break;
			}
			if (index < 0) {
				/* Esc = cancel */
				FUNC3();
				return FALSE;
			}
			if (seltype == UI_USER_DELETE) {
				/* Backspace = parent directory */
				char new_dir[FILENAME_MAX];
				FUNC11(current_dir, new_dir, highlighted_file + 1);
				if (FUNC10(new_dir)) {
					FUNC15(current_dir, new_dir);
					highlighted_file[0] = '[';
					FUNC13(highlighted_file, ']');
					break;
				}
				FUNC0("Cannot enter parent directory", 1);
				continue;
			}
			if (seltype == UI_USER_TOGGLE && select_dir) {
				/* Space = select current directory */
				FUNC15(path, current_dir);
				FUNC3();
				return TRUE;
			}
			selected_filename = filenames[index];
			if (selected_filename[0] == '[') {
				/* Change directory */
				char new_dir[FILENAME_MAX];

				highlighted_file[0] = '\0';
				if (FUNC14(selected_filename, "[..]") == 0) {
					/* go up */
					FUNC11(current_dir, new_dir, highlighted_file + 1);
					highlighted_file[0] = '[';
					FUNC13(highlighted_file, ']');
				}
#ifdef PS2
				else if (strcmp(selected_filename, "[mc0:]") == 0) {
					strcpy(new_dir, "mc0:/");
				}
#endif
#ifdef DOS_DRIVES
				else if (selected_filename[2] == ':' && selected_filename[3] == ']') {
					/* disk selected */
					new_dir[0] = selected_filename[1];
					new_dir[1] = ':';
					new_dir[2] = '\\';
					new_dir[3] = '\0';
				}
#endif
				else {
					/* directory selected */
					char *pbracket = FUNC16(selected_filename, ']');
					if (pbracket == NULL)
						continue; /* XXX: regular file? */
					*pbracket = '\0';	/*cut ']' */
					FUNC9(new_dir, current_dir, selected_filename + 1);
				}
				/* check if new directory is valid */
				if (FUNC10(new_dir)) {
					FUNC15(current_dir, new_dir);
					break;
				}
				FUNC0("Cannot enter selected directory", 1);
				continue;
			}
			if (!select_dir) {
				/* normal filename selected */
				FUNC9(path, current_dir, selected_filename);
				FUNC3();
				return TRUE;
			}
		}

		FUNC3();
	}
}