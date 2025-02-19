; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_timecode.c_av_timecode_make_string.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_timecode.c_av_timecode_make_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64 }

@AV_TIMECODE_FLAG_DROPFRAME = common dso_local global i32 0, align 4
@AV_TIMECODE_FLAG_ALLOWNEGATIVE = common dso_local global i32 0, align 4
@AV_TIMECODE_FLAG_24HOURSMAX = common dso_local global i32 0, align 4
@AV_TIMECODE_STR_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%s%02d:%02d:%02d%c%02d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @av_timecode_make_string(%struct.TYPE_3__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @AV_TIMECODE_FLAG_DROPFRAME, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %8, align 4
  store i32 0, i32* %13, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %3
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @av_timecode_adjust_ntsc_framenum2(i32 %32, i32 %33)
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %31, %3
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load i32, i32* %6, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @AV_TIMECODE_FLAG_ALLOWNEGATIVE, align 4
  %45 = and i32 %43, %44
  store i32 %45, i32* %13, align 4
  br label %46

46:                                               ; preds = %38, %35
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = srem i32 %47, %48
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %7, align 4
  %52 = sdiv i32 %50, %51
  %53 = srem i32 %52, 60
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %7, align 4
  %56 = mul nsw i32 %55, 60
  %57 = sdiv i32 %54, %56
  %58 = srem i32 %57, 60
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %7, align 4
  %61 = mul nsw i32 %60, 3600
  %62 = sdiv i32 %59, %61
  store i32 %62, i32* %9, align 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @AV_TIMECODE_FLAG_24HOURSMAX, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %46
  %70 = load i32, i32* %9, align 4
  %71 = srem i32 %70, 24
  store i32 %71, i32* %9, align 4
  br label %72

72:                                               ; preds = %69, %46
  %73 = load i8*, i8** %5, align 8
  %74 = load i32, i32* @AV_TIMECODE_STR_SIZE, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i32 59, i32 58
  %86 = trunc i32 %85 to i8
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @snprintf(i8* %73, i32 %74, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %78, i32 %79, i32 %80, i32 %81, i8 signext %86, i32 %87)
  %89 = load i8*, i8** %5, align 8
  ret i8* %89
}

declare dso_local i32 @av_timecode_adjust_ntsc_framenum2(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32, i32, i32, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
