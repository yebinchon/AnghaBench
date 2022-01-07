; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_timecode.c_av_timecode_init_from_string.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_timecode.c_av_timecode_init_from_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"%d:%d:%d%c%d\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Unable to parse timecode, syntax: hh:mm:ss[:;.]ff\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_TIMECODE_FLAG_DROPFRAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av_timecode_init_from_string(%struct.TYPE_5__* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i32 @sscanf(i8* %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %11, i32* %12, i32* %13, i8* %10, i32* %14)
  %19 = icmp ne i32 %18, 5
  br i1 %19, label %20, label %25

20:                                               ; preds = %4
  %21 = load i8*, i8** %9, align 8
  %22 = load i32, i32* @AV_LOG_ERROR, align 4
  %23 = call i32 @av_log(i8* %21, i32 %22, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %24, i32* %5, align 4
  br label %95

25:                                               ; preds = %4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %27 = call i32 @memset(%struct.TYPE_5__* %26, i32 0, i32 16)
  %28 = load i8, i8* %10, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 58
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @AV_TIMECODE_FLAG_DROPFRAME, align 4
  br label %34

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33, %31
  %35 = phi i32 [ %32, %31 ], [ 0, %33 ]
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @fps_from_frame_rate(i32 %41)
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i8*, i8** %9, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %47 = call i32 @check_timecode(i8* %45, %struct.TYPE_5__* %46)
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %34
  %51 = load i32, i32* %15, align 4
  store i32 %51, i32* %5, align 4
  br label %95

52:                                               ; preds = %34
  %53 = load i32, i32* %11, align 4
  %54 = mul nsw i32 %53, 3600
  %55 = load i32, i32* %12, align 4
  %56 = mul nsw i32 %55, 60
  %57 = add nsw i32 %54, %56
  %58 = load i32, i32* %13, align 4
  %59 = add nsw i32 %57, %58
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = mul nsw i32 %59, %62
  %64 = load i32, i32* %14, align 4
  %65 = add nsw i32 %63, %64
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @AV_TIMECODE_FLAG_DROPFRAME, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %94

74:                                               ; preds = %52
  %75 = load i32, i32* %11, align 4
  %76 = mul nsw i32 60, %75
  %77 = load i32, i32* %12, align 4
  %78 = add nsw i32 %76, %77
  store i32 %78, i32* %16, align 4
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 30
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 2, i32 4
  %85 = load i32, i32* %16, align 4
  %86 = load i32, i32* %16, align 4
  %87 = sdiv i32 %86, 10
  %88 = sub nsw i32 %85, %87
  %89 = mul nsw i32 %84, %88
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = sub nsw i32 %92, %89
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %74, %52
  store i32 0, i32* %5, align 4
  br label %95

95:                                               ; preds = %94, %50, %20
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i8*, i32*) #1

declare dso_local i32 @av_log(i8*, i32, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @fps_from_frame_rate(i32) #1

declare dso_local i32 @check_timecode(i8*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
