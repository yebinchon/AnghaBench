
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_handle_t ;


 scalar_t__ hb_community ;
 scalar_t__ hb_irc ;
 scalar_t__ hb_name ;
 scalar_t__ hb_repo_branch ;
 scalar_t__ hb_repo_hash ;
 scalar_t__ hb_repo_remote ;
 scalar_t__ hb_repo_rev ;
 scalar_t__ hb_repo_tag ;
 scalar_t__ hb_repo_type ;
 scalar_t__ hb_repo_url ;
 scalar_t__ hb_title ;
 char const* hb_version ;
 scalar_t__ hb_website ;

const char * hb_get_version( hb_handle_t * h )
{

    ((void)(hb_title));
    ((void)(hb_name));
    ((void)(hb_website));
    ((void)(hb_community));
    ((void)(hb_irc));
    ((void)(hb_version));
    ((void)(hb_repo_url));
    ((void)(hb_repo_tag));
    ((void)(hb_repo_rev));
    ((void)(hb_repo_hash));
    ((void)(hb_repo_branch));
    ((void)(hb_repo_remote));
    ((void)(hb_repo_type));
    return hb_version;
}
