; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_rgui.c_rgui_set_pixel_format_function.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_rgui.c_rgui_set_pixel_format_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@argb32_to_rgba4444 = common dso_local global i32 0, align 4
@argb32_to_pixel_platform_format = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ps2\00", align 1
@argb32_to_abgr1555 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"gx\00", align 1
@argb32_to_rgb5a3 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"psp1\00", align 1
@argb32_to_abgr4444 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"d3d10\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"d3d11\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"d3d12\00", align 1
@argb32_to_bgra4444 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @rgui_set_pixel_format_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rgui_set_pixel_format_function() #0 {
  %1 = alloca i8*, align 8
  %2 = call i8* (...) @video_driver_get_ident()
  store i8* %2, i8** %1, align 8
  %3 = load i8*, i8** %1, align 8
  %4 = call i64 @string_is_empty(i8* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load i32, i32* @argb32_to_rgba4444, align 4
  store i32 %7, i32* @argb32_to_pixel_platform_format, align 4
  br label %45

8:                                                ; preds = %0
  %9 = load i8*, i8** %1, align 8
  %10 = call i64 @string_is_equal(i8* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = load i32, i32* @argb32_to_abgr1555, align 4
  store i32 %13, i32* @argb32_to_pixel_platform_format, align 4
  br label %45

14:                                               ; preds = %8
  %15 = load i8*, i8** %1, align 8
  %16 = call i64 @string_is_equal(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* @argb32_to_rgb5a3, align 4
  store i32 %19, i32* @argb32_to_pixel_platform_format, align 4
  br label %44

20:                                               ; preds = %14
  %21 = load i8*, i8** %1, align 8
  %22 = call i64 @string_is_equal(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @argb32_to_abgr4444, align 4
  store i32 %25, i32* @argb32_to_pixel_platform_format, align 4
  br label %43

26:                                               ; preds = %20
  %27 = load i8*, i8** %1, align 8
  %28 = call i64 @string_is_equal(i8* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %26
  %31 = load i8*, i8** %1, align 8
  %32 = call i64 @string_is_equal(i8* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load i8*, i8** %1, align 8
  %36 = call i64 @string_is_equal(i8* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34, %30, %26
  %39 = load i32, i32* @argb32_to_bgra4444, align 4
  store i32 %39, i32* @argb32_to_pixel_platform_format, align 4
  br label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @argb32_to_rgba4444, align 4
  store i32 %41, i32* @argb32_to_pixel_platform_format, align 4
  br label %42

42:                                               ; preds = %40, %38
  br label %43

43:                                               ; preds = %42, %24
  br label %44

44:                                               ; preds = %43, %18
  br label %45

45:                                               ; preds = %6, %44, %12
  ret void
}

declare dso_local i8* @video_driver_get_ident(...) #1

declare dso_local i64 @string_is_empty(i8*) #1

declare dso_local i64 @string_is_equal(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
