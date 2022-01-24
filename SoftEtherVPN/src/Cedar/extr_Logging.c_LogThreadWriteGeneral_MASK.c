#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  file_name ;
typedef  int /*<<< orphan*/  current_file_name ;
typedef  scalar_t__ UINT64 ;
typedef  int UINT ;
struct TYPE_20__ {int num_item; } ;
struct TYPE_19__ {scalar_t__ Size; int /*<<< orphan*/  Buf; } ;
struct TYPE_18__ {scalar_t__ CurrentFilePointer; int log_number_incremented; int CurrentLogNumber; int /*<<< orphan*/  DirName; int /*<<< orphan*/  SwitchType; int /*<<< orphan*/  Prefix; int /*<<< orphan*/  FlushEvent; TYPE_6__* RecordQueue; } ;
struct TYPE_17__ {int /*<<< orphan*/  Tick; } ;
typedef  TYPE_1__ RECORD ;
typedef  TYPE_2__ LOG ;
typedef  int /*<<< orphan*/  IO ;
typedef  TYPE_3__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 () ; 
 TYPE_1__* FUNC10 (TYPE_6__*) ; 
 int FUNC11 (char*) ; 
 scalar_t__ LOG_ENGINE_BUFFER_CACHE_SIZE_MAX ; 
 int LOG_ENGINE_SAVE_START_CACHE_COUNT ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_6__*) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (TYPE_2__*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 scalar_t__ FUNC20 (char*,char*) ; 
 int /*<<< orphan*/  FUNC21 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_3__*,TYPE_1__*) ; 

