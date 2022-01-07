; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_q_math.c_Q_rsqrt.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_q_math.c_Q_rsqrt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @Q_rsqrt(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca i64, align 8
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  store float %0, float* %2, align 4
  store float 1.500000e+00, float* %6, align 4
  %7 = load float, float* %2, align 4
  %8 = fmul float %7, 5.000000e-01
  store float %8, float* %4, align 4
  %9 = load float, float* %2, align 4
  store float %9, float* %5, align 4
  %10 = bitcast float* %5 to i64*
  %11 = load i64, i64* %10, align 4
  store i64 %11, i64* %3, align 8
  %12 = load i64, i64* %3, align 8
  %13 = ashr i64 %12, 1
  %14 = sub nsw i64 1597463007, %13
  store i64 %14, i64* %3, align 8
  %15 = bitcast i64* %3 to float*
  %16 = load float, float* %15, align 8
  store float %16, float* %5, align 4
  %17 = load float, float* %5, align 4
  %18 = load float, float* %4, align 4
  %19 = load float, float* %5, align 4
  %20 = fmul float %18, %19
  %21 = load float, float* %5, align 4
  %22 = fmul float %20, %21
  %23 = fsub float 1.500000e+00, %22
  %24 = fmul float %17, %23
  store float %24, float* %5, align 4
  %25 = load float, float* %5, align 4
  %26 = call i32 @isnan(float %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load float, float* %5, align 4
  ret float %31
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @isnan(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
