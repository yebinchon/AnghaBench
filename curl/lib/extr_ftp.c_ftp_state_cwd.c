
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ftp_conn {char** dirs; int count3; char* entrypath; int cwdcount; int pp; scalar_t__ dirdepth; scalar_t__ count2; scalar_t__ cwddone; } ;
struct TYPE_8__ {struct ftp_conn ftpc; } ;
struct TYPE_7__ {scalar_t__ reuse; } ;
struct connectdata {TYPE_4__ proto; TYPE_3__ bits; TYPE_2__* data; } ;
struct TYPE_5__ {scalar_t__ ftp_filemethod; int ftp_create_missing_dirs; } ;
struct TYPE_6__ {TYPE_1__ set; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 int DEBUGASSERT (int) ;
 scalar_t__ FTPFILE_NOCWD ;
 int FTP_CWD ;
 int PPSENDF (int *,char*,char*) ;
 int ftp_state_mdtm (struct connectdata*) ;
 int state (struct connectdata*,int ) ;

__attribute__((used)) static CURLcode ftp_state_cwd(struct connectdata *conn)
{
  CURLcode result = CURLE_OK;
  struct ftp_conn *ftpc = &conn->proto.ftpc;

  if(ftpc->cwddone)

    result = ftp_state_mdtm(conn);
  else {

    DEBUGASSERT((conn->data->set.ftp_filemethod != FTPFILE_NOCWD) ||
                !(ftpc->dirdepth && ftpc->dirs[0][0] == '/'));

    ftpc->count2 = 0;




    ftpc->count3 = (conn->data->set.ftp_create_missing_dirs == 2)?1:0;

    if(conn->bits.reuse && ftpc->entrypath &&

       !(ftpc->dirdepth && ftpc->dirs[0][0] == '/')) {



      ftpc->cwdcount = 0;

      PPSENDF(&conn->proto.ftpc.pp, "CWD %s", ftpc->entrypath);
      state(conn, FTP_CWD);
    }
    else {
      if(ftpc->dirdepth) {
        ftpc->cwdcount = 1;


        PPSENDF(&conn->proto.ftpc.pp, "CWD %s", ftpc->dirs[ftpc->cwdcount -1]);
        state(conn, FTP_CWD);
      }
      else {

        result = ftp_state_mdtm(conn);
      }
    }
  }
  return result;
}
