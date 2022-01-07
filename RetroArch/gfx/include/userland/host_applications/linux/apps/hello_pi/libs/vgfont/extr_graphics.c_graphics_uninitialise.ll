; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/libs/vgfont/extr_graphics.c_graphics_uninitialise.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/libs/vgfont/extr_graphics.c_graphics_uninitialise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@inited = common dso_local global i64 0, align 8
@GRAPHICS_RESOURCE_HANDLE_TYPE_MAX = common dso_local global i32 0, align 4
@gx_contexts = common dso_local global i64* null, align 8
@display = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@gx_log_cat = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @graphics_uninitialise() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @inited, align 8
  %3 = call i32 @vcos_assert(i64 %2)
  %4 = call i32 (...) @gx_priv_font_term()
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %25, %0
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @GRAPHICS_RESOURCE_HANDLE_TYPE_MAX, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %28

9:                                                ; preds = %5
  %10 = load i64*, i64** @gx_contexts, align 8
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i64, i64* %10, i64 %12
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %9
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @display, i32 0, i32 0), align 4
  %18 = load i64*, i64** @gx_contexts, align 8
  %19 = load i32, i32* %1, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @eglDestroyContext(i32 %17, i64 %22)
  br label %24

24:                                               ; preds = %16, %9
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %1, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %1, align 4
  br label %5

28:                                               ; preds = %5
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @display, i32 0, i32 0), align 4
  %30 = call i32 @eglTerminate(i32 %29)
  %31 = call i32 (...) @gx_priv_destroy()
  %32 = call i32 @vcos_log_unregister(i32* @gx_log_cat)
  store i64 0, i64* @inited, align 8
  ret i32 0
}

declare dso_local i32 @vcos_assert(i64) #1

declare dso_local i32 @gx_priv_font_term(...) #1

declare dso_local i32 @eglDestroyContext(i32, i64) #1

declare dso_local i32 @eglTerminate(i32) #1

declare dso_local i32 @gx_priv_destroy(...) #1

declare dso_local i32 @vcos_log_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
