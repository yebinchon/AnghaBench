
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct Curl_easy {int dummy; } ;
struct TYPE_4__ {int state; int * boundary; int * lastpart; int * firstpart; int * parent; struct Curl_easy* easy; } ;
typedef TYPE_1__ curl_mime ;


 scalar_t__ Curl_rand_hex (struct Curl_easy*,unsigned char*,scalar_t__) ;
 int MIMESTATE_BEGIN ;
 scalar_t__ MIME_RAND_BOUNDARY_CHARS ;
 int free (TYPE_1__*) ;
 scalar_t__ malloc (int) ;
 int memset (int *,char,int) ;
 int mimesetstate (int *,int ,int *) ;

curl_mime *curl_mime_init(struct Curl_easy *easy)
{
  curl_mime *mime;

  mime = (curl_mime *) malloc(sizeof(*mime));

  if(mime) {
    mime->easy = easy;
    mime->parent = ((void*)0);
    mime->firstpart = ((void*)0);
    mime->lastpart = ((void*)0);

    memset(mime->boundary, '-', 24);
    if(Curl_rand_hex(easy, (unsigned char *) &mime->boundary[24],
                     MIME_RAND_BOUNDARY_CHARS + 1)) {

      free(mime);
      return ((void*)0);
    }
    mimesetstate(&mime->state, MIMESTATE_BEGIN, ((void*)0));
  }

  return mime;
}
