; ModuleID = '/home/carl/AnghaBench/RetroArch/ctr/extr_gpu_old.c_GPU_SetAlphaBlending.c'
source_filename = "/home/carl/AnghaBench/RetroArch/ctr/extr_gpu_old.c_GPU_SetAlphaBlending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GPUREG_BLEND_FUNC = common dso_local global i32 0, align 4
@GPUREG_COLOR_OPERATION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GPU_SetAlphaBlending(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load i32, i32* @GPUREG_BLEND_FUNC, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = shl i32 %15, 8
  %17 = or i32 %14, %16
  %18 = load i32, i32* %9, align 4
  %19 = shl i32 %18, 16
  %20 = or i32 %17, %19
  %21 = load i32, i32* %10, align 4
  %22 = shl i32 %21, 20
  %23 = or i32 %20, %22
  %24 = load i32, i32* %11, align 4
  %25 = shl i32 %24, 24
  %26 = or i32 %23, %25
  %27 = load i32, i32* %12, align 4
  %28 = shl i32 %27, 28
  %29 = or i32 %26, %28
  %30 = call i32 @GPUCMD_AddWrite(i32 %13, i32 %29)
  %31 = load i32, i32* @GPUREG_COLOR_OPERATION, align 4
  %32 = call i32 @GPUCMD_AddMaskedWrite(i32 %31, i32 2, i32 256)
  ret void
}

declare dso_local i32 @GPUCMD_AddWrite(i32, i32) #1

declare dso_local i32 @GPUCMD_AddMaskedWrite(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
