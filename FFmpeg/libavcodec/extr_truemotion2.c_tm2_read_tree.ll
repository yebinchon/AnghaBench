; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_truemotion2.c_tm2_read_tree.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_truemotion2.c_tm2_read_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i64, i64, i32*, i32*, i32, i32* }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Tree exceeded its given depth (%i)\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Too many literals\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32, %struct.TYPE_5__*)* @tm2_read_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tm2_read_tree(%struct.TYPE_6__* %0, i32 %1, i32 %2, %struct.TYPE_5__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %9, align 8
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sgt i32 %12, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @AV_LOG_ERROR, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 (i32, i32, i8*, ...) @av_log(i32 %20, i32 %21, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %26, i32* %5, align 4
  br label %114

27:                                               ; preds = %4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = call i32 @get_bits1(i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %86, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 1, i32* %8, align 4
  br label %36

36:                                               ; preds = %35, %32
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp uge i64 %39, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %36
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @AV_LOG_DEBUG, align 4
  %49 = call i32 (i32, i32, i8*, ...) @av_log(i32 %47, i32 %48, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %50, i32* %5, align 4
  br label %114

51:                                               ; preds = %36
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @get_bits_long(i32* %53, i32 %56)
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 6
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  store i32 %57, i32* %64, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  store i32 %65, i32* %72, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 4
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  store i32 %73, i32* %80, align 4
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %82, align 8
  %85 = load i32, i32* %8, align 4
  store i32 %85, i32* %5, align 4
  br label %114

86:                                               ; preds = %27
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %88 = load i32, i32* %7, align 4
  %89 = shl i32 %88, 1
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %93 = call i32 @tm2_read_tree(%struct.TYPE_6__* %87, i32 %89, i32 %91, %struct.TYPE_5__* %92)
  store i32 %93, i32* %11, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %86
  %96 = load i32, i32* %11, align 4
  store i32 %96, i32* %5, align 4
  br label %114

97:                                               ; preds = %86
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %99 = load i32, i32* %7, align 4
  %100 = shl i32 %99, 1
  %101 = or i32 %100, 1
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 1
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %105 = call i32 @tm2_read_tree(%struct.TYPE_6__* %98, i32 %101, i32 %103, %struct.TYPE_5__* %104)
  store i32 %105, i32* %10, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %97
  %108 = load i32, i32* %10, align 4
  store i32 %108, i32* %5, align 4
  br label %114

109:                                              ; preds = %97
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %11, align 4
  %113 = call i32 @FFMAX(i32 %111, i32 %112)
  store i32 %113, i32* %5, align 4
  br label %114

114:                                              ; preds = %110, %107, %95, %51, %44, %17
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local i32 @av_log(i32, i32, i8*, ...) #1

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i32 @get_bits_long(i32*, i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
