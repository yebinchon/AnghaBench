
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct vnode {int dummy; } ;
struct cs_blob {TYPE_1__* csb_cd; } ;
typedef int off_t ;
struct TYPE_2__ {int platform; int length; } ;
typedef TYPE_1__ CS_CodeDirectory ;


 int ntohl (int ) ;
 struct cs_blob* ubc_cs_blob_get (struct vnode*,int,int ) ;

uint8_t
csvnode_get_platform_identifier(struct vnode *vp, off_t offset)
{
 struct cs_blob *csblob;
 const CS_CodeDirectory *code_dir;

 csblob = ubc_cs_blob_get(vp, -1, offset);
 if (csblob == ((void*)0))
  return 0;

 code_dir = csblob->csb_cd;
 if (code_dir == ((void*)0) || ntohl(code_dir->length) < 8)
  return 0;

 return code_dir->platform;
}
