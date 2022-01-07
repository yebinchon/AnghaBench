; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_InitTexObjMinLOD.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_InitTexObjMinLOD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__gx_texobj = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GX_InitTexObjMinLOD(i32* %0, float %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca float, align 4
  %5 = alloca %struct.__gx_texobj*, align 8
  store i32* %0, i32** %3, align 8
  store float %1, float* %4, align 4
  %6 = load i32*, i32** %3, align 8
  %7 = bitcast i32* %6 to %struct.__gx_texobj*
  store %struct.__gx_texobj* %7, %struct.__gx_texobj** %5, align 8
  %8 = load float, float* %4, align 4
  %9 = fcmp olt float %8, 0.000000e+00
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store float 0.000000e+00, float* %4, align 4
  br label %16

11:                                               ; preds = %2
  %12 = load float, float* %4, align 4
  %13 = fcmp ogt float %12, 1.000000e+01
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store float 1.000000e+01, float* %4, align 4
  br label %15

15:                                               ; preds = %14, %11
  br label %16

16:                                               ; preds = %15, %10
  %17 = load %struct.__gx_texobj*, %struct.__gx_texobj** %5, align 8
  %18 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, -256
  %21 = load float, float* %4, align 4
  %22 = fmul float 1.600000e+01, %21
  %23 = fptosi float %22 to i32
  %24 = and i32 %23, 255
  %25 = or i32 %20, %24
  %26 = load %struct.__gx_texobj*, %struct.__gx_texobj** %5, align 8
  %27 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
