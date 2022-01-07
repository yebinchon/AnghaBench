; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_vpcc.c_get_vpx_chroma_subsampling.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_vpcc.c_get_vpx_chroma_subsampling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AVCHROMA_LOC_LEFT = common dso_local global i32 0, align 4
@VPX_SUBSAMPLING_420_VERTICAL = common dso_local global i32 0, align 4
@VPX_SUBSAMPLING_420_COLLOCATED_WITH_LUMA = common dso_local global i32 0, align 4
@VPX_SUBSAMPLING_422 = common dso_local global i32 0, align 4
@VPX_SUBSAMPLING_444 = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Unsupported pixel format (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @get_vpx_chroma_subsampling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_vpx_chroma_subsampling(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i64 @av_pix_fmt_get_chroma_sub_sample(i32 %10, i32* %8, i32* %9)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %48

13:                                               ; preds = %3
  %14 = load i32, i32* %8, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %29

16:                                               ; preds = %13
  %17 = load i32, i32* %9, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @AVCHROMA_LOC_LEFT, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @VPX_SUBSAMPLING_420_VERTICAL, align 4
  br label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @VPX_SUBSAMPLING_420_COLLOCATED_WITH_LUMA, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  store i32 %28, i32* %4, align 4
  br label %53

29:                                               ; preds = %16, %13
  %30 = load i32, i32* %8, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i32, i32* %9, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* @VPX_SUBSAMPLING_422, align 4
  store i32 %36, i32* %4, align 4
  br label %53

37:                                               ; preds = %32, %29
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load i32, i32* %9, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* @VPX_SUBSAMPLING_444, align 4
  store i32 %44, i32* %4, align 4
  br label %53

45:                                               ; preds = %40, %37
  br label %46

46:                                               ; preds = %45
  br label %47

47:                                               ; preds = %46
  br label %48

48:                                               ; preds = %47, %3
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* @AV_LOG_ERROR, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @av_log(i32* %49, i32 %50, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %51)
  store i32 -1, i32* %4, align 4
  br label %53

53:                                               ; preds = %48, %43, %35, %27
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i64 @av_pix_fmt_get_chroma_sub_sample(i32, i32*, i32*) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
