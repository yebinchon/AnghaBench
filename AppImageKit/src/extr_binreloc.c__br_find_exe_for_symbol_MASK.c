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
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  BrInitError ;

/* Variables and functions */
 int /*<<< orphan*/  BR_INIT_ERROR_DISABLED ; 
 int SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,size_t) ; 
 scalar_t__ FUNC7 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,void**) ; 
 char* FUNC9 (char*,char) ; 
 scalar_t__ FUNC10 (char*,char*) ; 
 char* FUNC11 (char*) ; 
 size_t FUNC12 (char*) ; 
 int /*<<< orphan*/ * FUNC13 (char*,char*) ; 

__attribute__((used)) static char *
FUNC14 (const void *symbol, BrInitError *error)
{
#ifndef ENABLE_BINRELOC
	if (error)
		*error = BR_INIT_ERROR_DISABLED;
	return (char *) NULL;
#else
	#define SIZE PATH_MAX + 100
	FILE *f;
	size_t address_string_len;
	char *address_string, line[SIZE], *found;

	if (symbol == NULL)
		return (char *) NULL;

	f = fopen ("/proc/self/maps", "r");
	if (f == NULL)
		return (char *) NULL;

	address_string_len = 4;
	address_string = (char *) malloc (address_string_len);
	found = (char *) NULL;

	while (!feof (f)) {
		char *start_addr, *end_addr, *end_addr_end, *file;
		void *start_addr_p, *end_addr_p;
		size_t len;

		if (fgets (line, SIZE, f) == NULL)
			break;

		/* Sanity check. */
		if (strstr (line, " r-xp ") == NULL || strchr (line, '/') == NULL)
			continue;

		/* Parse line. */
		start_addr = line;
		end_addr = strchr (line, '-');
		file = strchr (line, '/');

		/* More sanity check. */
		if (!(file > end_addr && end_addr != NULL && end_addr[0] == '-'))
			continue;

		end_addr[0] = '\0';
		end_addr++;
		end_addr_end = strchr (end_addr, ' ');
		if (end_addr_end == NULL)
			continue;

		end_addr_end[0] = '\0';
		len = strlen (file);
		if (len == 0)
			continue;
		if (file[len - 1] == '\n')
			file[len - 1] = '\0';

		/* Get rid of "(deleted)" from the filename. */
		len = strlen (file);
		if (len > 10 && strcmp (file + len - 10, " (deleted)") == 0)
			file[len - 10] = '\0';

		/* I don't know whether this can happen but better safe than sorry. */
		len = strlen (start_addr);
		if (len != strlen (end_addr))
			continue;


		/* Transform the addresses into a string in the form of 0xdeadbeef,
		 * then transform that into a pointer. */
		if (address_string_len < len + 3) {
			address_string_len = len + 3;
			address_string = (char *) realloc (address_string, address_string_len);
		}

		memcpy (address_string, "0x", 2);
		memcpy (address_string + 2, start_addr, len);
		address_string[2 + len] = '\0';
		sscanf (address_string, "%p", &start_addr_p);

		memcpy (address_string, "0x", 2);
		memcpy (address_string + 2, end_addr, len);
		address_string[2 + len] = '\0';
		sscanf (address_string, "%p", &end_addr_p);


		if (symbol >= start_addr_p && symbol < end_addr_p) {
			found = file;
			break;
		}
	}

	free (address_string);
	fclose (f);

	if (found == NULL)
		return (char *) NULL;
	else
		return strdup (found);
#endif /* ENABLE_BINRELOC */
}