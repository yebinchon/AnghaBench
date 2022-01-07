; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/m68k/extr_m68kcpu.h_m68ki_exception_privilege_violation.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/m68k/extr_m68kcpu.h_m68ki_exception_privilege_violation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INSTRUCTION_NO = common dso_local global i32 0, align 4
@CPU_INSTR_MODE = common dso_local global i32 0, align 4
@REG_PC = common dso_local global i64 0, align 8
@EXCEPTION_PRIVILEGE_VIOLATION = common dso_local global i64 0, align 8
@CYC_EXCEPTION = common dso_local global i64* null, align 8
@CYC_INSTRUCTION = common dso_local global i64* null, align 8
@REG_IR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @m68ki_exception_privilege_violation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m68ki_exception_privilege_violation() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @m68ki_init_exception()
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* @INSTRUCTION_NO, align 4
  store i32 %3, i32* @CPU_INSTR_MODE, align 4
  %4 = load i64, i64* @REG_PC, align 8
  %5 = sub nsw i64 %4, 2
  %6 = load i32, i32* %1, align 4
  %7 = call i32 @m68ki_stack_frame_3word(i64 %5, i32 %6)
  %8 = load i64, i64* @EXCEPTION_PRIVILEGE_VIOLATION, align 8
  %9 = call i32 @m68ki_jump_vector(i64 %8)
  %10 = load i64*, i64** @CYC_EXCEPTION, align 8
  %11 = load i64, i64* @EXCEPTION_PRIVILEGE_VIOLATION, align 8
  %12 = getelementptr inbounds i64, i64* %10, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = load i64*, i64** @CYC_INSTRUCTION, align 8
  %15 = load i64, i64* @REG_IR, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %13, %17
  %19 = call i32 @USE_CYCLES(i64 %18)
  ret void
}

declare dso_local i32 @m68ki_init_exception(...) #1

declare dso_local i32 @m68ki_stack_frame_3word(i64, i32) #1

declare dso_local i32 @m68ki_jump_vector(i64) #1

declare dso_local i32 @USE_CYCLES(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
