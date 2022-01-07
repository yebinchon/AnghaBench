; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_atoms.c_UI_DrawRect.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_atoms.c_UI_DrawRect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@uis = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UI_DrawRect(float %0, float %1, float %2, float %3, float* %4) #0 {
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float*, align 8
  store float %0, float* %6, align 4
  store float %1, float* %7, align 4
  store float %2, float* %8, align 4
  store float %3, float* %9, align 4
  store float* %4, float** %10, align 8
  %11 = load float*, float** %10, align 8
  %12 = call i32 @trap_R_SetColor(float* %11)
  %13 = call i32 @UI_AdjustFrom640(float* %6, float* %7, float* %8, float* %9)
  %14 = load float, float* %6, align 4
  %15 = load float, float* %7, align 4
  %16 = load float, float* %8, align 4
  %17 = fptosi float %16 to i32
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uis, i32 0, i32 0), align 4
  %19 = call i32 @trap_R_DrawStretchPic(float %14, float %15, i32 %17, float 1.000000e+00, i32 0, i32 0, i32 0, i32 0, i32 %18)
  %20 = load float, float* %6, align 4
  %21 = load float, float* %7, align 4
  %22 = load float, float* %9, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uis, i32 0, i32 0), align 4
  %24 = call i32 @trap_R_DrawStretchPic(float %20, float %21, i32 1, float %22, i32 0, i32 0, i32 0, i32 0, i32 %23)
  %25 = load float, float* %6, align 4
  %26 = load float, float* %7, align 4
  %27 = load float, float* %9, align 4
  %28 = fadd float %26, %27
  %29 = fsub float %28, 1.000000e+00
  %30 = load float, float* %8, align 4
  %31 = fptosi float %30 to i32
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uis, i32 0, i32 0), align 4
  %33 = call i32 @trap_R_DrawStretchPic(float %25, float %29, i32 %31, float 1.000000e+00, i32 0, i32 0, i32 0, i32 0, i32 %32)
  %34 = load float, float* %6, align 4
  %35 = load float, float* %8, align 4
  %36 = fadd float %34, %35
  %37 = fsub float %36, 1.000000e+00
  %38 = load float, float* %7, align 4
  %39 = load float, float* %9, align 4
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uis, i32 0, i32 0), align 4
  %41 = call i32 @trap_R_DrawStretchPic(float %37, float %38, i32 1, float %39, i32 0, i32 0, i32 0, i32 0, i32 %40)
  %42 = call i32 @trap_R_SetColor(float* null)
  ret void
}

declare dso_local i32 @trap_R_SetColor(float*) #1

declare dso_local i32 @UI_AdjustFrom640(float*, float*, float*, float*) #1

declare dso_local i32 @trap_R_DrawStretchPic(float, float, i32, float, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
