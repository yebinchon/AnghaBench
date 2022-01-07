; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libopenjpegdec.c_libopenjpeg_guess_pix_fmt.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libopenjpegdec.c_libopenjpeg_guess_pix_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@libopenjpeg_rgb_pix_fmts = common dso_local global i32* null, align 8
@libopenjpeg_gray_pix_fmts = common dso_local global i32* null, align 8
@libopenjpeg_yuv_pix_fmts = common dso_local global i32* null, align 8
@libopenjpeg_all_pix_fmts = common dso_local global i32* null, align 8
@AV_PIX_FMT_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @libopenjpeg_guess_pix_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @libopenjpeg_guess_pix_fmt(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32* null, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %22 [
    i32 129, label %10
    i32 130, label %14
    i32 128, label %18
  ]

10:                                               ; preds = %1
  %11 = load i32*, i32** @libopenjpeg_rgb_pix_fmts, align 8
  store i32* %11, i32** %5, align 8
  %12 = load i32*, i32** @libopenjpeg_rgb_pix_fmts, align 8
  %13 = call i32 @FF_ARRAY_ELEMS(i32* %12)
  store i32 %13, i32* %6, align 4
  br label %26

14:                                               ; preds = %1
  %15 = load i32*, i32** @libopenjpeg_gray_pix_fmts, align 8
  store i32* %15, i32** %5, align 8
  %16 = load i32*, i32** @libopenjpeg_gray_pix_fmts, align 8
  %17 = call i32 @FF_ARRAY_ELEMS(i32* %16)
  store i32 %17, i32* %6, align 4
  br label %26

18:                                               ; preds = %1
  %19 = load i32*, i32** @libopenjpeg_yuv_pix_fmts, align 8
  store i32* %19, i32** %5, align 8
  %20 = load i32*, i32** @libopenjpeg_yuv_pix_fmts, align 8
  %21 = call i32 @FF_ARRAY_ELEMS(i32* %20)
  store i32 %21, i32* %6, align 4
  br label %26

22:                                               ; preds = %1
  %23 = load i32*, i32** @libopenjpeg_all_pix_fmts, align 8
  store i32* %23, i32** %5, align 8
  %24 = load i32*, i32** @libopenjpeg_all_pix_fmts, align 8
  %25 = call i32 @FF_ARRAY_ELEMS(i32* %24)
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %22, %18, %14, %10
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %47, %26
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %50

31:                                               ; preds = %27
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @libopenjpeg_matches_pix_fmt(%struct.TYPE_4__* %32, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %31
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %2, align 4
  br label %52

46:                                               ; preds = %31
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %27

50:                                               ; preds = %27
  %51 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %50, %40
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @FF_ARRAY_ELEMS(i32*) #1

declare dso_local i64 @libopenjpeg_matches_pix_fmt(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
