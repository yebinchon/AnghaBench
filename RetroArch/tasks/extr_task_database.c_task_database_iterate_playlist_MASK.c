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
struct TYPE_3__ {char* serial; int /*<<< orphan*/  crc; int /*<<< orphan*/  archive_crc; } ;
typedef  TYPE_1__ database_state_handle_t ;
typedef  int /*<<< orphan*/  database_info_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  DATABASE_TYPE_CRC_LOOKUP ; 
 int /*<<< orphan*/  DATABASE_TYPE_ITERATE_LUTRO ; 
 int /*<<< orphan*/  DATABASE_TYPE_SERIAL_LOOKUP ; 
#define  FILE_TYPE_CHD 134 
#define  FILE_TYPE_COMPRESSED 133 
#define  FILE_TYPE_CUE 132 
#define  FILE_TYPE_GDI 131 
#define  FILE_TYPE_ISO 130 
#define  FILE_TYPE_LUTRO 129 
#define  FILE_TYPE_WBFS 128 
 int /*<<< orphan*/  SIZE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int FUNC6 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char*) ; 
 int FUNC8 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC11 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char const*,char*) ; 

__attribute__((used)) static int FUNC13(
      database_state_handle_t *db_state,
      database_info_handle_t *db, const char *name)
{
   switch (FUNC1(FUNC5(name)))
   {
      case FILE_TYPE_COMPRESSED:
#ifdef HAVE_COMPRESSION
         database_info_set_type(db, DATABASE_TYPE_CRC_LOOKUP);
         /* first check crc of archive itself */
         return intfstream_file_get_crc(name,
               0, SIZE_MAX, &db_state->archive_crc);
#else
         break;
#endif
      case FILE_TYPE_CUE:
         FUNC10(db, name);
         db_state->serial[0] = '\0';
         if (FUNC9(name, db_state->serial))
            FUNC0(db, DATABASE_TYPE_SERIAL_LOOKUP);
         else
         {
            FUNC0(db, DATABASE_TYPE_CRC_LOOKUP);
            return FUNC8(name, &db_state->crc);
         }
         break;
      case FILE_TYPE_GDI:
         FUNC2(db, name);
         db_state->serial[0] = '\0';
         /* There are no serial databases, so don't bother with
            serials at the moment */
         if (0 && FUNC12(name, db_state->serial))
            FUNC0(db, DATABASE_TYPE_SERIAL_LOOKUP);
         else
         {
            FUNC0(db, DATABASE_TYPE_CRC_LOOKUP);
            return FUNC11(name, &db_state->crc);
         }
         break;
      /* Consider Wii WBFS files similar to ISO files. */
      case FILE_TYPE_WBFS:
      case FILE_TYPE_ISO:
         db_state->serial[0] = '\0';
         FUNC4(name, 0, SIZE_MAX, db_state->serial);
         FUNC0(db, DATABASE_TYPE_SERIAL_LOOKUP);
         break;
      case FILE_TYPE_CHD:
         db_state->serial[0] = '\0';
         if (FUNC7(name, db_state->serial))
            FUNC0(db, DATABASE_TYPE_SERIAL_LOOKUP);
         else
         {
            FUNC0(db, DATABASE_TYPE_CRC_LOOKUP);
            return FUNC6(name, &db_state->crc);
         }
         break;
      case FILE_TYPE_LUTRO:
         FUNC0(db, DATABASE_TYPE_ITERATE_LUTRO);
         break;
      default:
         FUNC0(db, DATABASE_TYPE_CRC_LOOKUP);
         return FUNC3(name, 0, SIZE_MAX, &db_state->crc);
   }

   return 1;
}