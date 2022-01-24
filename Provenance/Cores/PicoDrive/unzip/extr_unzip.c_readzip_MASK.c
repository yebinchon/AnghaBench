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
struct zipent {int filename_length; scalar_t__ extra_field_length; scalar_t__ file_comment_length; char* name; void* offset_lcl_hdr_frm_frst_disk; void* external_file_attrib; void* internal_file_attrib; void* disk_number_start; void* uncompressed_size; void* compressed_size; void* crc32; void* last_mod_file_date; void* last_mod_file_time; void* compression_method; void* general_purpose_bit_flag; int /*<<< orphan*/  os_needed_to_extract; int /*<<< orphan*/  version_needed_to_extract; int /*<<< orphan*/  host_os; int /*<<< orphan*/  version_made_by; void* cent_file_header_sig; } ;
struct TYPE_3__ {scalar_t__ cd_pos; scalar_t__ size_of_cent_dir; struct zipent ent; int /*<<< orphan*/ * cd; int /*<<< orphan*/  zip; } ;
typedef  TYPE_1__ ZIP ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_CORRUPT ; 
 int ZIPCCML ; 
 int ZIPCCRC ; 
 int ZIPCDAT ; 
 int ZIPCENSIG ; 
 int ZIPCEXOS ; 
 int ZIPCFLG ; 
 scalar_t__ ZIPCFN ; 
 int ZIPCFNL ; 
 int ZIPCMTHD ; 
 int ZIPCOS ; 
 int ZIPCSIZ ; 
 int ZIPCTIM ; 
 int ZIPCUNC ; 
 int ZIPCVER ; 
 int ZIPCVXT ; 
 int ZIPCXTL ; 
 int ZIPDSK ; 
 int ZIPEXT ; 
 int ZIPINT ; 
 int ZIPOFST ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *,int) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 

struct zipent* FUNC6(ZIP* zip) {

	/* end of directory */
	if (zip->cd_pos >= zip->size_of_cent_dir)
		return 0;

	/* compile zipent info */
	zip->ent.cent_file_header_sig = FUNC4 (zip->cd+zip->cd_pos+ZIPCENSIG);
	zip->ent.version_made_by = *(zip->cd+zip->cd_pos+ZIPCVER);
	zip->ent.host_os = *(zip->cd+zip->cd_pos+ZIPCOS);
	zip->ent.version_needed_to_extract = *(zip->cd+zip->cd_pos+ZIPCVXT);
	zip->ent.os_needed_to_extract = *(zip->cd+zip->cd_pos+ZIPCEXOS);
	zip->ent.general_purpose_bit_flag = FUNC5 (zip->cd+zip->cd_pos+ZIPCFLG);
	zip->ent.compression_method = FUNC5 (zip->cd+zip->cd_pos+ZIPCMTHD);
	zip->ent.last_mod_file_time = FUNC5 (zip->cd+zip->cd_pos+ZIPCTIM);
	zip->ent.last_mod_file_date = FUNC5 (zip->cd+zip->cd_pos+ZIPCDAT);
	zip->ent.crc32 = FUNC4 (zip->cd+zip->cd_pos+ZIPCCRC);
	zip->ent.compressed_size = FUNC4 (zip->cd+zip->cd_pos+ZIPCSIZ);
	zip->ent.uncompressed_size = FUNC4 (zip->cd+zip->cd_pos+ZIPCUNC);
	zip->ent.filename_length = FUNC5 (zip->cd+zip->cd_pos+ZIPCFNL);
	zip->ent.extra_field_length = FUNC5 (zip->cd+zip->cd_pos+ZIPCXTL);
	zip->ent.file_comment_length = FUNC5 (zip->cd+zip->cd_pos+ZIPCCML);
	zip->ent.disk_number_start = FUNC5 (zip->cd+zip->cd_pos+ZIPDSK);
	zip->ent.internal_file_attrib = FUNC5 (zip->cd+zip->cd_pos+ZIPINT);
	zip->ent.external_file_attrib = FUNC4 (zip->cd+zip->cd_pos+ZIPEXT);
	zip->ent.offset_lcl_hdr_frm_frst_disk = FUNC4 (zip->cd+zip->cd_pos+ZIPOFST);

    /* check to see if filename length is illegally long (past the size of this directory
       entry) */
    if (zip->cd_pos + ZIPCFN + zip->ent.filename_length > zip->size_of_cent_dir)
    {
        FUNC0("Invalid filename length in directory", ERROR_CORRUPT,zip->zip);
        return 0;
    }

	/* copy filename */
	FUNC1(zip->ent.name);
	zip->ent.name = (char*)FUNC2(zip->ent.filename_length + 1);
	FUNC3(zip->ent.name, zip->cd+zip->cd_pos+ZIPCFN, zip->ent.filename_length);
	zip->ent.name[zip->ent.filename_length] = 0;

	/* skip to next entry in central dir */
	zip->cd_pos += ZIPCFN + zip->ent.filename_length + zip->ent.extra_field_length + zip->ent.file_comment_length;

	return &zip->ent;
}