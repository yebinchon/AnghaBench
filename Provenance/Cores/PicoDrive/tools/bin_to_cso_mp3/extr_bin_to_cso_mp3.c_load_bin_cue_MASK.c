#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int s32 ;
struct TYPE_3__ {int sector_size; int format_type; int pregap_offset; int sector_offset; int sector_count; int physical_offset; } ;
typedef  TYPE_1__ cd_track_struct ;
struct TYPE_4__ {int first_track; int last_track; int num_physical_tracks; scalar_t__ last_seek_track; TYPE_1__** logical_tracks; int /*<<< orphan*/ * bin_file; TYPE_1__* physical_tracks; scalar_t__ num_sectors; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char DIR_SEPARATOR_CHAR ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 TYPE_2__ cd_bin ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 void* FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 char* FUNC10 (char*) ; 
 char* FUNC11 (char*) ; 
 char* FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,int*,...) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*) ; 
 int FUNC16 (char*) ; 
 char* FUNC17 (char*,char) ; 

s32 FUNC18(char *cue_file_name)
{
  FILE *cue_file = FUNC3(cue_file_name, "rb");

  FUNC9("loading cue file %s\n", cue_file_name);

  if(cue_file)
  {
    char line_buffer[256];
    char *line_buffer_ptr;
    char *tmp;

    char bin_file_name[MAX_PATH];
    char *separator_pos;
    s32 current_physical_track_number = -1;
    u32 current_physical_offset;
    u32 current_pregap = 0;
    u32 bin_file_size;

    cd_track_struct *current_physical_track = NULL;

    u32 i;

    // First, get filename. Only support binary right now.
    tmp = FUNC2(line_buffer, 255, cue_file);
    if (tmp == NULL) goto invalid;
    separator_pos = line_buffer + FUNC16(line_buffer) - 1;
    separator_pos = FUNC12(separator_pos);
    if (separator_pos <= line_buffer) goto invalid;
    separator_pos = FUNC10(separator_pos);
    if (separator_pos <= line_buffer) goto invalid;
    separator_pos = FUNC12(separator_pos);
    if (separator_pos <= line_buffer) goto invalid;
    // see if what's there is a quote.
    if(*separator_pos == '"')
    {
      separator_pos[0] = 0;
      separator_pos = FUNC17(line_buffer, '"');
      if (separator_pos == NULL) goto invalid;
      FUNC15(bin_file_name, separator_pos + 1);
    }
    else
    {
      // Otherwise go to the next space.
      separator_pos[1] = 0;
      separator_pos = FUNC17(line_buffer, ' ');
      if (separator_pos == NULL) goto invalid;
      FUNC15(bin_file_name, separator_pos + 1);
    }

    // Might have to change directory first.
    separator_pos = FUNC17(cue_file_name, DIR_SEPARATOR_CHAR);

    if(separator_pos)
    {
      char current_dir[MAX_PATH];
      FUNC6(current_dir, MAX_PATH);

      *separator_pos = 0;

      FUNC0(cue_file_name);

#ifdef GP2X_BUILD
      cd_bin.bin_file = open(bin_file_name, O_RDONLY);
#else
      cd_bin.bin_file = FUNC3(bin_file_name, "rb");
#endif

      *separator_pos = DIR_SEPARATOR_CHAR;
      FUNC0(current_dir);
    }
    else
    {
#ifdef GP2X_BUILD
      cd_bin.bin_file = open(bin_file_name, O_RDONLY);
#else
      cd_bin.bin_file = FUNC3(bin_file_name, "rb");
#endif
    }

    if (cd_bin.bin_file == NULL)
    {
      FUNC9("can't open bin file: \"%s\"\n", bin_file_name);
      return -1;
    }
    else
    {
      FUNC9("found bin file: %s\n", bin_file_name);
    }

    for(i = 0; i < 100; i++)
    {
      cd_bin.logical_tracks[i] = NULL;
    }

    cd_bin.first_track = -1;
    cd_bin.last_track = -1;
    cd_bin.num_physical_tracks = 0;
    cd_bin.num_sectors = 0;

    // Get line
    while(FUNC2(line_buffer, 256, cue_file))
    {
      // Skip trailing whitespace
      line_buffer_ptr = FUNC11(line_buffer);

      // Dirty, but should work - switch on first character.
      switch(line_buffer_ptr[0])
      {
        // New track number
        case 'T':
        {
          u32 new_track_number;
          char track_type[64];

          FUNC13(line_buffer_ptr, "TRACK %d %s", &new_track_number,
           track_type);

          current_physical_track_number++;
          current_physical_track =
           cd_bin.physical_tracks + current_physical_track_number;

          current_physical_track->sector_size = 2352;

          if(!FUNC14(track_type, "AUDIO"))
          {
            current_physical_track->format_type = 0;
            current_physical_track->sector_size = 2352;
          }

          if(!FUNC14(track_type, "MODE1/2352"))
          {
            current_physical_track->format_type = 4;
            current_physical_track->sector_size = 2352;
          }

          if(!FUNC14(track_type, "MODE1/2048"))
          {
            current_physical_track->format_type = 4;
            current_physical_track->sector_size = 2048;
          }

          cd_bin.logical_tracks[new_track_number] = current_physical_track;
          cd_bin.num_physical_tracks++;

          if((cd_bin.first_track == -1) ||
           (new_track_number < cd_bin.first_track))
          {
            cd_bin.first_track = new_track_number;
          }

          if((cd_bin.last_track == -1) ||
           (new_track_number > cd_bin.last_track))
          {
            cd_bin.last_track = new_track_number;
          }

          break;
        }

        // Pregap
        case 'P':
        {
          u32 minutes, seconds, frames;

          FUNC13(line_buffer_ptr, "PREGAP %d:%d:%d", &minutes,
           &seconds, &frames);

          current_pregap += frames + (seconds * 75) + (minutes * 75 * 60);
          break;
        }

        // Index
        case 'I':
        {
          u32 index_number;
          u32 minutes, seconds, frames;
          u32 sector_offset;

          FUNC13(line_buffer_ptr, "INDEX %d %d:%d:%d", &index_number,
           &minutes, &seconds, &frames);

          sector_offset = frames + (seconds * 75) + (minutes * 75 * 60);

          if(index_number == 1)
          {
            current_physical_track->pregap_offset = current_pregap;
            current_physical_track->sector_offset = sector_offset;
          }

          break;
        }
      }
    }

    current_physical_offset = 0;

    for(i = 0; i < cd_bin.num_physical_tracks - 1; i++)
    {
      cd_bin.physical_tracks[i].sector_count =
       cd_bin.physical_tracks[i + 1].sector_offset -
       cd_bin.physical_tracks[i].sector_offset;

      cd_bin.physical_tracks[i].physical_offset = current_physical_offset;
      current_physical_offset += (cd_bin.physical_tracks[i].sector_count *
       cd_bin.physical_tracks[i].sector_size);

      cd_bin.physical_tracks[i].sector_offset +=
       cd_bin.physical_tracks[i].pregap_offset;

      cd_bin.num_sectors += cd_bin.physical_tracks[i].sector_count;
    }

#ifdef GP2X_BUILD
    bin_file_size = lseek(cd_bin.bin_file, 0, SEEK_END);
    lseek(cd_bin.bin_file, 0, SEEK_SET);
#else
    FUNC4(cd_bin.bin_file, 0, SEEK_END);
    bin_file_size = FUNC5(cd_bin.bin_file);
    FUNC4(cd_bin.bin_file, 0, SEEK_SET);
#endif

    // Set the last track data
    cd_bin.physical_tracks[i].physical_offset = current_physical_offset;
    cd_bin.physical_tracks[i].sector_offset +=
     cd_bin.physical_tracks[i].pregap_offset;
    cd_bin.physical_tracks[i].sector_count =
     (bin_file_size - current_physical_offset) /
     cd_bin.physical_tracks[i].sector_size;

    cd_bin.num_sectors += cd_bin.physical_tracks[i].sector_count;

    FUNC9("finished loading cue %s\n", cue_file_name);
    FUNC9("bin file: %s (%p)\n", bin_file_name, cd_bin.bin_file);
    FUNC9("first track: %d, last track: %d\n", cd_bin.first_track,
     cd_bin.last_track);

    for(i = cd_bin.first_track; i <= cd_bin.last_track; i++)
    {
      FUNC9("track %d (%p):\n", i, cd_bin.logical_tracks[i]);
      if(cd_bin.logical_tracks[i] == NULL)
      {
        FUNC9("  (invalid)\n");
      }
      else
      {
        FUNC9("  physical offset 0x%x\n",
         cd_bin.logical_tracks[i]->physical_offset);
        FUNC9("  sector offset 0x%x\n",
         cd_bin.logical_tracks[i]->sector_offset);
        FUNC9("  sector size %d\n",
         cd_bin.logical_tracks[i]->sector_size);
      }
    }

    cd_bin.last_seek_track = 0;

    FUNC1(cue_file);
    return 0;
  }

  return -1;
invalid:
  FUNC9("error: invalid/unsupported .cue file\n");
  return -1;
}