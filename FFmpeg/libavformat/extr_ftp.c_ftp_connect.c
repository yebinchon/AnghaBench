
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int proto ;
typedef int path ;
typedef int hostname ;
typedef int credentials ;
struct TYPE_6__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_7__ {int filesize; int server_control_port; char* option_user; char* option_password; char* path; void* password; void* user; void* hostname; int anonymous_password; int * features; scalar_t__ position; int listing_method; int state; } ;
typedef TYPE_2__ FTPContext ;


 int AVERROR (int ) ;
 int DISCONNECTED ;
 int ENOMEM ;
 int MAX_URL_SIZE ;
 int UNKNOWN_METHOD ;
 char* av_append_path_component (char*,char*) ;
 int av_free (char*) ;
 void* av_strdup (char const*) ;
 char* av_strtok (char*,char*,char**) ;
 int av_url_split (char*,int,char*,int,char*,int,int*,char*,int,char const*) ;
 char* av_x_if_null (int ,char*) ;
 int ftp_connect_control_connection (TYPE_1__*) ;
 int ftp_current_dir (TYPE_2__*) ;

__attribute__((used)) static int ftp_connect(URLContext *h, const char *url)
{
    char proto[10], path[MAX_URL_SIZE], credentials[MAX_URL_SIZE], hostname[MAX_URL_SIZE];
    const char *tok_user = ((void*)0), *tok_pass = ((void*)0);
    char *end = ((void*)0), *newpath = ((void*)0);
    int err;
    FTPContext *s = h->priv_data;

    s->state = DISCONNECTED;
    s->listing_method = UNKNOWN_METHOD;
    s->filesize = -1;
    s->position = 0;
    s->features = ((void*)0);

    av_url_split(proto, sizeof(proto),
                 credentials, sizeof(credentials),
                 hostname, sizeof(hostname),
                 &s->server_control_port,
                 path, sizeof(path),
                 url);

    tok_user = av_strtok(credentials, ":", &end);
    tok_pass = av_strtok(end, ":", &end);
    if (!tok_user) {
        if (!s->option_user) {
            tok_user = "anonymous";
            tok_pass = av_x_if_null(s->anonymous_password, "nopassword");
        } else {
            tok_user = s->option_user;
        }
    }
    if (!tok_pass) {
        tok_pass = s->option_password;
    }
    s->user = av_strdup(tok_user);
    s->password = av_strdup(tok_pass);
    s->hostname = av_strdup(hostname);
    if (!s->hostname || !s->user || (tok_pass && !s->password)) {
        return AVERROR(ENOMEM);
    }

    if (s->server_control_port < 0 || s->server_control_port > 65535)
        s->server_control_port = 21;

    if ((err = ftp_connect_control_connection(h)) < 0)
        return err;

    if ((err = ftp_current_dir(s)) < 0)
        return err;

    newpath = av_append_path_component(s->path, path);
    if (!newpath)
        return AVERROR(ENOMEM);
    av_free(s->path);
    s->path = newpath;

    return 0;
}
