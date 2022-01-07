; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/libs/vgfont/extr_graphics.c_graphics_update_end.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/libs/vgfont/extr_graphics.c_graphics_update_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@gx = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@DISPMANX_NO_HANDLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @graphics_update_end() #0 {
  %1 = alloca i32, align 4
  store i32 -1, i32* %1, align 4
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gx, i32 0, i32 0), align 8
  %3 = load i64, i64* @DISPMANX_NO_HANDLE, align 8
  %4 = icmp ne i64 %2, %3
  %5 = zext i1 %4 to i32
  %6 = call i64 @vcos_verify(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %29

8:                                                ; preds = %0
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gx, i32 0, i32 1), align 8
  %10 = icmp sgt i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i64 @vcos_verify(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %8
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gx, i32 0, i32 1), align 8
  %16 = add nsw i64 %15, -1
  store i64 %16, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gx, i32 0, i32 1), align 8
  store i32 0, i32* %1, align 4
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gx, i32 0, i32 1), align 8
  %18 = icmp eq i64 0, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = call i32 (...) @eglWaitClient()
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gx, i32 0, i32 0), align 8
  %22 = call i64 @vc_dispmanx_update_submit_sync(i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  store i32 -1, i32* %1, align 4
  %25 = call i32 @vc_assert(i32 0)
  br label %26

26:                                               ; preds = %24, %19
  br label %27

27:                                               ; preds = %26, %14
  br label %28

28:                                               ; preds = %27, %8
  br label %29

29:                                               ; preds = %28, %0
  %30 = load i32, i32* %1, align 4
  ret i32 %30
}

declare dso_local i64 @vcos_verify(i32) #1

declare dso_local i32 @eglWaitClient(...) #1

declare dso_local i64 @vc_dispmanx_update_submit_sync(i64) #1

declare dso_local i32 @vc_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
