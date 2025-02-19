
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct curl_slist {int dummy; } ;
struct curl_httppost {char* name; long namelength; char* contents; char* buffer; long bufferlength; char* contenttype; char* showfilename; char* userp; long flags; struct curl_httppost* next; struct curl_httppost* more; struct curl_slist* contentheader; int contentlen; } ;
typedef int curl_off_t ;


 long CURL_HTTPPOST_LARGE ;
 struct curl_httppost* calloc (int,int) ;
 size_t strlen (char*) ;

__attribute__((used)) static struct curl_httppost *
AddHttpPost(char *name, size_t namelength,
            char *value, curl_off_t contentslength,
            char *buffer, size_t bufferlength,
            char *contenttype,
            long flags,
            struct curl_slist *contentHeader,
            char *showfilename, char *userp,
            struct curl_httppost *parent_post,
            struct curl_httppost **httppost,
            struct curl_httppost **last_post)
{
  struct curl_httppost *post;
  post = calloc(1, sizeof(struct curl_httppost));
  if(post) {
    post->name = name;
    post->namelength = (long)(name?(namelength?namelength:strlen(name)):0);
    post->contents = value;
    post->contentlen = contentslength;
    post->buffer = buffer;
    post->bufferlength = (long)bufferlength;
    post->contenttype = contenttype;
    post->contentheader = contentHeader;
    post->showfilename = showfilename;
    post->userp = userp;
    post->flags = flags | CURL_HTTPPOST_LARGE;
  }
  else
    return ((void*)0);

  if(parent_post) {

    post->more = parent_post->more;


    parent_post->more = post;
  }
  else {

    if(*last_post)
      (*last_post)->next = post;
    else
      (*httppost) = post;

    (*last_post) = post;
  }
  return post;
}
