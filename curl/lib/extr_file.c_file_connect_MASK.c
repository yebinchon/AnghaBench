#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct connectdata {struct Curl_easy* data; } ;
struct FILEPROTO {char* path; char* freepath; int fd; } ;
struct TYPE_7__ {int /*<<< orphan*/  path; } ;
struct TYPE_8__ {TYPE_3__ up; } ;
struct TYPE_6__ {int /*<<< orphan*/  upload; } ;
struct TYPE_5__ {struct FILEPROTO* protop; } ;
struct Curl_easy {TYPE_4__ state; TYPE_2__ set; TYPE_1__ req; } ;
typedef  scalar_t__ CURLcode ;

/* Variables and functions */
 scalar_t__ CURLE_FILE_COULDNT_READ_FILE ; 
 scalar_t__ CURLE_OK ; 
 scalar_t__ CURLE_URL_MALFORMAT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct Curl_easy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int O_BINARY ; 
 int O_RDONLY ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC2 (struct Curl_easy*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct connectdata*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC5 (char*,int) ; 

__attribute__((used)) static CURLcode FUNC6(struct connectdata *conn, bool *done)
{
  struct Curl_easy *data = conn->data;
  char *real_path;
  struct FILEPROTO *file = data->req.protop;
  int fd;
#ifdef DOS_FILESYSTEM
  size_t i;
  char *actual_path;
#endif
  size_t real_path_len;

  CURLcode result = FUNC1(data, data->state.up.path, 0, &real_path,
                                   &real_path_len, FALSE);
  if(result)
    return result;

#ifdef DOS_FILESYSTEM
  /* If the first character is a slash, and there's
     something that looks like a drive at the beginning of
     the path, skip the slash.  If we remove the initial
     slash in all cases, paths without drive letters end up
     relative to the current directory which isn't how
     browsers work.

     Some browsers accept | instead of : as the drive letter
     separator, so we do too.

     On other platforms, we need the slash to indicate an
     absolute pathname.  On Windows, absolute paths start
     with a drive letter.
  */
  actual_path = real_path;
  if((actual_path[0] == '/') &&
      actual_path[1] &&
     (actual_path[2] == ':' || actual_path[2] == '|')) {
    actual_path[2] = ':';
    actual_path++;
    real_path_len--;
  }

  /* change path separators from '/' to '\\' for DOS, Windows and OS/2 */
  for(i = 0; i < real_path_len; ++i)
    if(actual_path[i] == '/')
      actual_path[i] = '\\';
    else if(!actual_path[i]) { /* binary zero */
      Curl_safefree(real_path);
      return CURLE_URL_MALFORMAT;
    }

  fd = open_readonly(actual_path, O_RDONLY|O_BINARY);
  file->path = actual_path;
#else
  if(FUNC4(real_path, 0, real_path_len)) {
    /* binary zeroes indicate foul play */
    FUNC0(real_path);
    return CURLE_URL_MALFORMAT;
  }

  fd = FUNC5(real_path, O_RDONLY);
  file->path = real_path;
#endif
  file->freepath = real_path; /* free this when done */

  file->fd = fd;
  if(!data->set.upload && (fd == -1)) {
    FUNC2(data, "Couldn't open file %s", data->state.up.path);
    FUNC3(conn, CURLE_FILE_COULDNT_READ_FILE, FALSE);
    return CURLE_FILE_COULDNT_READ_FILE;
  }
  *done = TRUE;

  return CURLE_OK;
}