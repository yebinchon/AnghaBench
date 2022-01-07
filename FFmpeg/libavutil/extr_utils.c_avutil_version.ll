; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_utils.c_avutil_version.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_utils.c_avutil_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@avutil_version.checks_done = internal global i32 0, align 4
@LIBAVUTIL_VERSION_INT = common dso_local global i32 0, align 4
@AV_SAMPLE_FMT_DBLP = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_ATTACHMENT = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_BI = common dso_local global i32 0, align 4
@LIBAVUTIL_VERSION_MICRO = common dso_local global i32 0, align 4
@HAVE_MMX2 = common dso_local global i64 0, align 8
@HAVE_MMXEXT = common dso_local global i64 0, align 8
@AV_LOG_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [86 x i8] c"Libavutil has been built with a broken binutils, please upgrade binutils and rebuild\0A\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Libavutil has been linked to a broken llrint()\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @avutil_version() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @avutil_version.checks_done, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = load i32, i32* @LIBAVUTIL_VERSION_INT, align 4
  store i32 %5, i32* %1, align 4
  br label %43

6:                                                ; preds = %0
  %7 = load i32, i32* @AV_SAMPLE_FMT_DBLP, align 4
  %8 = icmp eq i32 %7, 9
  %9 = zext i1 %8 to i32
  %10 = call i32 @av_assert0(i32 %9)
  %11 = load i32, i32* @AVMEDIA_TYPE_ATTACHMENT, align 4
  %12 = icmp eq i32 %11, 4
  %13 = zext i1 %12 to i32
  %14 = call i32 @av_assert0(i32 %13)
  %15 = load i32, i32* @AV_PICTURE_TYPE_BI, align 4
  %16 = icmp eq i32 %15, 7
  %17 = zext i1 %16 to i32
  %18 = call i32 @av_assert0(i32 %17)
  %19 = load i32, i32* @LIBAVUTIL_VERSION_MICRO, align 4
  %20 = icmp sge i32 %19, 100
  %21 = zext i1 %20 to i32
  %22 = call i32 @av_assert0(i32 %21)
  %23 = load i64, i64* @HAVE_MMX2, align 8
  %24 = load i64, i64* @HAVE_MMXEXT, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @av_assert0(i32 %26)
  %28 = call i32 @av_assert0(i32 1)
  %29 = call i32 @av_sat_dadd32(i32 1, i32 2)
  %30 = icmp ne i32 %29, 5
  br i1 %30, label %31, label %35

31:                                               ; preds = %6
  %32 = load i32, i32* @AV_LOG_FATAL, align 4
  %33 = call i32 @av_log(i32* null, i32 %32, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0))
  %34 = call i32 (...) @abort() #3
  unreachable

35:                                               ; preds = %6
  %36 = call i64 @llrint(i64 1152921504606846976)
  %37 = icmp ne i64 %36, 1152921504606846976
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* @AV_LOG_ERROR, align 4
  %40 = call i32 @av_log(i32* null, i32 %39, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %35
  store i32 1, i32* @avutil_version.checks_done, align 4
  %42 = load i32, i32* @LIBAVUTIL_VERSION_INT, align 4
  store i32 %42, i32* %1, align 4
  br label %43

43:                                               ; preds = %41, %4
  %44 = load i32, i32* %1, align 4
  ret i32 %44
}

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @av_sat_dadd32(i32, i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i64 @llrint(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