__attribute__((used)) static bool FUNC26(LOG *log_object, BUF *buffer, IO **io, bool *log_date_changed, char *current_logfile_datename, char *current_file_name)
{
	RECORD *rec;
	char file_name[MAX_SIZE];
	UINT num;

	// Retrieve a record from the head of the queue
	FUNC13(log_object->RecordQueue);
	{
		rec = FUNC10(log_object->RecordQueue);
		num = log_object->RecordQueue->num_item;
	}
	FUNC23(log_object->RecordQueue);

#ifdef	OS_WIN32
	if (num >= LOG_ENGINE_SAVE_START_CACHE_COUNT)
	{
		// Raise the priority
		Debug("LOG_THREAD: MsSetThreadPriorityRealtime\n");
		MsSetThreadPriorityRealtime();
	}

	if (num < (LOG_ENGINE_SAVE_START_CACHE_COUNT / 2))
	{
		// Restore the priority
		Debug("LOG_THREAD: MsSetThreadPriorityIdle\n");
		MsSetThreadPriorityIdle();
	}
#endif	// OS_WIN32

	if (buffer->Size > FUNC9())
	{
		// Erase if the size of the buffer is larger than the maximum log file size
		FUNC0(buffer);
	}

	if (buffer->Size >= LOG_ENGINE_BUFFER_CACHE_SIZE_MAX)
	{
		// Write the contents of the buffer to the file
		if (*io != NULL)
		{
			if ((log_object->CurrentFilePointer + (UINT64)buffer->Size) > FUNC9())
			{
				if (log_object->log_number_incremented == false)
				{
					log_object->CurrentLogNumber++;
					log_object->log_number_incremented = true;
				}
			}
			else
			{
				if (FUNC7(*io, buffer->Buf, buffer->Size) == false)
				{
					FUNC2(*io, true);
					// If it fails to write to the file,
					// erase the buffer and give up
					FUNC0(buffer);
					*io = NULL;
				}
				else
				{
					log_object->CurrentFilePointer += (UINT64)buffer->Size;
					FUNC0(buffer);
				}
			}
		}
	}

	if (rec == NULL)
	{
		if (buffer->Size != 0)
		{
			// Write the contents of the buffer to the file
			if (*io != NULL)
			{
				if ((log_object->CurrentFilePointer + (UINT64)buffer->Size) > FUNC9())
				{
					if (log_object->log_number_incremented == false)
					{
						log_object->CurrentLogNumber++;
						log_object->log_number_incremented = true;
					}
				}
				else
				{
					if (FUNC7(*io, buffer->Buf, buffer->Size) == false)
					{
						FUNC2(*io, true);
						// If it fails to write to the file,
						// erase the buffer and give up
						FUNC0(buffer);
						*io = NULL;
					}
					else
					{
						log_object->CurrentFilePointer += (UINT64)buffer->Size;
						FUNC0(buffer);
					}
				}
			}
		}

		FUNC18(log_object->FlushEvent);
		return false;
	}

	// Generate a log file name
	FUNC12(log_object);
	{
		*log_date_changed = FUNC15(log_object, file_name, sizeof(file_name),
			log_object->DirName, log_object->Prefix, rec->Tick, log_object->SwitchType, log_object->CurrentLogNumber, current_logfile_datename);

		if (*log_date_changed)
		{
			UINT i;

			log_object->CurrentLogNumber = 0;
			FUNC15(log_object, file_name, sizeof(file_name),
				log_object->DirName, log_object->Prefix, rec->Tick, log_object->SwitchType, 0, current_logfile_datename);
			for (i = 0;;i++)
			{
				char tmp[MAX_SIZE];
				FUNC15(log_object, tmp, sizeof(tmp),
					log_object->DirName, log_object->Prefix, rec->Tick, log_object->SwitchType, i, current_logfile_datename);

				if (FUNC11(tmp) == false)
				{
					break;
				}
				FUNC21(file_name, sizeof(file_name), tmp);
				log_object->CurrentLogNumber = i;
			}
		}
	}
	FUNC22(log_object);

	if (*io != NULL)
	{
		if (FUNC20(current_file_name, file_name) != 0)
		{
			// If a log file is currently opened and writing to another log
			// file is needed for this time, write the contents of the 
			//buffer and close the log file. Write the contents of the buffer
			if (*io != NULL)
			{
				if (*log_date_changed)
				{
					if ((log_object->CurrentFilePointer + (UINT64)buffer->Size) <= FUNC9())
					{
						if (FUNC7(*io, buffer->Buf, buffer->Size) == false)
						{
							FUNC2(*io, true);
							FUNC0(buffer);
							*io = NULL;
						}
						else
						{
							log_object->CurrentFilePointer += (UINT64)buffer->Size;
							FUNC0(buffer);
						}
					}
				}
				// Close the file
				FUNC2(*io, true);
			}

			log_object->log_number_incremented = false;

			// Open or create a new log file
			FUNC21(current_file_name, sizeof(current_file_name), file_name);
			*io = FUNC4(file_name, true);
			if (*io == NULL)
			{
				// Create a log file
				FUNC12(log_object);
				{
					FUNC14(log_object->DirName);

#ifdef	OS_WIN32
					Win32SetFolderCompress(log_object->DirName, true);
#endif	// OS_WIN32
				}
				FUNC22(log_object);
				*io = FUNC3(file_name);
				log_object->CurrentFilePointer = 0;
			}
			else
			{
				// Seek to the end of the log file
				log_object->CurrentFilePointer = FUNC6(*io);
				FUNC5(*io, SEEK_END, 0);
			}
		}
	}
	else
	{
		// Open or create a new log file
		FUNC21(current_file_name, sizeof(current_file_name), file_name);
		*io = FUNC4(file_name, true);
		if (*io == NULL)
		{
			// Create a log file
			FUNC12(log_object);
			{
				FUNC14(log_object->DirName);
#ifdef	OS_WIN32
				Win32SetFolderCompress(log_object->DirName, true);
#endif	// OS_WIN32
			}
			FUNC22(log_object);
			*io = FUNC3(file_name);
			log_object->CurrentFilePointer = 0;
			if (*io == NULL)
			{
				//Debug("Logging.c: SleepThread(30);\n");
				FUNC19(30);
			}
		}
		else
		{
			// Seek to the end of the log file
			log_object->CurrentFilePointer = FUNC6(*io);
			FUNC5(*io, SEEK_END, 0);
		}

		log_object->log_number_incremented = false;
	}

	// Write the contents of the log to the buffer
	FUNC25(buffer, rec);

	// Release the memory of record
	FUNC8(rec);

	return (*io != NULL);
}