; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..taskstask_screenshot.c_take_screenshot.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..taskstask_screenshot.c_take_screenshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @take_screenshot(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %19 = call i32 @runloop_get_status(i32* %14, i32* %15, i32* %16, i32* %17)
  %20 = load i8*, i8** %8, align 8
  %21 = call i64 @string_is_empty(i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %6
  %24 = load i8*, i8** %9, align 8
  %25 = call i64 @string_is_empty(i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  br label %57

28:                                               ; preds = %23, %6
  %29 = load i8*, i8** %8, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* %15, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %13, align 4
  %37 = call i64 (...) @video_driver_supports_viewport_read()
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %28
  %40 = call i64 (...) @video_driver_prefer_viewport_read()
  %41 = icmp ne i64 %40, 0
  br label %42

42:                                               ; preds = %39, %28
  %43 = phi i1 [ false, %28 ], [ %41, %39 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 (...) @video_driver_supports_read_frame_raw()
  %46 = call i32 (...) @video_driver_get_pixel_format()
  %47 = call i32 @take_screenshot_choice(i8* %29, i8* %30, i32 %31, i32 %32, i32 %33, i32 %34, i32 %35, i32 %36, i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %18, align 4
  %48 = load i32, i32* %14, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %42
  %51 = load i32, i32* %15, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = call i32 (...) @video_driver_cached_frame()
  br label %55

55:                                               ; preds = %53, %50, %42
  %56 = load i32, i32* %18, align 4
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %55, %27
  %58 = load i32, i32* %7, align 4
  ret i32 %58
}

declare dso_local i32 @runloop_get_status(i32*, i32*, i32*, i32*) #1

declare dso_local i64 @string_is_empty(i8*) #1

declare dso_local i32 @take_screenshot_choice(i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @video_driver_supports_viewport_read(...) #1

declare dso_local i64 @video_driver_prefer_viewport_read(...) #1

declare dso_local i32 @video_driver_supports_read_frame_raw(...) #1

declare dso_local i32 @video_driver_get_pixel_format(...) #1

declare dso_local i32 @video_driver_cached_frame(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
