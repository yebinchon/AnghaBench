#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {TYPE_3__* private_; TYPE_2__* protected_; } ;
struct TYPE_10__ {int length; char* entry; } ;
struct TYPE_14__ {int num_comments; TYPE_4__* comments; TYPE_1__ vendor_string; } ;
struct TYPE_13__ {int length; char* entry; } ;
struct TYPE_12__ {int /*<<< orphan*/  input; } ;
struct TYPE_11__ {void* state; } ;
typedef  size_t FLAC__uint32 ;
typedef  char FLAC__byte ;
typedef  int FLAC__bool ;
typedef  TYPE_4__ FLAC__StreamMetadata_VorbisComment_Entry ;
typedef  TYPE_5__ FLAC__StreamMetadata_VorbisComment ;
typedef  TYPE_6__ FLAC__StreamDecoder ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FLAC__STREAM_DECODER_MEMORY_ALLOCATION_ERROR ; 
 int FLAC__STREAM_METADATA_VORBIS_COMMENT_ENTRY_LENGTH_LEN ; 
 int FLAC__STREAM_METADATA_VORBIS_COMMENT_NUM_COMMENTS_LEN ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC7 (unsigned int,int) ; 
 scalar_t__ FUNC8 (int,int) ; 

FLAC__bool FUNC9(FLAC__StreamDecoder *decoder, FLAC__StreamMetadata_VorbisComment *obj, unsigned length)
{
	FLAC__uint32 i;

	FUNC0(FUNC1(decoder->private_->input));

	/* read vendor string */
	if (length >= 8) {
		length -= 8; /* vendor string length + num comments entries alone take 8 bytes */
		FUNC0(FLAC__STREAM_METADATA_VORBIS_COMMENT_ENTRY_LENGTH_LEN == 32);
		if (!FUNC3(decoder->private_->input, &obj->vendor_string.length))
			return false; /* read_callback_ sets the state for us */
		if (obj->vendor_string.length > 0) {
			if (length < obj->vendor_string.length) {
				obj->vendor_string.length = 0;
				obj->vendor_string.entry = 0;
				goto skip;
			}
			else
				length -= obj->vendor_string.length;
			if (0 == (obj->vendor_string.entry = (FLAC__byte*)FUNC7(obj->vendor_string.length, /*+*/1))) {
				decoder->protected_->state = FLAC__STREAM_DECODER_MEMORY_ALLOCATION_ERROR;
				return false;
			}
			if (!FUNC2(decoder->private_->input, obj->vendor_string.entry, obj->vendor_string.length))
				return false; /* read_callback_ sets the state for us */
			obj->vendor_string.entry[obj->vendor_string.length] = '\0';
		}
		else
			obj->vendor_string.entry = 0;

		/* read num comments */
		FUNC0(FLAC__STREAM_METADATA_VORBIS_COMMENT_NUM_COMMENTS_LEN == 32);
		if (!FUNC3(decoder->private_->input, &obj->num_comments))
			return false; /* read_callback_ sets the state for us */

		/* read comments */
		if (obj->num_comments > 100000) {
			/* Possibly malicious file. */
			obj->num_comments = 0;
			return false;
		}
		if (obj->num_comments > 0) {
			if (0 == (obj->comments = (FLAC__StreamMetadata_VorbisComment_Entry*)FUNC8(obj->num_comments, /*times*/sizeof(FLAC__StreamMetadata_VorbisComment_Entry)))) {
				obj->num_comments = 0;
				decoder->protected_->state = FLAC__STREAM_DECODER_MEMORY_ALLOCATION_ERROR;
				return false;
			}
			for (i = 0; i < obj->num_comments; i++) {
				/* Initialize here just to make sure. */
				obj->comments[i].length = 0;
				obj->comments[i].entry = 0;

				FUNC0(FLAC__STREAM_METADATA_VORBIS_COMMENT_ENTRY_LENGTH_LEN == 32);
				if (length < 4) {
					obj->num_comments = i;
					goto skip;
				}
				else
					length -= 4;
				if (!FUNC3(decoder->private_->input, &obj->comments[i].length)) {
					obj->num_comments = i;
					return false; /* read_callback_ sets the state for us */
				}
				if (obj->comments[i].length > 0) {
					if (length < obj->comments[i].length) {
						obj->num_comments = i;
						goto skip;
					}
					else
						length -= obj->comments[i].length;
					if (0 == (obj->comments[i].entry = (FLAC__byte*)FUNC7(obj->comments[i].length, /*+*/1))) {
						decoder->protected_->state = FLAC__STREAM_DECODER_MEMORY_ALLOCATION_ERROR;
						obj->num_comments = i;
						return false;
					}
					FUNC6 (obj->comments[i].entry, 0, obj->comments[i].length) ;
					if (!FUNC2(decoder->private_->input, obj->comments[i].entry, obj->comments[i].length)) {
						obj->num_comments = i;
						goto skip;
					}
					obj->comments[i].entry[obj->comments[i].length] = '\0';
				}
				else
					obj->comments[i].entry = 0;
			}
		}
	}

  skip:
	if (length > 0) {
		/* length > 0 can only happen on files with invalid data in comments */
		if(obj->num_comments < 1) {
			FUNC5(obj->comments);
			obj->comments = NULL;
		}
		if(!FUNC4(decoder->private_->input, length))
			return false; /* read_callback_ sets the state for us */
	}

	return true;
}