; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h265_metadata_bsf.c_h265_metadata_guess_level.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h265_metadata_bsf.c_h265_metadata_guess_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32*, i64, i32*, i32, i32, i32, i32, i64, %struct.TYPE_20__, i32, %struct.TYPE_24__* }
%struct.TYPE_20__ = type { %struct.TYPE_24__, i64 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_22__*, i64, %struct.TYPE_21__*, i64 }
%struct.TYPE_22__ = type { i32* }
%struct.TYPE_21__ = type { i32* }
%struct.TYPE_26__ = type { i32, i32 }

@HEVC_NAL_VPS = common dso_local global i64 0, align 8
@HEVC_NAL_SPS = common dso_local global i64 0, align 8
@HEVC_NAL_PPS = common dso_local global i64 0, align 8
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Stream appears to conform to level %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*, %struct.TYPE_18__*)* @h265_metadata_guess_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @h265_metadata_guess_level(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_17__*, align 8
  %17 = alloca %struct.TYPE_23__*, align 8
  %18 = alloca %struct.TYPE_23__*, align 8
  %19 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %4, align 8
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  store %struct.TYPE_25__* %22, %struct.TYPE_25__** %5, align 8
  store i32* null, i32** %7, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %23

23:                                               ; preds = %124, %2
  %24 = load i32, i32* %15, align 4
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %127

29:                                               ; preds = %23
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %31, align 8
  %33 = load i32, i32* %15, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i64 %34
  store %struct.TYPE_17__* %35, %struct.TYPE_17__** %16, align 8
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @HEVC_NAL_VPS, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %63

41:                                               ; preds = %29
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %43, align 8
  store %struct.TYPE_23__* %44, %struct.TYPE_23__** %17, align 8
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 9
  store i32* %46, i32** %7, align 8
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %14, align 4
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %41
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 10
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %60, i64 0
  store %struct.TYPE_24__* %61, %struct.TYPE_24__** %8, align 8
  br label %62

62:                                               ; preds = %57, %41
  br label %123

63:                                               ; preds = %29
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @HEVC_NAL_SPS, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %97

69:                                               ; preds = %63
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %71, align 8
  store %struct.TYPE_23__* %72, %struct.TYPE_23__** %18, align 8
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 9
  store i32* %74, i32** %7, align 8
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %76 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %14, align 4
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %10, align 4
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %11, align 4
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %69
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i32 0, i32 8
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 0
  store %struct.TYPE_24__* %95, %struct.TYPE_24__** %8, align 8
  br label %96

96:                                               ; preds = %92, %69
  br label %122

97:                                               ; preds = %63
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @HEVC_NAL_PPS, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %121

103:                                              ; preds = %97
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %105, align 8
  store %struct.TYPE_23__* %106, %struct.TYPE_23__** %19, align 8
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %108 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %107, i32 0, i32 7
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %103
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %12, align 4
  %116 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %117 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %13, align 4
  br label %120

120:                                              ; preds = %111, %103
  br label %121

121:                                              ; preds = %120, %97
  br label %122

122:                                              ; preds = %121, %96
  br label %123

123:                                              ; preds = %122, %62
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %15, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %15, align 4
  br label %23

127:                                              ; preds = %23
  %128 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %129 = icmp ne %struct.TYPE_24__* %128, null
  br i1 %129, label %130, label %179

130:                                              ; preds = %127
  %131 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %131, i32 0, i32 4
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %152

135:                                              ; preds = %130
  %136 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %136, i32 0, i32 3
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i64 0
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 0
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, 1
  %145 = call i32 @INT64_C(i32 1)
  %146 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = add nsw i32 %148, 6
  %150 = shl i32 %145, %149
  %151 = mul nsw i32 %144, %150
  store i32 %151, i32* %9, align 4
  br label %178

152:                                              ; preds = %130
  %153 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %177

157:                                              ; preds = %152
  %158 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_22__*, %struct.TYPE_22__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %160, i64 0
  %162 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 0
  %165 = load i32, i32* %164, align 4
  %166 = add nsw i32 %165, 1
  %167 = call i32 @INT64_C(i32 1)
  %168 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = add nsw i32 %170, 6
  %172 = shl i32 %167, %171
  %173 = mul nsw i32 %166, %172
  store i32 %173, i32* %9, align 4
  %174 = load i32, i32* %9, align 4
  %175 = mul nsw i32 %174, 11
  %176 = sdiv i32 %175, 10
  store i32 %176, i32* %9, align 4
  br label %177

177:                                              ; preds = %157, %152
  br label %178

178:                                              ; preds = %177, %135
  br label %179

179:                                              ; preds = %178, %127
  %180 = load i32*, i32** %7, align 8
  %181 = load i32, i32* %9, align 4
  %182 = load i32, i32* %10, align 4
  %183 = load i32, i32* %11, align 4
  %184 = load i32, i32* %12, align 4
  %185 = load i32, i32* %13, align 4
  %186 = load i32, i32* %14, align 4
  %187 = call %struct.TYPE_26__* @ff_h265_guess_level(i32* %180, i32 %181, i32 %182, i32 %183, i32 0, i32 %184, i32 %185, i32 %186)
  store %struct.TYPE_26__* %187, %struct.TYPE_26__** %6, align 8
  %188 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %189 = icmp ne %struct.TYPE_26__* %188, null
  br i1 %189, label %190, label %202

190:                                              ; preds = %179
  %191 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %192 = load i32, i32* @AV_LOG_DEBUG, align 4
  %193 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @av_log(%struct.TYPE_19__* %191, i32 %192, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %195)
  %197 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %200, i32 0, i32 0
  store i32 %199, i32* %201, align 4
  br label %202

202:                                              ; preds = %190, %179
  ret void
}

declare dso_local i32 @INT64_C(i32) #1

declare dso_local %struct.TYPE_26__* @ff_h265_guess_level(i32*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_19__*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
