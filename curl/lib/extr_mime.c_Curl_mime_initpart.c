
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct Curl_easy {int dummy; } ;
struct TYPE_3__ {int state; struct Curl_easy* easy; } ;
typedef TYPE_1__ curl_mimepart ;


 int MIMESTATE_BEGIN ;
 int memset (char*,int ,int) ;
 int mimesetstate (int *,int ,int *) ;

void Curl_mime_initpart(curl_mimepart *part, struct Curl_easy *easy)
{
  memset((char *) part, 0, sizeof(*part));
  part->easy = easy;
  mimesetstate(&part->state, MIMESTATE_BEGIN, ((void*)0));
}
