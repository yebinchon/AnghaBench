; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_vectorscope.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_vectorscope.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_21__**, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, i32, i32, i32 (%struct.TYPE_19__*, %struct.TYPE_20__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_19__*, %struct.TYPE_20__*, %struct.TYPE_20__*, i32)* }
%struct.TYPE_20__ = type { i32, i32*, i64* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, %struct.TYPE_20__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_21__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  store %struct.TYPE_22__* %13, %struct.TYPE_22__** %6, align 8
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  store %struct.TYPE_19__* %16, %struct.TYPE_19__** %7, align 8
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %19, i64 0
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  store %struct.TYPE_21__* %21, %struct.TYPE_21__** %8, align 8
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %2
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = sub nsw i32 %29, 8
  %31 = mul nsw i32 %30, 2
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %31, %34
  %36 = sub nsw i32 %35, 1
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  br label %63

39:                                               ; preds = %2
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  switch i32 %42, label %53 [
    i32 128, label %43
    i32 130, label %43
    i32 129, label %52
  ]

43:                                               ; preds = %39, %39
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = sub nsw i32 %46, 8
  %48 = mul nsw i32 %47, 2
  %49 = add nsw i32 %48, 0
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  br label %62

52:                                               ; preds = %39
  br label %53

53:                                               ; preds = %39, %52
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = sub nsw i32 %56, 8
  %58 = mul nsw i32 %57, 2
  %59 = add nsw i32 %58, 1
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %53, %43
  br label %63

63:                                               ; preds = %62, %26
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call %struct.TYPE_20__* @ff_get_video_buffer(%struct.TYPE_21__* %64, i32 %67, i32 %70)
  store %struct.TYPE_20__* %71, %struct.TYPE_20__** %9, align 8
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %73 = icmp ne %struct.TYPE_20__* %72, null
  br i1 %73, label %78, label %74

74:                                               ; preds = %63
  %75 = call i32 @av_frame_free(%struct.TYPE_20__** %5)
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = call i32 @AVERROR(i32 %76)
  store i32 %77, i32* %3, align 4
  br label %167

78:                                               ; preds = %63
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %81 = call i32 @av_frame_copy_props(%struct.TYPE_20__* %79, %struct.TYPE_20__* %80)
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 8
  %84 = load i32 (%struct.TYPE_19__*, %struct.TYPE_20__*, %struct.TYPE_20__*, i32)*, i32 (%struct.TYPE_19__*, %struct.TYPE_20__*, %struct.TYPE_20__*, i32)** %83, align 8
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = call i32 %84(%struct.TYPE_19__* %85, %struct.TYPE_20__* %86, %struct.TYPE_20__* %87, i32 %90)
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 7
  %94 = load i32 (%struct.TYPE_19__*, %struct.TYPE_20__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_19__*, %struct.TYPE_20__*, i32, i32, i32, i32)** %93, align 8
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 %94(%struct.TYPE_19__* %95, %struct.TYPE_20__* %96, i32 %99, i32 %102, i32 %105, i32 %108)
  store i32 0, i32* %10, align 4
  br label %110

110:                                              ; preds = %159, %78
  %111 = load i32, i32* %10, align 4
  %112 = icmp slt i32 %111, 4
  br i1 %112, label %113, label %162

113:                                              ; preds = %110
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 2
  %116 = load i64*, i64** %115, align 8
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %116, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %158

122:                                              ; preds = %113
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = sub nsw i32 %125, 1
  %127 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %10, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = mul nsw i32 %126, %133
  %135 = sext i32 %134 to i64
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 2
  %138 = load i64*, i64** %137, align 8
  %139 = load i32, i32* %10, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i64, i64* %138, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = add nsw i64 %142, %135
  store i64 %143, i64* %141, align 8
  %144 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %10, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = sub nsw i32 0, %150
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %10, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  store i32 %151, i32* %157, align 4
  br label %158

158:                                              ; preds = %122, %113
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %10, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %10, align 4
  br label %110

162:                                              ; preds = %110
  %163 = call i32 @av_frame_free(%struct.TYPE_20__** %5)
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %166 = call i32 @ff_filter_frame(%struct.TYPE_21__* %164, %struct.TYPE_20__* %165)
  store i32 %166, i32* %3, align 4
  br label %167

167:                                              ; preds = %162, %74
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local %struct.TYPE_20__* @ff_get_video_buffer(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_20__**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_20__*, %struct.TYPE_20__*) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
