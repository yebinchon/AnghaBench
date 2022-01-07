; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_driver.c_hex32_to_rgba_normalized.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_driver.c_hex32_to_rgba_normalized.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hex32_to_rgba_normalized(i32 %0, float* %1, float %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca float*, align 8
  %6 = alloca float, align 4
  store i32 %0, i32* %4, align 4
  store float* %1, float** %5, align 8
  store float %2, float* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = ashr i32 %7, 16
  %9 = and i32 %8, 255
  %10 = sitofp i32 %9 to float
  %11 = fmul float %10, 0x3F70101020000000
  %12 = load float*, float** %5, align 8
  %13 = getelementptr inbounds float, float* %12, i64 12
  store float %11, float* %13, align 4
  %14 = load float*, float** %5, align 8
  %15 = getelementptr inbounds float, float* %14, i64 8
  store float %11, float* %15, align 4
  %16 = load float*, float** %5, align 8
  %17 = getelementptr inbounds float, float* %16, i64 4
  store float %11, float* %17, align 4
  %18 = load float*, float** %5, align 8
  %19 = getelementptr inbounds float, float* %18, i64 0
  store float %11, float* %19, align 4
  %20 = load i32, i32* %4, align 4
  %21 = ashr i32 %20, 8
  %22 = and i32 %21, 255
  %23 = sitofp i32 %22 to float
  %24 = fmul float %23, 0x3F70101020000000
  %25 = load float*, float** %5, align 8
  %26 = getelementptr inbounds float, float* %25, i64 13
  store float %24, float* %26, align 4
  %27 = load float*, float** %5, align 8
  %28 = getelementptr inbounds float, float* %27, i64 9
  store float %24, float* %28, align 4
  %29 = load float*, float** %5, align 8
  %30 = getelementptr inbounds float, float* %29, i64 5
  store float %24, float* %30, align 4
  %31 = load float*, float** %5, align 8
  %32 = getelementptr inbounds float, float* %31, i64 1
  store float %24, float* %32, align 4
  %33 = load i32, i32* %4, align 4
  %34 = ashr i32 %33, 0
  %35 = and i32 %34, 255
  %36 = sitofp i32 %35 to float
  %37 = fmul float %36, 0x3F70101020000000
  %38 = load float*, float** %5, align 8
  %39 = getelementptr inbounds float, float* %38, i64 14
  store float %37, float* %39, align 4
  %40 = load float*, float** %5, align 8
  %41 = getelementptr inbounds float, float* %40, i64 10
  store float %37, float* %41, align 4
  %42 = load float*, float** %5, align 8
  %43 = getelementptr inbounds float, float* %42, i64 6
  store float %37, float* %43, align 4
  %44 = load float*, float** %5, align 8
  %45 = getelementptr inbounds float, float* %44, i64 2
  store float %37, float* %45, align 4
  %46 = load float, float* %6, align 4
  %47 = load float*, float** %5, align 8
  %48 = getelementptr inbounds float, float* %47, i64 15
  store float %46, float* %48, align 4
  %49 = load float*, float** %5, align 8
  %50 = getelementptr inbounds float, float* %49, i64 11
  store float %46, float* %50, align 4
  %51 = load float*, float** %5, align 8
  %52 = getelementptr inbounds float, float* %51, i64 7
  store float %46, float* %52, align 4
  %53 = load float*, float** %5, align 8
  %54 = getelementptr inbounds float, float* %53, i64 3
  store float %46, float* %54, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
