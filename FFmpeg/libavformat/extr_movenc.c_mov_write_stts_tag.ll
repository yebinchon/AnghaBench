; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_stts_tag.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_stts_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_11__ = type { i32, i32 }

@AVMEDIA_TYPE_AUDIO = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"stts\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_10__*)* @mov_write_stts_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_write_stts_tag(i32* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %6, align 8
  store i64 -1, i64* %7, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @AVMEDIA_TYPE_AUDIO, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %40

18:                                               ; preds = %2
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %40, label %23

23:                                               ; preds = %18
  %24 = call %struct.TYPE_11__* @av_malloc(i32 8)
  store %struct.TYPE_11__* %24, %struct.TYPE_11__** %6, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %26 = icmp ne %struct.TYPE_11__* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = call i32 @AVERROR(i32 %28)
  store i32 %29, i32* %3, align 4
  br label %149

30:                                               ; preds = %23
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 4
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 1
  store i32 1, i32* %39, align 4
  store i64 1, i64* %7, align 8
  br label %103

40:                                               ; preds = %18, %2
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %40
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.TYPE_11__* @av_malloc_array(i32 %48, i32 8)
  store %struct.TYPE_11__* %49, %struct.TYPE_11__** %6, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %51 = icmp ne %struct.TYPE_11__* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %45
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = call i32 @AVERROR(i32 %53)
  store i32 %54, i32* %3, align 4
  br label %149

55:                                               ; preds = %45
  br label %56

56:                                               ; preds = %55, %40
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %97, %56
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %100

63:                                               ; preds = %57
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @get_cluster_duration(%struct.TYPE_10__* %64, i32 %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %84

69:                                               ; preds = %63
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %72 = load i64, i64* %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %70, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %69
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %79 = load i64, i64* %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  br label %96

84:                                               ; preds = %69, %63
  %85 = load i64, i64* %7, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %7, align 8
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %89 = load i64, i64* %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 1
  store i32 %87, i32* %91, align 4
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %93 = load i64, i64* %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  store i32 1, i32* %95, align 4
  br label %96

96:                                               ; preds = %84, %77
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %9, align 4
  br label %57

100:                                              ; preds = %57
  %101 = load i64, i64* %7, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %7, align 8
  br label %103

103:                                              ; preds = %100, %30
  %104 = load i64, i64* %7, align 8
  %105 = mul i64 %104, 8
  %106 = add i64 16, %105
  store i64 %106, i64* %8, align 8
  %107 = load i32*, i32** %4, align 8
  %108 = load i64, i64* %8, align 8
  %109 = call i32 @avio_wb32(i32* %107, i64 %108)
  %110 = load i32*, i32** %4, align 8
  %111 = call i32 @ffio_wfourcc(i32* %110, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %112 = load i32*, i32** %4, align 8
  %113 = call i32 @avio_wb32(i32* %112, i64 0)
  %114 = load i32*, i32** %4, align 8
  %115 = load i64, i64* %7, align 8
  %116 = call i32 @avio_wb32(i32* %114, i64 %115)
  store i32 0, i32* %9, align 4
  br label %117

117:                                              ; preds = %141, %103
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = load i64, i64* %7, align 8
  %121 = icmp ult i64 %119, %120
  br i1 %121, label %122, label %144

122:                                              ; preds = %117
  %123 = load i32*, i32** %4, align 8
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = sext i32 %129 to i64
  %131 = call i32 @avio_wb32(i32* %123, i64 %130)
  %132 = load i32*, i32** %4, align 8
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %134 = load i32, i32* %9, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = sext i32 %138 to i64
  %140 = call i32 @avio_wb32(i32* %132, i64 %139)
  br label %141

141:                                              ; preds = %122
  %142 = load i32, i32* %9, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %9, align 4
  br label %117

144:                                              ; preds = %117
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %146 = call i32 @av_free(%struct.TYPE_11__* %145)
  %147 = load i64, i64* %8, align 8
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %3, align 4
  br label %149

149:                                              ; preds = %144, %52, %27
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local %struct.TYPE_11__* @av_malloc(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local %struct.TYPE_11__* @av_malloc_array(i32, i32) #1

declare dso_local i32 @get_cluster_duration(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @avio_wb32(i32*, i64) #1

declare dso_local i32 @ffio_wfourcc(i32*, i8*) #1

declare dso_local i32 @av_free(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
