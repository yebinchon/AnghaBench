; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_sr.c_query_formats.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_sr.c_query_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_PIX_FMT_YUV420P = common dso_local global i32 0, align 4
@AV_PIX_FMT_YUV422P = common dso_local global i32 0, align 4
@AV_PIX_FMT_YUV444P = common dso_local global i32 0, align 4
@AV_PIX_FMT_YUV410P = common dso_local global i32 0, align 4
@AV_PIX_FMT_YUV411P = common dso_local global i32 0, align 4
@AV_PIX_FMT_GRAY8 = common dso_local global i32 0, align 4
@AV_PIX_FMT_NONE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"could not create formats list\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @query_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_formats(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca [7 x i32], align 16
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %6 = getelementptr inbounds [7 x i32], [7 x i32]* %4, i64 0, i64 0
  %7 = load i32, i32* @AV_PIX_FMT_YUV420P, align 4
  store i32 %7, i32* %6, align 4
  %8 = getelementptr inbounds i32, i32* %6, i64 1
  %9 = load i32, i32* @AV_PIX_FMT_YUV422P, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds i32, i32* %8, i64 1
  %11 = load i32, i32* @AV_PIX_FMT_YUV444P, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds i32, i32* %10, i64 1
  %13 = load i32, i32* @AV_PIX_FMT_YUV410P, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds i32, i32* %12, i64 1
  %15 = load i32, i32* @AV_PIX_FMT_YUV411P, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds i32, i32* %14, i64 1
  %17 = load i32, i32* @AV_PIX_FMT_GRAY8, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds i32, i32* %16, i64 1
  %19 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds [7 x i32], [7 x i32]* %4, i64 0, i64 0
  %21 = call i32* @ff_make_format_list(i32* %20)
  store i32* %21, i32** %5, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %1
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* @AV_LOG_ERROR, align 4
  %27 = call i32 @av_log(i32* %25, i32 %26, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = call i32 @AVERROR(i32 %28)
  store i32 %29, i32* %2, align 4
  br label %34

30:                                               ; preds = %1
  %31 = load i32*, i32** %3, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @ff_set_common_formats(i32* %31, i32* %32)
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %30, %24
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32* @ff_make_format_list(i32*) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_set_common_formats(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
