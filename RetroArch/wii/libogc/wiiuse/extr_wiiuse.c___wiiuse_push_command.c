
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct wiimote_t {struct cmd_blk_t* cmd_tail; struct cmd_blk_t* cmd_head; } ;
struct cmd_blk_t {struct cmd_blk_t* next; int state; } ;


 int CMD_READY ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int wiiuse_send_next_command (struct wiimote_t*) ;

__attribute__((used)) static inline void __wiiuse_push_command(struct wiimote_t *wm,struct cmd_blk_t *cmd)
{
 uint level;

 if(!wm || !cmd) return;

 cmd->next = ((void*)0);
 cmd->state = CMD_READY;

 _CPU_ISR_Disable(level);
 if(wm->cmd_head==((void*)0)) {
  wm->cmd_head = wm->cmd_tail = cmd;
  wiiuse_send_next_command(wm);
 } else {
  wm->cmd_tail->next = cmd;
  wm->cmd_tail = cmd;
 }
 _CPU_ISR_Restore(level);
}
