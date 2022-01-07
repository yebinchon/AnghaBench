
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ kind; scalar_t__ easy; int datasize; TYPE_2__* arg; int freefunc; int seekfunc; int readfunc; TYPE_2__* parent; } ;
typedef TYPE_1__ curl_mimepart ;
struct TYPE_7__ {scalar_t__ easy; TYPE_1__* parent; } ;
typedef TYPE_2__ curl_mime ;
typedef int CURLcode ;


 int CURLE_BAD_FUNCTION_ARGUMENT ;
 int CURLE_OK ;
 scalar_t__ MIMEKIND_MULTIPART ;
 int cleanup_part_content (TYPE_1__*) ;
 int failf (scalar_t__,char*) ;
 int mime_subparts_free ;
 int mime_subparts_read ;
 int mime_subparts_seek ;
 int mime_subparts_unbind ;

CURLcode Curl_mime_set_subparts(curl_mimepart *part,
                                curl_mime *subparts, int take_ownership)
{
  curl_mime *root;

  if(!part)
    return CURLE_BAD_FUNCTION_ARGUMENT;


  if(part->kind == MIMEKIND_MULTIPART && part->arg == subparts)
    return CURLE_OK;

  cleanup_part_content(part);

  if(subparts) {

    if(part->easy && subparts->easy && part->easy != subparts->easy)
      return CURLE_BAD_FUNCTION_ARGUMENT;


    if(subparts->parent)
      return CURLE_BAD_FUNCTION_ARGUMENT;


    root = part->parent;
    if(root) {
      while(root->parent && root->parent->parent)
        root = root->parent->parent;
      if(subparts == root) {
        if(part->easy)
          failf(part->easy, "Can't add itself as a subpart!");
        return CURLE_BAD_FUNCTION_ARGUMENT;
      }
    }

    subparts->parent = part;
    part->readfunc = mime_subparts_read;
    part->seekfunc = mime_subparts_seek;
    part->freefunc = take_ownership? mime_subparts_free: mime_subparts_unbind;
    part->arg = subparts;
    part->datasize = -1;
    part->kind = MIMEKIND_MULTIPART;
  }

  return CURLE_OK;
}
