; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_find_rect.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_find_rect.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, i32, float, %struct.TYPE_13__*, i32*, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32 }

@MAX_MIPMAPS = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Found at %d %d score %f\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"lavfi.rect.w\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"lavfi.rect.h\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"lavfi.rect.x\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"lavfi.rect.y\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_15__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  store %struct.TYPE_17__* %14, %struct.TYPE_17__** %6, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %7, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %19 = call i32 @av_frame_clone(%struct.TYPE_15__* %18)
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 5
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 %19, i32* %23, align 4
  store i32 1, i32* %11, align 4
  br label %24

24:                                               ; preds = %46, %2
  %25 = load i32, i32* %11, align 4
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %49

30:                                               ; preds = %24
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 5
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @downscale(i32 %38)
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 5
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %39, i32* %45, align 4
  br label %46

46:                                               ; preds = %30
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %11, align 4
  br label %24

49:                                               ; preds = %24
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 9
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %56, 8
  %58 = call i32 @FFMAX(i32 %53, i32 %57)
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 8
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 8
  %66 = call i32 @FFMIN(i32 %61, i32 %65)
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = sub nsw i32 %72, 8
  %74 = call i32 @FFMAX(i32 %69, i32 %73)
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, 8
  %82 = call i32 @FFMIN(i32 %77, i32 %81)
  %83 = call float @search(%struct.TYPE_14__* %50, i32 0, i32 0, i32 %58, i32 %66, i32 %74, i32 %82, i32* %9, i32* %10, float 1.000000e+00)
  store float %83, float* %8, align 4
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sub nsw i32 %87, 1
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 9
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 8
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 7
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 8
  %101 = load float, float* %8, align 4
  %102 = call float @search(%struct.TYPE_14__* %84, i32 0, i32 %88, i32 %91, i32 %94, i32 %97, i32 %100, i32* %9, i32* %10, float %101)
  store float %102, float* %8, align 4
  store i32 0, i32* %11, align 4
  br label %103

103:                                              ; preds = %115, %49
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* @MAX_MIPMAPS, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %118

107:                                              ; preds = %103
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 5
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = call i32 @av_frame_free(i32* %113)
  br label %115

115:                                              ; preds = %107
  %116 = load i32, i32* %11, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %11, align 4
  br label %103

118:                                              ; preds = %103
  %119 = load float, float* %8, align 4
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 3
  %122 = load float, float* %121, align 4
  %123 = fcmp ogt float %119, %122
  br i1 %123, label %124, label %132

124:                                              ; preds = %118
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %131 = call i32 @ff_filter_frame(i32 %129, %struct.TYPE_15__* %130)
  store i32 %131, i32* %3, align 4
  br label %178

132:                                              ; preds = %118
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %134 = load i32, i32* @AV_LOG_DEBUG, align 4
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* %10, align 4
  %137 = load float, float* %8, align 4
  %138 = call i32 @av_log(%struct.TYPE_17__* %133, i32 %134, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %135, i32 %136, float %137)
  %139 = load i32, i32* %9, align 4
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 4
  %142 = load i32, i32* %10, align 4
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 2
  store i32 %142, i32* %144, align 8
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %146 = call i32 @av_frame_make_writable(%struct.TYPE_15__* %145)
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 4
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @av_dict_set_int(i32* %148, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %153, i32 0)
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 4
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @av_dict_set_int(i32* %156, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %161, i32 0)
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 0
  %165 = load i32, i32* %9, align 4
  %166 = call i32 @av_dict_set_int(i32* %164, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %165, i32 0)
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 0
  %169 = load i32, i32* %10, align 4
  %170 = call i32 @av_dict_set_int(i32* %168, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %169, i32 0)
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 0
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %177 = call i32 @ff_filter_frame(i32 %175, %struct.TYPE_15__* %176)
  store i32 %177, i32* %3, align 4
  br label %178

178:                                              ; preds = %132, %124
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local i32 @av_frame_clone(%struct.TYPE_15__*) #1

declare dso_local i32 @downscale(i32) #1

declare dso_local float @search(%struct.TYPE_14__*, i32, i32, i32, i32, i32, i32, i32*, i32*, float) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @av_frame_free(i32*) #1

declare dso_local i32 @ff_filter_frame(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @av_log(%struct.TYPE_17__*, i32, i8*, i32, i32, float) #1

declare dso_local i32 @av_frame_make_writable(%struct.TYPE_15__*) #1

declare dso_local i32 @av_dict_set_int(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
