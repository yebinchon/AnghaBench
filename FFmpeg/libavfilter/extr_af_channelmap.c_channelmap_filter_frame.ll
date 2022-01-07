; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_channelmap.c_channelmap_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_channelmap.c_channelmap_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_12__*, %struct.TYPE_14__** }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_13__ = type { i32, i32, i32**, i32** }

@MAX_CH = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_13__*)* @channelmap_filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @channelmap_filter_frame(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  store %struct.TYPE_15__* %18, %struct.TYPE_15__** %6, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %21, i64 0
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  store %struct.TYPE_14__* %23, %struct.TYPE_14__** %7, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  store %struct.TYPE_12__* %26, %struct.TYPE_12__** %8, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %9, align 4
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* @MAX_CH, align 4
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %12, align 8
  %36 = alloca i32*, i64 %34, align 16
  store i64 %34, i64* %13, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 3
  %39 = load i32**, i32*** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 @memcpy(i32** %36, i32** %39, i32 %43)
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %105

48:                                               ; preds = %2
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 2
  %52 = load i32**, i32*** %51, align 8
  %53 = call i32 @FF_ARRAY_ELEMS(i32** %52)
  %54 = icmp sgt i32 %49, %53
  br i1 %54, label %55, label %85

55:                                               ; preds = %48
  %56 = load i32, i32* %10, align 4
  %57 = call i32** @av_mallocz_array(i32 %56, i32 8)
  store i32** %57, i32*** %14, align 8
  %58 = load i32**, i32*** %14, align 8
  %59 = icmp ne i32** %58, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %55
  %61 = call i32 @av_frame_free(%struct.TYPE_13__** %5)
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = call i32 @AVERROR(i32 %62)
  store i32 %63, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %175

64:                                               ; preds = %55
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 3
  %67 = load i32**, i32*** %66, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 2
  %70 = load i32**, i32*** %69, align 8
  %71 = icmp eq i32** %67, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %64
  %73 = load i32**, i32*** %14, align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 3
  store i32** %73, i32*** %75, align 8
  br label %84

76:                                               ; preds = %64
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 3
  %79 = load i32**, i32*** %78, align 8
  %80 = call i32 @av_free(i32** %79)
  %81 = load i32**, i32*** %14, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 3
  store i32** %81, i32*** %83, align 8
  br label %84

84:                                               ; preds = %76, %72
  br label %104

85:                                               ; preds = %48
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 3
  %88 = load i32**, i32*** %87, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 2
  %91 = load i32**, i32*** %90, align 8
  %92 = icmp ne i32** %88, %91
  br i1 %92, label %93, label %103

93:                                               ; preds = %85
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 3
  %96 = load i32**, i32*** %95, align 8
  %97 = call i32 @av_free(i32** %96)
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 2
  %100 = load i32**, i32*** %99, align 8
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 3
  store i32** %100, i32*** %102, align 8
  br label %103

103:                                              ; preds = %93, %85
  br label %104

104:                                              ; preds = %103, %84
  br label %105

105:                                              ; preds = %104, %2
  store i32 0, i32* %11, align 4
  br label %106

106:                                              ; preds = %133, %105
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %136

110:                                              ; preds = %106
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %112, align 8
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds i32*, i32** %36, i64 %118
  %120 = load i32*, i32** %119, align 8
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 3
  %123 = load i32**, i32*** %122, align 8
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %125, align 8
  %127 = load i32, i32* %11, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds i32*, i32** %123, i64 %131
  store i32* %120, i32** %132, align 8
  br label %133

133:                                              ; preds = %110
  %134 = load i32, i32* %11, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %11, align 4
  br label %106

136:                                              ; preds = %106
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 2
  %139 = load i32**, i32*** %138, align 8
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 3
  %142 = load i32**, i32*** %141, align 8
  %143 = icmp ne i32** %139, %142
  br i1 %143, label %144, label %161

144:                                              ; preds = %136
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 2
  %147 = load i32**, i32*** %146, align 8
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 3
  %150 = load i32**, i32*** %149, align 8
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 2
  %153 = load i32**, i32*** %152, align 8
  %154 = call i32 @FF_ARRAY_ELEMS(i32** %153)
  %155 = load i32, i32* %10, align 4
  %156 = call i32 @FFMIN(i32 %154, i32 %155)
  %157 = sext i32 %156 to i64
  %158 = mul i64 %157, 8
  %159 = trunc i64 %158 to i32
  %160 = call i32 @memcpy(i32** %147, i32** %150, i32 %159)
  br label %161

161:                                              ; preds = %144, %136
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 4
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 0
  store i32 %169, i32* %171, align 8
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %174 = call i32 @ff_filter_frame(%struct.TYPE_14__* %172, %struct.TYPE_13__* %173)
  store i32 %174, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %175

175:                                              ; preds = %161, %60
  %176 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %176)
  %177 = load i32, i32* %3, align 4
  ret i32 %177
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i32**, i32**, i32) #2

declare dso_local i32 @FF_ARRAY_ELEMS(i32**) #2

declare dso_local i32** @av_mallocz_array(i32, i32) #2

declare dso_local i32 @av_frame_free(%struct.TYPE_13__**) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @av_free(i32**) #2

declare dso_local i32 @FFMIN(i32, i32) #2

declare dso_local i32 @ff_filter_frame(%struct.TYPE_14__*, %struct.TYPE_13__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
