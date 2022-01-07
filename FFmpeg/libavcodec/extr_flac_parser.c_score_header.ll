; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_flac_parser.c_score_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_flac_parser.c_score_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_10__ = type { i32, i64*, %struct.TYPE_10__*, %struct.TYPE_10__*, i32 }

@FLAC_HEADER_BASE_SCORE = common dso_local global i32 0, align 4
@FLAC_HEADER_NOT_SCORED_YET = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@FLAC_MAX_SEQUENTIAL_HEADERS = common dso_local global i32 0, align 4
@FLAC_HEADER_NOT_PENALIZED_YET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_10__*)* @score_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @score_header(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* @FLAC_HEADER_BASE_SCORE, align 4
  store i32 %10, i32* %9, align 4
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @FLAC_HEADER_NOT_SCORED_YET, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %3, align 4
  br label %116

20:                                               ; preds = %2
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %20
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 4
  %31 = load i32, i32* @AV_LOG_DEBUG, align 4
  %32 = call i64 @check_header_fi_mismatch(%struct.TYPE_9__* %26, i32* %28, i32* %30, i32 %31)
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = sub nsw i64 %34, %32
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %25, %20
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  store %struct.TYPE_10__* %43, %struct.TYPE_10__** %6, align 8
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %109, %37
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @FLAC_MAX_SEQUENTIAL_HEADERS, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %50 = icmp ne %struct.TYPE_10__* %49, null
  br label %51

51:                                               ; preds = %48, %44
  %52 = phi i1 [ false, %44 ], [ %50, %48 ]
  br i1 %52, label %53, label %112

53:                                               ; preds = %51
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @FLAC_HEADER_NOT_PENALIZED_YET, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %53
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %67 = load i32, i32* @AV_LOG_DEBUG, align 4
  %68 = call i64 @check_header_mismatch(%struct.TYPE_9__* %64, %struct.TYPE_10__* %65, %struct.TYPE_10__* %66, i32 %67)
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = load i64*, i64** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  store i64 %68, i64* %74, align 8
  br label %75

75:                                               ; preds = %63, %53
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %78 = call i32 @score_header(%struct.TYPE_9__* %76, %struct.TYPE_10__* %77)
  %79 = sext i32 %78 to i64
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  %82 = load i64*, i64** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = sub nsw i64 %79, %86
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* @FLAC_HEADER_BASE_SCORE, align 4
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %89, %90
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp sgt i32 %91, %94
  br i1 %95, label %96, label %105

96:                                               ; preds = %75
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 3
  store %struct.TYPE_10__* %97, %struct.TYPE_10__** %99, align 8
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %100, %101
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  br label %105

105:                                              ; preds = %96, %75
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 2
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  store %struct.TYPE_10__* %108, %struct.TYPE_10__** %6, align 8
  br label %109

109:                                              ; preds = %105
  %110 = load i32, i32* %7, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %7, align 4
  br label %44

112:                                              ; preds = %51
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %112, %16
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i64 @check_header_fi_mismatch(%struct.TYPE_9__*, i32*, i32*, i32) #1

declare dso_local i64 @check_header_mismatch(%struct.TYPE_9__*, %struct.TYPE_10__*, %struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
