
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_6__ {scalar_t__ id; char* mnemonic; } ;
struct insn_mnem {struct insn_mnem* next; TYPE_1__ insn; } ;
struct cs_struct {struct insn_mnem* mnem_list; } ;
typedef int csh ;
struct TYPE_7__ {int size; scalar_t__ id; char* mnemonic; char* op_str; int bytes; } ;
typedef TYPE_2__ cs_insn ;
typedef int (* PostPrinter_t ) (int ,TYPE_2__*,char*,int *) ;
typedef int MCInst ;


 scalar_t__ MCInst_getOpcodePub (int *) ;
 int MIN (int,int) ;
 int memcpy (int ,int const*,int) ;
 int strncpy (char*,char*,int) ;

__attribute__((used)) static void fill_insn(struct cs_struct *handle, cs_insn *insn, char *buffer, MCInst *mci,
  PostPrinter_t postprinter, const uint8_t *code)
{

 char *sp, *mnem;

 uint16_t copy_size = MIN(sizeof(insn->bytes), insn->size);



 memcpy(insn->bytes, code + insn->size - copy_size, copy_size);
 insn->size = copy_size;


 if (MCInst_getOpcodePub(mci))
  insn->id = MCInst_getOpcodePub(mci);


 if (postprinter)
  postprinter((csh)handle, insn, buffer, mci);




 mnem = insn->mnemonic;
 for (sp = buffer; *sp; sp++) {
  if (*sp == ' '|| *sp == '\t')
   break;
  if (*sp == '|')
   *sp = ' ';

  *mnem = *sp;
  mnem++;
 }

 *mnem = '\0';


 if (handle->mnem_list) {
  struct insn_mnem *tmp = handle->mnem_list;
  while(tmp) {
   if (tmp->insn.id == insn->id) {

    (void)strncpy(insn->mnemonic, tmp->insn.mnemonic, sizeof(insn->mnemonic) - 1);
    insn->mnemonic[sizeof(insn->mnemonic) - 1] = '\0';
    break;
   }
   tmp = tmp->next;
  }
 }


 if (*sp) {

  sp++;
  for (; ((*sp == ' ') || (*sp == '\t')); sp++);
  strncpy(insn->op_str, sp, sizeof(insn->op_str) - 1);
  insn->op_str[sizeof(insn->op_str) - 1] = '\0';
 } else
  insn->op_str[0] = '\0';

}
