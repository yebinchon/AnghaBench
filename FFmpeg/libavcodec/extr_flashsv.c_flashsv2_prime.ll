; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_flashsv.c_flashsv2_prime.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_flashsv.c_flashsv2_prime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_11__, i32, i32*, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32* }
%struct.TYPE_9__ = type { i32, i32, i32*, i32, i32*, i32*, i32* }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@Z_SYNC_FLUSH = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Inflate reset error: %d\0A\00", align 1
@AVERROR_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32*, i32)* @flashsv2_prime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flashsv2_prime(%struct.TYPE_10__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32*, i32** %6, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %13, i32* %4, align 4
  br label %119

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 6
  store i32* null, i32** %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 5
  store i32* null, i32** %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 4
  store i32* null, i32** %17, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 3
  store i32* %18, i32** %21, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 2
  store i32 %28, i32* %31, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = mul nsw i32 %34, 3
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 4
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 2
  %41 = load i32, i32* @Z_SYNC_FLUSH, align 4
  %42 = call i32 @inflate(%struct.TYPE_11__* %40, i32 %41)
  %43 = call i32 @deflateInit(%struct.TYPE_9__* %8, i32 0)
  %44 = load i32, i32* @Z_OK, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %14
  store i32 -1, i32* %4, align 4
  br label %119

47:                                               ; preds = %14
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 3
  store i32 %50, i32* %51, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = mul nsw i32 %54, 3
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 %55, %59
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  store i32 %60, i32* %61, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 4
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 2
  store i32* %64, i32** %65, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  store i32 %68, i32* %69, align 4
  %70 = load i32, i32* @Z_SYNC_FLUSH, align 4
  %71 = call i32 @deflate(%struct.TYPE_9__* %8, i32 %70)
  %72 = call i32 @deflateEnd(%struct.TYPE_9__* %8)
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 2
  %75 = call i32 @inflateReset(%struct.TYPE_11__* %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* @Z_OK, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %47
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @AV_LOG_ERROR, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @av_log(i32 %81, i32 %82, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %85, i32* %4, align 4
  br label %119

86:                                               ; preds = %47
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 4
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 3
  store i32* %89, i32** %92, align 8
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = sub nsw i32 %95, %97
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  store i32 %98, i32* %101, align 8
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 2
  store i32 %104, i32* %107, align 8
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = mul nsw i32 %110, 3
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 1
  store i32 %111, i32* %114, align 4
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 2
  %117 = load i32, i32* @Z_SYNC_FLUSH, align 4
  %118 = call i32 @inflate(%struct.TYPE_11__* %116, i32 %117)
  store i32 0, i32* %4, align 4
  br label %119

119:                                              ; preds = %86, %78, %46, %12
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i32 @inflate(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @deflateInit(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @deflate(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @deflateEnd(%struct.TYPE_9__*) #1

declare dso_local i32 @inflateReset(%struct.TYPE_11__*) #1

declare dso_local i32 @av_log(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
