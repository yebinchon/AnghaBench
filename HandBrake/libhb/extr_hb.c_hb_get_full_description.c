
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hb_community ;
 int hb_irc ;
 int hb_repo_branch ;
 int hb_repo_hash ;
 int hb_repo_remote ;
 int hb_repo_rev ;
 int hb_repo_tag ;
 int hb_repo_type ;
 int hb_repo_url ;
 char* hb_strdup_printf (char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int hb_title ;
 int hb_website ;

const char * hb_get_full_description()
{
    static char * desc = ((void*)0);
    if (desc == ((void*)0))
    {
        desc = hb_strdup_printf("%s\n"
                                "\tWebsite:     %s\n"
                                "\tForum:       %s\n"
                                "\tIRC:         %s\n"
                                "\tBuild Type:  %s\n"
                                "\tRepository:  %s\n"
                                "\tRelease Tag: %s\n"
                                "\tRevision:    %d\n"
                                "\tCommit Hash: %s\n"
                                "\tBranch:      %s\n"
                                "\tRemote:      %s",
                                hb_title, hb_website, hb_community, hb_irc,
                                hb_repo_type, hb_repo_url, hb_repo_tag, hb_repo_rev,
                                hb_repo_hash, hb_repo_branch, hb_repo_remote);
    }
    return desc;
}
