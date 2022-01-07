; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_asfdec_o.c_asf_read_simple_index.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_asfdec_o.c_asf_read_simple_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32**, i32*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i64, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i64, i32, i64 }

@AVMEDIA_TYPE_VIDEO = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Skipping failed in asf_read_simple_index.\0A\00", align 1
@AVINDEX_KEYFRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*)* @asf_read_simple_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asf_read_simple_index(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  store %struct.TYPE_8__* %18, %struct.TYPE_8__** %6, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32 -1, i32* %12, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @avio_rl64(i32* %22)
  store i32 %23, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %24

24:                                               ; preds = %77, %2
  %25 = load i32, i32* %13, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %80

30:                                               ; preds = %24
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 5
  %33 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %32, align 8
  %34 = load i32, i32* %13, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %33, i64 %35
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %76

42:                                               ; preds = %30
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 5
  %45 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %44, align 8
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %45, i64 %47
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %76, label %53

53:                                               ; preds = %42
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 5
  %56 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %55, align 8
  %57 = load i32, i32* %13, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %56, i64 %58
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  store i32 1, i32* %61, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32**, i32*** %63, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 5
  %67 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %66, align 8
  %68 = load i32, i32* %13, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %67, i64 %69
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i32*, i32** %64, i64 %73
  %75 = load i32*, i32** %74, align 8
  store i32* %75, i32** %8, align 8
  br label %80

76:                                               ; preds = %42, %30
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %13, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %13, align 4
  br label %24

80:                                               ; preds = %53, %24
  %81 = load i32*, i32** %8, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %88, label %83

83:                                               ; preds = %80
  %84 = load i32*, i32** %7, align 8
  %85 = load i32, i32* %15, align 4
  %86 = sub nsw i32 %85, 24
  %87 = call i64 @avio_skip(i32* %84, i32 %86)
  store i32 0, i32* %3, align 4
  br label %152

88:                                               ; preds = %80
  %89 = load i32*, i32** %7, align 8
  %90 = call i64 @avio_skip(i32* %89, i32 16)
  %91 = load i32*, i32** %7, align 8
  %92 = call i32 @avio_rl64(i32* %91)
  store i32 %92, i32* %9, align 4
  %93 = load i32*, i32** %7, align 8
  %94 = call i64 @avio_skip(i32* %93, i32 4)
  %95 = load i32*, i32** %7, align 8
  %96 = call i32 @avio_rl32(i32* %95)
  store i32 %96, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %97

97:                                               ; preds = %140, %88
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %143

101:                                              ; preds = %97
  %102 = load i32*, i32** %7, align 8
  %103 = call i32 @avio_rl32(i32* %102)
  store i32 %103, i32* %10, align 4
  %104 = load i32*, i32** %7, align 8
  %105 = call i64 @avio_skip(i32* %104, i32 2)
  store i64 %105, i64* %14, align 8
  %106 = load i64, i64* %14, align 8
  %107 = icmp slt i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %101
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %110 = load i32, i32* @AV_LOG_ERROR, align 4
  %111 = call i32 @av_log(%struct.TYPE_7__* %109, i32 %110, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %112 = load i64, i64* %14, align 8
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %3, align 4
  br label %152

114:                                              ; preds = %101
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* %10, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %139

118:                                              ; preds = %114
  %119 = load i32*, i32** %8, align 8
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 4
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %10, align 4
  %127 = mul nsw i32 %125, %126
  %128 = sext i32 %127 to i64
  %129 = add nsw i64 %122, %128
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* %13, align 4
  %132 = call i32 @av_rescale(i32 %130, i32 %131, i32 10000)
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @AVINDEX_KEYFRAME, align 4
  %137 = call i32 @av_add_index_entry(i32* %119, i64 %129, i32 %132, i32 %135, i32 0, i32 %136)
  %138 = load i32, i32* %10, align 4
  store i32 %138, i32* %12, align 4
  br label %139

139:                                              ; preds = %118, %114
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %13, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %13, align 4
  br label %97

143:                                              ; preds = %97
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 2
  store i32 1, i32* %145, align 8
  %146 = load i32*, i32** %7, align 8
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %15, align 4
  %151 = call i32 @align_position(i32* %146, i32 %149, i32 %150)
  store i32 0, i32* %3, align 4
  br label %152

152:                                              ; preds = %143, %108, %83
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local i32 @avio_rl64(i32*) #1

declare dso_local i64 @avio_skip(i32*, i32) #1

declare dso_local i32 @avio_rl32(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_7__*, i32, i8*) #1

declare dso_local i32 @av_add_index_entry(i32*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @av_rescale(i32, i32, i32) #1

declare dso_local i32 @align_position(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
