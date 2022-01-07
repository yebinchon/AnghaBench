; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c_Text_PaintChar.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c_Text_PaintChar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Text_PaintChar(float %0, float %1, float %2, float %3, float %4, float %5, float %6, float %7, float %8, i32 %9) #0 {
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca i32, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  store float %0, float* %11, align 4
  store float %1, float* %12, align 4
  store float %2, float* %13, align 4
  store float %3, float* %14, align 4
  store float %4, float* %15, align 4
  store float %5, float* %16, align 4
  store float %6, float* %17, align 4
  store float %7, float* %18, align 4
  store float %8, float* %19, align 4
  store i32 %9, i32* %20, align 4
  %23 = load float, float* %13, align 4
  %24 = load float, float* %15, align 4
  %25 = fmul float %23, %24
  store float %25, float* %21, align 4
  %26 = load float, float* %14, align 4
  %27 = load float, float* %15, align 4
  %28 = fmul float %26, %27
  store float %28, float* %22, align 4
  %29 = call i32 @UI_AdjustFrom640(float* %11, float* %12, float* %21, float* %22)
  %30 = load float, float* %11, align 4
  %31 = load float, float* %12, align 4
  %32 = load float, float* %21, align 4
  %33 = load float, float* %22, align 4
  %34 = load float, float* %16, align 4
  %35 = load float, float* %17, align 4
  %36 = load float, float* %18, align 4
  %37 = load float, float* %19, align 4
  %38 = load i32, i32* %20, align 4
  %39 = call i32 @trap_R_DrawStretchPic(float %30, float %31, float %32, float %33, float %34, float %35, float %36, float %37, i32 %38)
  ret void
}

declare dso_local i32 @UI_AdjustFrom640(float*, float*, float*, float*) #1

declare dso_local i32 @trap_R_DrawStretchPic(float, float, float, float, float, float, float, float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
