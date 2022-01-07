
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct modctl {int mod_loadcnt; } ;
typedef void* machine_inst_t ;
struct TYPE_6__ {scalar_t__ fbtp_currentval; scalar_t__ fbtp_patchval; void** fbtp_patchpoint; uintptr_t fbtp_roffset; void* fbtp_id; void* fbtp_hashnext; void* fbtp_savedval; int fbtp_rval; int fbtp_loadcnt; struct modctl* fbtp_ctl; struct TYPE_6__* fbtp_next; int fbtp_name; } ;
typedef TYPE_1__ fbt_probe_t ;
typedef scalar_t__ dtrace_id_t ;


 int ASSERT (int) ;
 int DTRACE_INVOP_POP_PC ;
 int DTRACE_INVOP_PUSH_LR ;
 size_t FBT_ADDR2NDX (void**) ;
 int FBT_AFRAMES_ENTRY ;
 int FBT_AFRAMES_RETURN ;
 int FBT_ENTRY ;
 scalar_t__ FBT_IS_THUMB32_LDR_PC (void*,void*) ;
 int FBT_IS_THUMB32_POP_R7LR (void*,void*) ;
 scalar_t__ FBT_IS_THUMB_BX_REG (void*) ;
 scalar_t__ FBT_IS_THUMB_LDR_PC (void*) ;
 scalar_t__ FBT_IS_THUMB_MOV_SP_TO_R7 (void*) ;
 scalar_t__ FBT_IS_THUMB_POP_PC (void*) ;
 int FBT_IS_THUMB_POP_R7 (void*) ;
 scalar_t__ FBT_IS_THUMB_PUSH_LR (void*) ;
 scalar_t__ FBT_IS_THUMB_SET_R7 (void*) ;
 void* FBT_PATCHVAL ;
 int FBT_RETURN ;
 int FBT_THUMB_STACK_REGS (void*) ;
 int KM_SLEEP ;
 int MAX_FBTP_NAME_CHARS ;
 int dtrace_instr_size (void*,int) ;
 TYPE_1__* dtrace_probe_arg (int ,scalar_t__) ;
 void* dtrace_probe_create (int ,char const*,char const*,int ,int ,TYPE_1__*) ;
 scalar_t__ dtrace_probe_lookup (int ,char const*,char const*,int ) ;
 int fbt_enable (int *,void*,TYPE_1__*) ;
 int fbt_id ;
 void** fbt_probetab ;
 TYPE_1__* kmem_zalloc (int,int ) ;
 int kprintf (char*,char const*,...) ;
 int strlcpy (char*,char const*,int ) ;
 scalar_t__ thumb32_ldr_pc_address (scalar_t__) ;
 scalar_t__ thumb_ldr_pc_address (scalar_t__) ;

