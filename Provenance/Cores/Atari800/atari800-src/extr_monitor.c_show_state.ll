; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_monitor.c_show_state.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_monitor.c_show_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i32 0, align 4
@CPU_regPC = common dso_local global i32 0, align 4
@CPU_regA = common dso_local global i32 0, align 4
@CPU_regX = common dso_local global i32 0, align 4
@CPU_regY = common dso_local global i32 0, align 4
@CPU_regS = common dso_local global i32 0, align 4
@CPU_regP = common dso_local global i32 0, align 4
@CPU_N_FLAG = common dso_local global i32 0, align 4
@CPU_V_FLAG = common dso_local global i32 0, align 4
@CPU_Z_FLAG = common dso_local global i32 0, align 4
@CPU_C_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @show_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_state() #0 {
  %1 = load i32, i32* @stdout, align 4
  %2 = load i32, i32* @CPU_regPC, align 4
  %3 = load i32, i32* @CPU_regA, align 4
  %4 = load i32, i32* @CPU_regX, align 4
  %5 = load i32, i32* @CPU_regY, align 4
  %6 = load i32, i32* @CPU_regS, align 4
  %7 = load i32, i32* @CPU_regP, align 4
  %8 = load i32, i32* @CPU_N_FLAG, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 78, i32 45
  %13 = trunc i32 %12 to i8
  %14 = load i32, i32* @CPU_regP, align 4
  %15 = load i32, i32* @CPU_V_FLAG, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 86, i32 45
  %20 = trunc i32 %19 to i8
  %21 = load i32, i32* @CPU_regP, align 4
  %22 = load i32, i32* @CPU_Z_FLAG, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 90, i32 45
  %27 = trunc i32 %26 to i8
  %28 = load i32, i32* @CPU_regP, align 4
  %29 = load i32, i32* @CPU_C_FLAG, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 67, i32 45
  %34 = trunc i32 %33 to i8
  %35 = call i32 @MONITOR_ShowState(i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i8 signext %13, i8 signext %20, i8 signext %27, i8 signext %34)
  ret void
}

declare dso_local i32 @MONITOR_ShowState(i32, i32, i32, i32, i32, i32, i8 signext, i8 signext, i8 signext, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
