; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_opt.c_av_opt_set_video_rate.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_opt.c_av_opt_set_video_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64, i32 }

@AVERROR_OPTION_NOT_FOUND = common dso_local global i32 0, align 4
@AV_OPT_TYPE_VIDEO_RATE = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"The value set by option '%s' is not a video rate.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av_opt_set_video_rate(i8* %0, i8* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = bitcast %struct.TYPE_5__* %7 to { i64, i64 }*
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %13, i32 0, i32 0
  store i64 %2, i64* %14, align 8
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %13, i32 0, i32 1
  store i64 %3, i64* %15, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = load i32, i32* %10, align 4
  %19 = call %struct.TYPE_6__* @av_opt_find2(i8* %16, i8* %17, i32* null, i32 0, i32 %18, i8** %11)
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %12, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %21 = icmp ne %struct.TYPE_6__* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load i8*, i8** %11, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %22, %5
  %26 = load i32, i32* @AVERROR_OPTION_NOT_FOUND, align 4
  store i32 %26, i32* %6, align 4
  br label %62

27:                                               ; preds = %22
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AV_OPT_TYPE_VIDEO_RATE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %27
  %34 = load i8*, i8** %8, align 8
  %35 = load i32, i32* @AV_LOG_ERROR, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @av_log(i8* %34, i32 %35, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = call i32 @AVERROR(i32 %40)
  store i32 %41, i32* %6, align 4
  br label %62

42:                                               ; preds = %27
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp sle i64 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp sle i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46, %42
  %51 = load i32, i32* @EINVAL, align 4
  %52 = call i32 @AVERROR(i32 %51)
  store i32 %52, i32* %6, align 4
  br label %62

53:                                               ; preds = %46
  %54 = load i8*, i8** %8, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @set_number(i8* %54, i8* %55, i64 %57, i64 %59, i32 1, i32 %60)
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %53, %50, %33, %25
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local %struct.TYPE_6__* @av_opt_find2(i8*, i8*, i32*, i32, i32, i8**) #1

declare dso_local i32 @av_log(i8*, i32, i8*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @set_number(i8*, i8*, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
