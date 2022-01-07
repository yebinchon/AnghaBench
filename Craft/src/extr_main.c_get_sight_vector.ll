; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_main.c_get_sight_vector.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_main.c_get_sight_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_sight_vector(float %0, float %1, float* %2, float* %3, float* %4) #0 {
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float, align 4
  store float %0, float* %6, align 4
  store float %1, float* %7, align 4
  store float* %2, float** %8, align 8
  store float* %3, float** %9, align 8
  store float* %4, float** %10, align 8
  %12 = load float, float* %7, align 4
  %13 = call float @cosf(float %12) #3
  store float %13, float* %11, align 4
  %14 = load float, float* %6, align 4
  %15 = call float @RADIANS(i32 90)
  %16 = fsub float %14, %15
  %17 = call float @cosf(float %16) #3
  %18 = load float, float* %11, align 4
  %19 = fmul float %17, %18
  %20 = load float*, float** %8, align 8
  store float %19, float* %20, align 4
  %21 = load float, float* %7, align 4
  %22 = call float @sinf(float %21) #3
  %23 = load float*, float** %9, align 8
  store float %22, float* %23, align 4
  %24 = load float, float* %6, align 4
  %25 = call float @RADIANS(i32 90)
  %26 = fsub float %24, %25
  %27 = call float @sinf(float %26) #3
  %28 = load float, float* %11, align 4
  %29 = fmul float %27, %28
  %30 = load float*, float** %10, align 8
  store float %29, float* %30, align 4
  ret void
}

; Function Attrs: nounwind
declare dso_local float @cosf(float) #1

declare dso_local float @RADIANS(i32) #2

; Function Attrs: nounwind
declare dso_local float @sinf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
