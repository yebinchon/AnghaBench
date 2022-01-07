; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/x86/extr_imgutils_init.c_ff_image_copy_plane_uc_from_x86.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/x86/extr_imgutils_init.c_ff_image_copy_plane_uc_from_x86.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_image_copy_plane_uc_from_x86(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = call i32 (...) @av_get_cpu_flags()
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* %12, align 4
  %18 = call i32 @FFALIGN(i32 %17, i32 64)
  store i32 %18, i32* %15, align 4
  %19 = load i32, i32* %14, align 4
  %20 = call i64 @EXTERNAL_SSE4(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %6
  %23 = load i32, i32* %15, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp sle i32 %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %22
  %27 = load i32, i32* %15, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp sle i32 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %15, align 4
  %36 = load i32, i32* %13, align 4
  %37 = call i32 @ff_image_copy_plane_uc_from_sse4(i32* %31, i32 %32, i32* %33, i32 %34, i32 %35, i32 %36)
  br label %41

38:                                               ; preds = %26, %22, %6
  %39 = load i32, i32* @ENOSYS, align 4
  %40 = call i32 @AVERROR(i32 %39)
  store i32 %40, i32* %7, align 4
  br label %42

41:                                               ; preds = %30
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %41, %38
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local i32 @av_get_cpu_flags(...) #1

declare dso_local i32 @FFALIGN(i32, i32) #1

declare dso_local i64 @EXTERNAL_SSE4(i32) #1

declare dso_local i32 @ff_image_copy_plane_uc_from_sse4(i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
