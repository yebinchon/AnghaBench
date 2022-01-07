; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_cpu.c_CPU_GetStatus.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_cpu.c_CPU_GetStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@N = common dso_local global i32 0, align 4
@V = common dso_local global i64 0, align 8
@CPU_regP = common dso_local global i32 0, align 4
@Z = common dso_local global i64 0, align 8
@C = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CPU_GetStatus() #0 {
  %1 = load i32, i32* @N, align 4
  %2 = and i32 %1, 128
  %3 = load i64, i64* @V, align 8
  %4 = icmp ne i64 %3, 0
  %5 = zext i1 %4 to i64
  %6 = select i1 %4, i32 64, i32 0
  %7 = add nsw i32 %2, %6
  %8 = load i32, i32* @CPU_regP, align 4
  %9 = and i32 %8, 60
  %10 = add nsw i32 %7, %9
  %11 = load i64, i64* @Z, align 8
  %12 = icmp eq i64 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 2, i32 0
  %15 = add nsw i32 %10, %14
  %16 = load i32, i32* @C, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* @CPU_regP, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
