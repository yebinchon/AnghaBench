#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int number_entry; } ;
typedef  TYPE_1__ unz_global_info ;
struct TYPE_9__ {scalar_t__ uncompressed_size; void* crc; } ;
typedef  TYPE_2__ unz_file_info ;
typedef  int /*<<< orphan*/  unzFile ;
struct TYPE_10__ {int hashSize; char* pakFilename; char* pakBasename; int numfiles; TYPE_4__* buildBuffer; void* pure_checksum; void* checksum; TYPE_4__** hashTable; int /*<<< orphan*/  handle; } ;
typedef  TYPE_3__ pack_t ;
typedef  int /*<<< orphan*/  filename_inzip ;
struct TYPE_11__ {char* name; struct TYPE_11__* next; int /*<<< orphan*/  pos; } ;
typedef  TYPE_4__ fileInPack_t ;

/* Variables and functions */
 void* FUNC0 (int*,int) ; 
 void* FUNC1 (int*,int,void*) ; 
 long FUNC2 (char*,int) ; 
 void* FUNC3 (void*) ; 
 int MAX_FILEHASH_SIZE ; 
 int MAX_ZPATH ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int) ; 
 int UNZ_OK ; 
 int /*<<< orphan*/  FUNC7 (int*) ; 
 void* FUNC8 (int) ; 
 void* fs_checksumFeed ; 
 int fs_packFiles ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int FUNC10 (char*) ; 
 int FUNC11 (int /*<<< orphan*/ ,TYPE_2__*,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 

__attribute__((used)) static pack_t *FUNC17( char *zipfile, const char *basename )
{
	fileInPack_t	*buildBuffer;
	pack_t			*pack;
	unzFile			uf;
	int				err;
	unz_global_info gi;
	char			filename_inzip[MAX_ZPATH];
	unz_file_info	file_info;
	int				i, len;
	long			hash;
	int				fs_numHeaderLongs;
	int				*fs_headerLongs;
	char			*namePtr;

	fs_numHeaderLongs = 0;

	uf = FUNC16(zipfile);
	err = FUNC13 (uf,&gi);

	if (err != UNZ_OK)
		return NULL;

	fs_packFiles += gi.number_entry;

	len = 0;
	FUNC14(uf);
	for (i = 0; i < gi.number_entry; i++)
	{
		err = FUNC11(uf, &file_info, filename_inzip, sizeof(filename_inzip), NULL, 0, NULL, 0);
		if (err != UNZ_OK) {
			break;
		}
		len += FUNC10(filename_inzip) + 1;
		FUNC15(uf);
	}

	buildBuffer = FUNC8( (gi.number_entry * sizeof( fileInPack_t )) + len );
	namePtr = ((char *) buildBuffer) + gi.number_entry * sizeof( fileInPack_t );
	fs_headerLongs = FUNC8( gi.number_entry * sizeof(int) );

	// get the hash table size from the number of files in the zip
	// because lots of custom pk3 files have less than 32 or 64 files
	for (i = 1; i <= MAX_FILEHASH_SIZE; i <<= 1) {
		if (i > gi.number_entry) {
			break;
		}
	}

	pack = FUNC8( sizeof( pack_t ) + i * sizeof(fileInPack_t *) );
	pack->hashSize = i;
	pack->hashTable = (fileInPack_t **) (((char *) pack) + sizeof( pack_t ));
	for(i = 0; i < pack->hashSize; i++) {
		pack->hashTable[i] = NULL;
	}

	FUNC6( pack->pakFilename, zipfile, sizeof( pack->pakFilename ) );
	FUNC6( pack->pakBasename, basename, sizeof( pack->pakBasename ) );

	// strip .pk3 if needed
	if ( FUNC10( pack->pakBasename ) > 4 && !FUNC4( pack->pakBasename + FUNC10( pack->pakBasename ) - 4, ".pk3" ) ) {
		pack->pakBasename[FUNC10( pack->pakBasename ) - 4] = 0;
	}

	pack->handle = uf;
	pack->numfiles = gi.number_entry;
	FUNC14(uf);

	for (i = 0; i < gi.number_entry; i++)
	{
		err = FUNC11(uf, &file_info, filename_inzip, sizeof(filename_inzip), NULL, 0, NULL, 0);
		if (err != UNZ_OK) {
			break;
		}
		if (file_info.uncompressed_size > 0) {
			fs_headerLongs[fs_numHeaderLongs++] = FUNC3(file_info.crc);
		}
		FUNC5( filename_inzip );
		hash = FUNC2(filename_inzip, pack->hashSize);
		buildBuffer[i].name = namePtr;
		FUNC9( buildBuffer[i].name, filename_inzip );
		namePtr += FUNC10(filename_inzip) + 1;
		// store the file position in the zip
		FUNC12(uf, &buildBuffer[i].pos);
		//
		buildBuffer[i].next = pack->hashTable[hash];
		pack->hashTable[hash] = &buildBuffer[i];
		FUNC15(uf);
	}

	pack->checksum = FUNC0( fs_headerLongs, 4 * fs_numHeaderLongs );
	pack->pure_checksum = FUNC1( fs_headerLongs, 4 * fs_numHeaderLongs, FUNC3(fs_checksumFeed) );
	pack->checksum = FUNC3( pack->checksum );
	pack->pure_checksum = FUNC3( pack->pure_checksum );

	FUNC7(fs_headerLongs);

	pack->buildBuffer = buildBuffer;
	return pack;
}