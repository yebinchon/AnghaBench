; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_utils.c_tv.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_utils.c_tv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tv.index = internal global i32 0, align 4
@tv.vecs = internal global [8 x float*] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float* @tv(float %0, float %1, float %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float*, align 8
  store float %0, float* %4, align 4
  store float %1, float* %5, align 4
  store float %2, float* %6, align 4
  %8 = load i32, i32* @tv.index, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [8 x float*], [8 x float*]* @tv.vecs, i64 0, i64 %9
  %11 = load float*, float** %10, align 8
  store float* %11, float** %7, align 8
  %12 = load i32, i32* @tv.index, align 4
  %13 = add nsw i32 %12, 1
  %14 = and i32 %13, 7
  store i32 %14, i32* @tv.index, align 4
  %15 = load float, float* %4, align 4
  %16 = load float*, float** %7, align 8
  %17 = getelementptr inbounds float, float* %16, i64 0
  store float %15, float* %17, align 4
  %18 = load float, float* %5, align 4
  %19 = load float*, float** %7, align 8
  %20 = getelementptr inbounds float, float* %19, i64 1
  store float %18, float* %20, align 4
  %21 = load float, float* %6, align 4
  %22 = load float*, float** %7, align 8
  %23 = getelementptr inbounds float, float* %22, i64 2
  store float %21, float* %23, align 4
  %24 = load float*, float** %7, align 8
  ret float* %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
