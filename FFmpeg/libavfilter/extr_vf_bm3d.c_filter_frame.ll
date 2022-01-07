; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_bm3d.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_bm3d.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_18__*, i64, %struct.TYPE_22__**, %struct.TYPE_20__* }
%struct.TYPE_18__ = type { i32 (%struct.TYPE_23__*, i32, %struct.TYPE_19__*, i32*, i32)* }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i32*, i32, i32, i32 (%struct.TYPE_20__*, i32, i32, i32, i32)*, i32*, i32 }
%struct.TYPE_21__ = type { i32*, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@filter_slice = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*, %struct.TYPE_21__**, %struct.TYPE_21__*, %struct.TYPE_21__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_23__* %0, %struct.TYPE_21__** %1, %struct.TYPE_21__* %2, %struct.TYPE_21__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_21__**, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_19__, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %6, align 8
  store %struct.TYPE_21__** %1, %struct.TYPE_21__*** %7, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %8, align 8
  store %struct.TYPE_21__* %3, %struct.TYPE_21__** %9, align 8
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  store %struct.TYPE_20__* %17, %struct.TYPE_20__** %10, align 8
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %20, i64 0
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  store %struct.TYPE_22__* %22, %struct.TYPE_22__** %11, align 8
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.TYPE_21__* @ff_get_video_buffer(%struct.TYPE_22__* %23, i32 %26, i32 %29)
  %31 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %7, align 8
  store %struct.TYPE_21__* %30, %struct.TYPE_21__** %31, align 8
  %32 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %7, align 8
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %32, align 8
  %34 = icmp ne %struct.TYPE_21__* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %4
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = call i32 @AVERROR(i32 %36)
  store i32 %37, i32* %5, align 4
  br label %195

38:                                               ; preds = %4
  %39 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %7, align 8
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %39, align 8
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %42 = call i32 @av_frame_copy_props(%struct.TYPE_21__* %40, %struct.TYPE_21__* %41)
  store i32 0, i32* %12, align 4
  br label %43

43:                                               ; preds = %191, %38
  %44 = load i32, i32* %12, align 4
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %194

49:                                               ; preds = %43
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = sdiv i32 %59, %62
  %64 = call i32 @FFMIN(i32 %52, i32 %63)
  %65 = call i32 @FFMAX(i32 1, i32 %64)
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %12, align 4
  %67 = shl i32 1, %66
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %67, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %49
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %124

78:                                               ; preds = %73, %49
  %79 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %7, align 8
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %7, align 8
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %12, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 5
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %12, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %12, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @av_image_copy_plane(i32 %86, i32 %94, i32 %101, i32 %108, i32 %115, i32 %122)
  br label %191

124:                                              ; preds = %73
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %12, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 4
  store i32 %131, i32* %132, align 4
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %12, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 3
  store i32 %139, i32* %140, align 4
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %12, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 2
  store i32 %147, i32* %148, align 4
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %12, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 1
  store i32 %155, i32* %156, align 4
  %157 = load i32, i32* %12, align 4
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  store i32 %157, i32* %158, align 4
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 0
  %163 = load i32 (%struct.TYPE_23__*, i32, %struct.TYPE_19__*, i32*, i32)*, i32 (%struct.TYPE_23__*, i32, %struct.TYPE_19__*, i32*, i32)** %162, align 8
  %164 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %165 = load i32, i32* @filter_slice, align 4
  %166 = load i32, i32* %13, align 4
  %167 = call i32 %163(%struct.TYPE_23__* %164, i32 %165, %struct.TYPE_19__* %14, i32* null, i32 %166)
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 4
  %170 = load i32 (%struct.TYPE_20__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_20__*, i32, i32, i32, i32)** %169, align 8
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %172 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %7, align 8
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %173, i32 0, i32 1
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* %12, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %7, align 8
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* %12, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* %12, align 4
  %189 = load i32, i32* %13, align 4
  %190 = call i32 %170(%struct.TYPE_20__* %171, i32 %179, i32 %187, i32 %188, i32 %189)
  br label %191

191:                                              ; preds = %124, %78
  %192 = load i32, i32* %12, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %12, align 4
  br label %43

194:                                              ; preds = %43
  store i32 0, i32* %5, align 4
  br label %195

195:                                              ; preds = %194, %35
  %196 = load i32, i32* %5, align 4
  ret i32 %196
}

declare dso_local %struct.TYPE_21__* @ff_get_video_buffer(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @av_image_copy_plane(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
