; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_geq.c_geq_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_geq.c_geq_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32, i32, i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.TYPE_19__*, %struct.TYPE_23__**, %struct.TYPE_21__* }
%struct.TYPE_19__ = type { i32 (%struct.TYPE_24__*, i32, %struct.TYPE_20__*, i32*, i32)* }
%struct.TYPE_20__ = type { i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i32*, i32, %struct.TYPE_22__*, i32*, i64, i32, i32 }
%struct.TYPE_22__ = type { i32, i32*, i64* }

@VAR_N = common dso_local global i64 0, align 8
@AV_NOPTS_VALUE = common dso_local global i32 0, align 4
@NAN = common dso_local global i32 0, align 4
@VAR_T = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@VAR_W = common dso_local global i64 0, align 8
@VAR_H = common dso_local global i64 0, align 8
@VAR_SW = common dso_local global i64 0, align 8
@VAR_SH = common dso_local global i64 0, align 8
@slice_geq_filter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*, %struct.TYPE_22__*)* @geq_filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @geq_filter_frame(%struct.TYPE_23__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_20__, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 4
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  store %struct.TYPE_24__* %18, %struct.TYPE_24__** %7, align 8
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %20 = call i32 @ff_filter_get_nb_threads(%struct.TYPE_24__* %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  store %struct.TYPE_21__* %23, %struct.TYPE_21__** %9, align 8
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 4
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %28, i64 0
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %29, align 8
  store %struct.TYPE_23__* %30, %struct.TYPE_23__** %10, align 8
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* @VAR_N, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32 %33, i32* %38, align 4
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @AV_NOPTS_VALUE, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %2
  %45 = load i32, i32* @NAN, align 4
  br label %55

46:                                               ; preds = %2
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @av_q2d(i32 %52)
  %54 = mul nsw i32 %49, %53
  br label %55

55:                                               ; preds = %46, %44
  %56 = phi i32 [ %45, %44 ], [ %54, %46 ]
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* @VAR_T, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  store i32 %56, i32* %61, align 4
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 2
  store %struct.TYPE_22__* %62, %struct.TYPE_22__** %64, align 8
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call %struct.TYPE_22__* @ff_get_video_buffer(%struct.TYPE_23__* %65, i32 %68, i32 %71)
  store %struct.TYPE_22__* %72, %struct.TYPE_22__** %11, align 8
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %74 = icmp ne %struct.TYPE_22__* %73, null
  br i1 %74, label %79, label %75

75:                                               ; preds = %55
  %76 = call i32 @av_frame_free(%struct.TYPE_22__** %5)
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = call i32 @AVERROR(i32 %77)
  store i32 %78, i32* %3, align 4
  br label %232

79:                                               ; preds = %55
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %82 = call i32 @av_frame_copy_props(%struct.TYPE_22__* %80, %struct.TYPE_22__* %81)
  store i32 0, i32* %6, align 4
  br label %83

83:                                               ; preds = %222, %79
  %84 = load i32, i32* %6, align 4
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %89, label %98

89:                                               ; preds = %83
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 2
  %92 = load i64*, i64** %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br label %98

98:                                               ; preds = %89, %83
  %99 = phi i1 [ false, %83 ], [ %97, %89 ]
  br i1 %99, label %100, label %225

100:                                              ; preds = %98
  %101 = load i32, i32* %6, align 4
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %106, label %103

103:                                              ; preds = %100
  %104 = load i32, i32* %6, align 4
  %105 = icmp eq i32 %104, 2
  br i1 %105, label %106, label %114

106:                                              ; preds = %103, %100
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @AV_CEIL_RSHIFT(i32 %109, i32 %112)
  br label %118

114:                                              ; preds = %103
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  br label %118

118:                                              ; preds = %114, %106
  %119 = phi i32 [ %113, %106 ], [ %117, %114 ]
  store i32 %119, i32* %12, align 4
  %120 = load i32, i32* %6, align 4
  %121 = icmp eq i32 %120, 1
  br i1 %121, label %125, label %122

122:                                              ; preds = %118
  %123 = load i32, i32* %6, align 4
  %124 = icmp eq i32 %123, 2
  br i1 %124, label %125, label %133

125:                                              ; preds = %122, %118
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @AV_CEIL_RSHIFT(i32 %128, i32 %131)
  br label %137

133:                                              ; preds = %122
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  br label %137

137:                                              ; preds = %133, %125
  %138 = phi i32 [ %132, %125 ], [ %136, %133 ]
  store i32 %138, i32* %13, align 4
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %6, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  store i32 %145, i32* %14, align 4
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 2
  %148 = load i64*, i64** %147, align 8
  %149 = load i32, i32* %6, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i64, i64* %148, i64 %150
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %153, i32 0, i32 4
  store i64 %152, i64* %154, align 8
  %155 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %155, i32 0, i32 2
  %157 = load i64*, i64** %156, align 8
  %158 = load i32, i32* %6, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i64, i64* %157, i64 %159
  %161 = load i64, i64* %160, align 8
  %162 = inttoptr i64 %161 to i32*
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %163, i32 0, i32 3
  store i32* %162, i32** %164, align 8
  %165 = load i32, i32* %12, align 4
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = load i64, i64* @VAR_W, align 8
  %170 = getelementptr inbounds i32, i32* %168, i64 %169
  store i32 %165, i32* %170, align 4
  %171 = load i32, i32* %13, align 4
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = load i64, i64* @VAR_H, align 8
  %176 = getelementptr inbounds i32, i32* %174, i64 %175
  store i32 %171, i32* %176, align 4
  %177 = load i32, i32* %12, align 4
  %178 = sitofp i32 %177 to double
  %179 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = sitofp i32 %181 to double
  %183 = fdiv double %178, %182
  %184 = fptosi double %183 to i32
  %185 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %186 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = load i64, i64* @VAR_SW, align 8
  %189 = getelementptr inbounds i32, i32* %187, i64 %188
  store i32 %184, i32* %189, align 4
  %190 = load i32, i32* %13, align 4
  %191 = sitofp i32 %190 to double
  %192 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = sitofp i32 %194 to double
  %196 = fdiv double %191, %195
  %197 = fptosi double %196 to i32
  %198 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %199 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = load i64, i64* @VAR_SH, align 8
  %202 = getelementptr inbounds i32, i32* %200, i64 %201
  store i32 %197, i32* %202, align 4
  %203 = load i32, i32* %12, align 4
  %204 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  store i32 %203, i32* %204, align 4
  %205 = load i32, i32* %13, align 4
  %206 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 1
  store i32 %205, i32* %206, align 4
  %207 = load i32, i32* %6, align 4
  %208 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 2
  store i32 %207, i32* %208, align 4
  %209 = load i32, i32* %14, align 4
  %210 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 3
  store i32 %209, i32* %210, align 4
  %211 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %211, i32 0, i32 0
  %213 = load %struct.TYPE_19__*, %struct.TYPE_19__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %213, i32 0, i32 0
  %215 = load i32 (%struct.TYPE_24__*, i32, %struct.TYPE_20__*, i32*, i32)*, i32 (%struct.TYPE_24__*, i32, %struct.TYPE_20__*, i32*, i32)** %214, align 8
  %216 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %217 = load i32, i32* @slice_geq_filter, align 4
  %218 = load i32, i32* %13, align 4
  %219 = load i32, i32* %8, align 4
  %220 = call i32 @FFMIN(i32 %218, i32 %219)
  %221 = call i32 %215(%struct.TYPE_24__* %216, i32 %217, %struct.TYPE_20__* %15, i32* null, i32 %220)
  br label %222

222:                                              ; preds = %137
  %223 = load i32, i32* %6, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %6, align 4
  br label %83

225:                                              ; preds = %98
  %226 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %227 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %226, i32 0, i32 2
  %228 = call i32 @av_frame_free(%struct.TYPE_22__** %227)
  %229 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %230 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %231 = call i32 @ff_filter_frame(%struct.TYPE_23__* %229, %struct.TYPE_22__* %230)
  store i32 %231, i32* %3, align 4
  br label %232

232:                                              ; preds = %225, %75
  %233 = load i32, i32* %3, align 4
  ret i32 %233
}

declare dso_local i32 @ff_filter_get_nb_threads(%struct.TYPE_24__*) #1

declare dso_local i32 @av_q2d(i32) #1

declare dso_local %struct.TYPE_22__* @ff_get_video_buffer(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_22__**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_22__*, %struct.TYPE_22__*) #1

declare dso_local i32 @AV_CEIL_RSHIFT(i32, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_23__*, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
