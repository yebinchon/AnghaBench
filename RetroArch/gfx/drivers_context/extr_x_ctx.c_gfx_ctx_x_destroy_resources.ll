; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_x_ctx.c_gfx_ctx_x_destroy_resources.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_x_ctx.c_gfx_ctx_x_destroy_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32*, i32*, i32, i32, i32 }

@g_x11_dpy = common dso_local global i32* null, align 8
@x_api = common dso_local global i32 0, align 4
@g_x11_win = common dso_local global i64 0, align 8
@g_major = common dso_local global i64 0, align 8
@g_minor = common dso_local global i64 0, align 8
@None = common dso_local global i32 0, align 4
@g_pglSwapInterval = common dso_local global i32* null, align 8
@g_pglSwapIntervalEXT = common dso_local global i32* null, align 8
@g_pglSwapIntervalSGI = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @gfx_ctx_x_destroy_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_ctx_x_destroy_resources(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = call i32 (...) @x11_input_ctx_destroy()
  %4 = load i32*, i32** @g_x11_dpy, align 8
  %5 = icmp ne i32* %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = load i32, i32* @x_api, align 4
  switch i32 %7, label %11 [
    i32 130, label %8
    i32 129, label %8
    i32 128, label %9
    i32 131, label %10
  ]

8:                                                ; preds = %6, %6
  br label %12

9:                                                ; preds = %6
  br label %12

10:                                               ; preds = %6
  br label %11

11:                                               ; preds = %6, %10
  br label %12

12:                                               ; preds = %11, %9, %8
  br label %13

13:                                               ; preds = %12, %1
  %14 = load i64, i64* @g_x11_win, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load i32*, i32** @g_x11_dpy, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = call i32 @x11_window_destroy(i32 0)
  br label %21

21:                                               ; preds = %19, %16, %13
  %22 = call i32 (...) @x11_colormap_destroy()
  %23 = load i32*, i32** @g_x11_dpy, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %42

25:                                               ; preds = %21
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i32*, i32** @g_x11_dpy, align 8
  %32 = call i32 @x11_exit_fullscreen(i32* %31)
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  br label %35

35:                                               ; preds = %30, %25
  %36 = call i32 (...) @video_driver_is_video_cache_context()
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i32*, i32** @g_x11_dpy, align 8
  %40 = call i32 @XCloseDisplay(i32* %39)
  store i32* null, i32** @g_x11_dpy, align 8
  br label %41

41:                                               ; preds = %38, %35
  br label %42

42:                                               ; preds = %41, %21
  store i64 0, i64* @g_major, align 8
  store i64 0, i64* @g_minor, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  store i32 0, i32* %44, align 4
  ret void
}

declare dso_local i32 @x11_input_ctx_destroy(...) #1

declare dso_local i32 @x11_window_destroy(i32) #1

declare dso_local i32 @x11_colormap_destroy(...) #1

declare dso_local i32 @x11_exit_fullscreen(i32*) #1

declare dso_local i32 @video_driver_is_video_cache_context(...) #1

declare dso_local i32 @XCloseDisplay(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
