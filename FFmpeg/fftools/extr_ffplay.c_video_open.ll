; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffplay.c_video_open.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffplay.c_video_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@screen_width = common dso_local global i32 0, align 4
@default_width = common dso_local global i32 0, align 4
@screen_height = common dso_local global i32 0, align 4
@default_height = common dso_local global i32 0, align 4
@window_title = common dso_local global i64 0, align 8
@input_filename = common dso_local global i64 0, align 8
@window = common dso_local global i32 0, align 4
@screen_left = common dso_local global i32 0, align 4
@screen_top = common dso_local global i32 0, align 4
@is_full_screen = common dso_local global i64 0, align 8
@SDL_WINDOW_FULLSCREEN_DESKTOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @video_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @video_open(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %5 = load i32, i32* @screen_width, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @screen_width, align 4
  br label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @default_width, align 4
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32 [ %8, %7 ], [ %10, %9 ]
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @screen_height, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load i32, i32* @screen_height, align 4
  br label %19

17:                                               ; preds = %11
  %18 = load i32, i32* @default_height, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  store i32 %20, i32* %4, align 4
  %21 = load i64, i64* @window_title, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = load i64, i64* @input_filename, align 8
  store i64 %24, i64* @window_title, align 8
  br label %25

25:                                               ; preds = %23, %19
  %26 = load i32, i32* @window, align 4
  %27 = load i64, i64* @window_title, align 8
  %28 = call i32 @SDL_SetWindowTitle(i32 %26, i64 %27)
  %29 = load i32, i32* @window, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @SDL_SetWindowSize(i32 %29, i32 %30, i32 %31)
  %33 = load i32, i32* @window, align 4
  %34 = load i32, i32* @screen_left, align 4
  %35 = load i32, i32* @screen_top, align 4
  %36 = call i32 @SDL_SetWindowPosition(i32 %33, i32 %34, i32 %35)
  %37 = load i64, i64* @is_full_screen, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %25
  %40 = load i32, i32* @window, align 4
  %41 = load i32, i32* @SDL_WINDOW_FULLSCREEN_DESKTOP, align 4
  %42 = call i32 @SDL_SetWindowFullscreen(i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %39, %25
  %44 = load i32, i32* @window, align 4
  %45 = call i32 @SDL_ShowWindow(i32 %44)
  %46 = load i32, i32* %3, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  ret i32 0
}

declare dso_local i32 @SDL_SetWindowTitle(i32, i64) #1

declare dso_local i32 @SDL_SetWindowSize(i32, i32, i32) #1

declare dso_local i32 @SDL_SetWindowPosition(i32, i32, i32) #1

declare dso_local i32 @SDL_SetWindowFullscreen(i32, i32) #1

declare dso_local i32 @SDL_ShowWindow(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
