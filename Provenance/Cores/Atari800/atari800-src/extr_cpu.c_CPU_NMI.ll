; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_cpu.c_CPU_NMI.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_cpu.c_CPU_NMI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPU_regS = common dso_local global i32 0, align 4
@CPU_regPC = common dso_local global i32 0, align 4
@PHPB0 = common dso_local global i32 0, align 4
@CPU_SetI = common dso_local global i32 0, align 4
@ANTIC_xpos = common dso_local global i32 0, align 4
@INC_RET_NESTING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CPU_NMI() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @CPU_regS, align 4
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* @CPU_regPC, align 4
  %5 = call i32 @PHW(i32 %4)
  %6 = load i32, i32* @PHPB0, align 4
  %7 = load i32, i32* @CPU_SetI, align 4
  %8 = call i32 @MEMORY_dGetWordAligned(i32 65530)
  store i32 %8, i32* @CPU_regPC, align 4
  %9 = load i32, i32* %1, align 4
  store i32 %9, i32* @CPU_regS, align 4
  %10 = load i32, i32* @ANTIC_xpos, align 4
  %11 = add nsw i32 %10, 7
  store i32 %11, i32* @ANTIC_xpos, align 4
  %12 = load i32, i32* @INC_RET_NESTING, align 4
  ret void
}

declare dso_local i32 @PHW(i32) #1

declare dso_local i32 @MEMORY_dGetWordAligned(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
