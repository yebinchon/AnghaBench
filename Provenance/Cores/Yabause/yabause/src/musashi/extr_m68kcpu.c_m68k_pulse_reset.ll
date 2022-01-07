; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kcpu.c_m68k_pulse_reset.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kcpu.c_m68k_pulse_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPU_STOPPED = common dso_local global i64 0, align 8
@RUN_MODE_BERR_AERR_RESET = common dso_local global i32 0, align 4
@CPU_RUN_MODE = common dso_local global i32 0, align 4
@INSTRUCTION_YES = common dso_local global i32 0, align 4
@CPU_INSTR_MODE = common dso_local global i32 0, align 4
@FLAG_T0 = common dso_local global i64 0, align 8
@FLAG_T1 = common dso_local global i64 0, align 8
@FLAG_INT_MASK = common dso_local global i32 0, align 4
@REG_VBR = common dso_local global i64 0, align 8
@SFLAG_SET = common dso_local global i32 0, align 4
@MFLAG_CLEAR = common dso_local global i32 0, align 4
@REG_SP = common dso_local global i8* null, align 8
@REG_PC = common dso_local global i8* null, align 8
@RUN_MODE_NORMAL = common dso_local global i32 0, align 4
@CPU_PREF_ADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m68k_pulse_reset() #0 {
  store i64 0, i64* @CPU_STOPPED, align 8
  %1 = call i32 @SET_CYCLES(i32 0)
  %2 = load i32, i32* @RUN_MODE_BERR_AERR_RESET, align 4
  store i32 %2, i32* @CPU_RUN_MODE, align 4
  %3 = load i32, i32* @INSTRUCTION_YES, align 4
  store i32 %3, i32* @CPU_INSTR_MODE, align 4
  store i64 0, i64* @FLAG_T0, align 8
  store i64 0, i64* @FLAG_T1, align 8
  %4 = call i32 (...) @m68ki_clear_trace()
  store i32 1792, i32* @FLAG_INT_MASK, align 4
  store i64 0, i64* @REG_VBR, align 8
  %5 = load i32, i32* @SFLAG_SET, align 4
  %6 = load i32, i32* @MFLAG_CLEAR, align 4
  %7 = or i32 %5, %6
  %8 = call i32 @m68ki_set_sm_flag(i32 %7)
  %9 = call i32 @m68ki_jump(i8* null)
  %10 = call i8* (...) @m68ki_read_imm_32()
  store i8* %10, i8** @REG_SP, align 8
  %11 = call i8* (...) @m68ki_read_imm_32()
  store i8* %11, i8** @REG_PC, align 8
  %12 = load i8*, i8** @REG_PC, align 8
  %13 = call i32 @m68ki_jump(i8* %12)
  %14 = load i32, i32* @RUN_MODE_NORMAL, align 4
  store i32 %14, i32* @CPU_RUN_MODE, align 4
  ret void
}

declare dso_local i32 @SET_CYCLES(i32) #1

declare dso_local i32 @m68ki_clear_trace(...) #1

declare dso_local i32 @m68ki_set_sm_flag(i32) #1

declare dso_local i32 @m68ki_jump(i8*) #1

declare dso_local i8* @m68ki_read_imm_32(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
