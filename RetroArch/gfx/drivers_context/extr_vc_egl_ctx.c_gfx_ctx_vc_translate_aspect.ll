; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_vc_egl_ctx.c_gfx_ctx_vc_translate_aspect.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_vc_egl_ctx.c_gfx_ctx_vc_translate_aspect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (i8*, i32, i32)* @gfx_ctx_vc_translate_aspect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @gfx_ctx_vc_translate_aspect(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = icmp eq i32 %9, 640
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 %12, 720
  br i1 %13, label %14, label %21

14:                                               ; preds = %11, %3
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, 480
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, 576
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %14
  store float 0x3FF5555560000000, float* %4, align 4
  br label %27

21:                                               ; preds = %17, %11
  %22 = load i32, i32* %6, align 4
  %23 = uitofp i32 %22 to float
  %24 = load i32, i32* %7, align 4
  %25 = uitofp i32 %24 to float
  %26 = fdiv float %23, %25
  store float %26, float* %4, align 4
  br label %27

27:                                               ; preds = %21, %20
  %28 = load float, float* %4, align 4
  ret float %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
