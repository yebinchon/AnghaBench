; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_drm_ctx.c_gfx_ctx_drm_wait_flip.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_drm_ctx.c_gfx_ctx_drm_wait_flip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@waiting_for_flip = common dso_local global i64 0, align 8
@g_gbm_surface = common dso_local global i32 0, align 4
@g_bo = common dso_local global i32 0, align 4
@g_next_bo = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @gfx_ctx_drm_wait_flip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_ctx_drm_wait_flip(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load i64, i64* @waiting_for_flip, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %31

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  store i32 -1, i32* %4, align 4
  br label %12

12:                                               ; preds = %11, %8
  br label %13

13:                                               ; preds = %21, %12
  %14 = load i64, i64* @waiting_for_flip, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @drm_wait_flip(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  br label %22

21:                                               ; preds = %16
  br label %13

22:                                               ; preds = %20, %13
  %23 = load i64, i64* @waiting_for_flip, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 1, i32* %2, align 4
  br label %31

26:                                               ; preds = %22
  %27 = load i32, i32* @g_gbm_surface, align 4
  %28 = load i32, i32* @g_bo, align 4
  %29 = call i32 @gbm_surface_release_buffer(i32 %27, i32 %28)
  %30 = load i32, i32* @g_next_bo, align 4
  store i32 %30, i32* @g_bo, align 4
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %26, %25, %7
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @drm_wait_flip(i32) #1

declare dso_local i32 @gbm_surface_release_buffer(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