void
fbt_provide_probe(struct modctl *ctl, const char *modname, const char* symbolName, machine_inst_t* symbolStart, machine_inst_t *instrHigh)
{
 unsigned int j;
        int doenable = 0;
 dtrace_id_t thisid;

 fbt_probe_t *newfbt, *retfbt, *entryfbt;
 machine_inst_t *instr, *pushinstr = ((void*)0), *limit, theInstr;
 int foundPushLR, savedRegs;




 if (!symbolStart || !instrHigh || instrHigh < symbolStart) {
  kprintf("dtrace: %s has an invalid address\n", symbolName);
  return;
 }




 foundPushLR = 0;
 savedRegs = -1;
 limit = (machine_inst_t *)instrHigh;
 for (j = 0, instr = symbolStart, theInstr = 0;
      (j < 8) && instr < instrHigh; j++, instr++)
 {
  theInstr = *instr;
  if (FBT_IS_THUMB_PUSH_LR(theInstr)) {
   foundPushLR = 1;

   savedRegs = FBT_THUMB_STACK_REGS(theInstr);
   pushinstr = instr;
  }
  if (foundPushLR && (FBT_IS_THUMB_SET_R7(theInstr) || FBT_IS_THUMB_MOV_SP_TO_R7(theInstr)))

   break;
  if (FBT_IS_THUMB_BX_REG(theInstr))
   break;
  if (FBT_IS_THUMB_POP_PC(theInstr))
   break;


  if (dtrace_instr_size(theInstr,1) == 4)
   instr++;
 }

 if (!(foundPushLR && (FBT_IS_THUMB_SET_R7(theInstr) || FBT_IS_THUMB_MOV_SP_TO_R7(theInstr)))) {
  return;
 }

 thisid = dtrace_probe_lookup(fbt_id, modname, symbolName, FBT_ENTRY);
 newfbt = kmem_zalloc(sizeof(fbt_probe_t), KM_SLEEP);
 newfbt->fbtp_next = ((void*)0);
 strlcpy( (char *)&(newfbt->fbtp_name), symbolName, MAX_FBTP_NAME_CHARS );

 if (thisid != 0) {
  entryfbt = dtrace_probe_arg (fbt_id, thisid);
  ASSERT (entryfbt != ((void*)0));
  for(; entryfbt != ((void*)0); entryfbt = entryfbt->fbtp_next) {
   if (entryfbt->fbtp_currentval == entryfbt->fbtp_patchval)
    doenable++;

   if (entryfbt->fbtp_next == ((void*)0)) {
    entryfbt->fbtp_next = newfbt;
    newfbt->fbtp_id = entryfbt->fbtp_id;
    break;
   }
  }
 }
 else {





  newfbt->fbtp_id = dtrace_probe_create(fbt_id, modname, symbolName, FBT_ENTRY, FBT_AFRAMES_ENTRY, newfbt);
  doenable = 0;
 }

 newfbt->fbtp_patchpoint = instr;
 newfbt->fbtp_ctl = ctl;
 newfbt->fbtp_loadcnt = ctl->mod_loadcnt;
 newfbt->fbtp_rval = DTRACE_INVOP_PUSH_LR;
 newfbt->fbtp_savedval = theInstr;
 newfbt->fbtp_patchval = FBT_PATCHVAL;
 newfbt->fbtp_currentval = 0;
 newfbt->fbtp_hashnext = fbt_probetab[FBT_ADDR2NDX(instr)];
 fbt_probetab[FBT_ADDR2NDX(instr)] = newfbt;

 if (doenable)
  fbt_enable(((void*)0), newfbt->fbtp_id, newfbt);
 doenable=0;

 thisid = dtrace_probe_lookup(fbt_id, modname, symbolName, FBT_RETURN);

 if (thisid != 0) {






  retfbt = dtrace_probe_arg (fbt_id, thisid);
  ASSERT(retfbt != ((void*)0));
  for (; retfbt != ((void*)0); retfbt = retfbt->fbtp_next) {
   if (retfbt->fbtp_currentval == retfbt->fbtp_patchval)
    doenable++;
   if(retfbt->fbtp_next == ((void*)0))
    break;
  }
 }
 else {
  doenable = 0;
  retfbt = ((void*)0);
 }






 instr = pushinstr + 1;
again:
 if (instr >= limit)
  return;
 if (((uintptr_t)instr & 0x3) == 0) {
  machine_inst_t *ptr = *(machine_inst_t **)(void *)instr;

  if (ptr >= (machine_inst_t *)symbolStart && ptr < limit) {

   instr++;
   goto again;
  }
 }




 theInstr = *instr;


 if (FBT_IS_THUMB_PUSH_LR(theInstr)) {
  if (!retfbt)
   kprintf("dtrace: fbt: No return probe for %s, walked to next routine at %08x\n",symbolName,(unsigned)instr);
  return;
 }




 if (FBT_IS_THUMB_LDR_PC(theInstr)) {
  uint32_t newlimit = thumb_ldr_pc_address((uint32_t) instr);
  if (newlimit < (uint32_t) limit)
   limit = (machine_inst_t*) newlimit;
 }
 if ((instr+1) < limit && FBT_IS_THUMB32_LDR_PC(*instr,*(instr+1))) {
  uint32_t newlimit = thumb32_ldr_pc_address((uint32_t) instr);
  if (newlimit < (uint32_t) limit)
   limit = (machine_inst_t*) newlimit;
 }


 if (!FBT_IS_THUMB_POP_PC(theInstr) &&
     !FBT_IS_THUMB_POP_R7(theInstr) &&
     !FBT_IS_THUMB32_POP_R7LR(theInstr,*(instr+1))) {
  instr++;
  if (dtrace_instr_size(theInstr,1) == 4)
   instr++;
  goto again;
 }

 if (FBT_IS_THUMB_POP_PC(theInstr)) {
  if (savedRegs != FBT_THUMB_STACK_REGS(theInstr)) {



   kprintf("dtrace: fbt: No return probe for %s, popped regs don't match at %08x\n",symbolName,(unsigned)instr);
   return;
  }
 } else {

  for (j = 0; (j < 4) && (instr < limit); j++, instr++) {
   theInstr = *instr;
   if (FBT_IS_THUMB_BX_REG(theInstr))
    break;
   if (dtrace_instr_size(theInstr,1) == 4)
    instr++;
  }

  if (!FBT_IS_THUMB_BX_REG(theInstr))
   return;
 }





 newfbt = kmem_zalloc(sizeof(fbt_probe_t), KM_SLEEP);
 newfbt->fbtp_next = ((void*)0);
 strlcpy( (char *)&(newfbt->fbtp_name), symbolName, MAX_FBTP_NAME_CHARS );

 if (retfbt == ((void*)0)) {
  newfbt->fbtp_id = dtrace_probe_create(fbt_id, modname,
      symbolName, FBT_RETURN, FBT_AFRAMES_RETURN, newfbt);
 } else {
  retfbt->fbtp_next = newfbt;
  newfbt->fbtp_id = retfbt->fbtp_id;
 }

 retfbt = newfbt;
 newfbt->fbtp_patchpoint = instr;
 newfbt->fbtp_ctl = ctl;
 newfbt->fbtp_loadcnt = ctl->mod_loadcnt;

 ASSERT(FBT_IS_THUMB_POP_PC(theInstr) || FBT_IS_THUMB_BX_REG(theInstr));
 newfbt->fbtp_rval = DTRACE_INVOP_POP_PC;
 newfbt->fbtp_roffset =
     (uintptr_t) ((uint8_t*) instr - (uint8_t *)symbolStart);
 newfbt->fbtp_savedval = theInstr;
 newfbt->fbtp_patchval = FBT_PATCHVAL;
 newfbt->fbtp_currentval = 0;
 newfbt->fbtp_hashnext = fbt_probetab[FBT_ADDR2NDX(instr)];
 fbt_probetab[FBT_ADDR2NDX(instr)] = newfbt;

 if (doenable)
  fbt_enable(((void*)0), newfbt->fbtp_id, newfbt);

 instr++;
 goto again;
}
