; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/musashi/extr_m68kdasm.c_d68020_bsr_32.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/musashi/extr_m68kdasm.c_d68020_bsr_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_cpu_pc = common dso_local global i32 0, align 4
@M68020_PLUS = common dso_local global i32 0, align 4
@g_dasm_str = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"bsr     $%x; (2+)\00", align 1
@DASMFLAG_STEP_OVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @d68020_bsr_32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d68020_bsr_32() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @g_cpu_pc, align 4
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* @M68020_PLUS, align 4
  %4 = call i32 @LIMIT_CPU_TYPES(i32 %3)
  %5 = load i32, i32* @g_dasm_str, align 4
  %6 = load i32, i32* %1, align 4
  %7 = call i32 (...) @read_imm_32()
  %8 = add nsw i32 %6, %7
  %9 = call i32 @sprintf(i32 %5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load i32, i32* @DASMFLAG_STEP_OVER, align 4
  %11 = call i32 @SET_OPCODE_FLAGS(i32 %10)
  ret void
}

declare dso_local i32 @LIMIT_CPU_TYPES(i32) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @read_imm_32(...) #1

declare dso_local i32 @SET_OPCODE_FLAGS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
