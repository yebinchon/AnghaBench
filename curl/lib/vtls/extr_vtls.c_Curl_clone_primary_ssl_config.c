
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssl_primary_config {int sessionid; int verifystatus; int verifyhost; int verifypeer; int version_max; int version; } ;


 int CAfile ;
 int CApath ;
 int CLONE_STRING (int ) ;
 int TRUE ;
 int cipher_list ;
 int cipher_list13 ;
 int clientcert ;
 int egdsocket ;
 int pinned_key ;
 int random_file ;

bool
Curl_clone_primary_ssl_config(struct ssl_primary_config *source,
                              struct ssl_primary_config *dest)
{
  dest->version = source->version;
  dest->version_max = source->version_max;
  dest->verifypeer = source->verifypeer;
  dest->verifyhost = source->verifyhost;
  dest->verifystatus = source->verifystatus;
  dest->sessionid = source->sessionid;

  CLONE_STRING(CApath);
  CLONE_STRING(CAfile);
  CLONE_STRING(clientcert);
  CLONE_STRING(random_file);
  CLONE_STRING(egdsocket);
  CLONE_STRING(cipher_list);
  CLONE_STRING(cipher_list13);
  CLONE_STRING(pinned_key);

  return TRUE;
}
