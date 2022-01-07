; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_weave.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_weave.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__**, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_15__*, i64, i32*, i32* }
%struct.TYPE_15__ = type { i32*, i32, i32, i32, i64* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_15__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  store %struct.TYPE_17__* %16, %struct.TYPE_17__** %6, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  store %struct.TYPE_14__* %19, %struct.TYPE_14__** %7, align 8
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %22, i64 0
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  store %struct.TYPE_16__* %24, %struct.TYPE_16__** %8, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %28 = icmp ne %struct.TYPE_15__* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %2
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 2
  store %struct.TYPE_15__* %30, %struct.TYPE_15__** %32, align 8
  store i32 0, i32* %3, align 4
  br label %275

33:                                               ; preds = %2
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.TYPE_15__* @ff_get_video_buffer(%struct.TYPE_16__* %34, i32 %37, i32 %40)
  store %struct.TYPE_15__* %41, %struct.TYPE_15__** %9, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %43 = icmp ne %struct.TYPE_15__* %42, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %33
  %45 = call i32 @av_frame_free(%struct.TYPE_15__** %5)
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 2
  %48 = call i32 @av_frame_free(%struct.TYPE_15__** %47)
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = call i32 @AVERROR(i32 %49)
  store i32 %50, i32* %3, align 4
  br label %275

51:                                               ; preds = %33
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %54 = call i32 @av_frame_copy_props(%struct.TYPE_15__* %52, %struct.TYPE_15__* %53)
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %51
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = and i32 %62, 1
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  br label %66

66:                                               ; preds = %59, %51
  %67 = phi i1 [ false, %51 ], [ %65, %59 ]
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  br label %82

75:                                               ; preds = %66
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  br label %82

82:                                               ; preds = %75, %71
  %83 = phi i32 [ %74, %71 ], [ %81, %75 ]
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %11, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %82
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  br label %97

93:                                               ; preds = %82
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  br label %97

97:                                               ; preds = %93, %86
  %98 = phi i32 [ %92, %86 ], [ %96, %93 ]
  store i32 %98, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %99

99:                                               ; preds = %220, %97
  %100 = load i32, i32* %10, align 4
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp slt i32 %100, %103
  br i1 %104, label %105, label %223

105:                                              ; preds = %99
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 4
  %108 = load i64*, i64** %107, align 8
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %108, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %12, align 4
  %121 = mul nsw i32 %119, %120
  %122 = sext i32 %121 to i64
  %123 = add nsw i64 %112, %122
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = mul nsw i32 %130, 2
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 4
  %134 = load i64*, i64** %133, align 8
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %134, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %10, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 5
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %10, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 4
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %10, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @av_image_copy_plane(i64 %123, i32 %131, i64 %138, i32 %145, i32 %152, i32 %159)
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 4
  %163 = load i64*, i64** %162, align 8
  %164 = load i32, i32* %10, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i64, i64* %163, i64 %165
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %10, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* %13, align 4
  %176 = mul nsw i32 %174, %175
  %177 = sext i32 %176 to i64
  %178 = add nsw i64 %167, %177
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* %10, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = mul nsw i32 %185, 2
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 2
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 4
  %191 = load i64*, i64** %190, align 8
  %192 = load i32, i32* %10, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i64, i64* %191, i64 %193
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 2
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = load i32, i32* %10, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 5
  %207 = load i32*, i32** %206, align 8
  %208 = load i32, i32* %10, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 4
  %214 = load i32*, i32** %213, align 8
  %215 = load i32, i32* %10, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %214, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @av_image_copy_plane(i64 %178, i32 %186, i64 %195, i32 %204, i32 %211, i32 %218)
  br label %220

220:                                              ; preds = %105
  %221 = load i32, i32* %10, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %10, align 4
  br label %99

223:                                              ; preds = %99
  %224 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 3
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %234

228:                                              ; preds = %223
  %229 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i32 0, i32 2
  %231 = load %struct.TYPE_15__*, %struct.TYPE_15__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  br label %239

234:                                              ; preds = %223
  %235 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 8
  %238 = sdiv i32 %237, 2
  br label %239

239:                                              ; preds = %234, %228
  %240 = phi i32 [ %233, %228 ], [ %238, %234 ]
  %241 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %242 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %241, i32 0, i32 1
  store i32 %240, i32* %242, align 8
  %243 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %244 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %243, i32 0, i32 2
  store i32 1, i32* %244, align 4
  %245 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = icmp ne i32 %247, 0
  %249 = xor i1 %248, true
  %250 = zext i1 %249 to i32
  %251 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %252 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %251, i32 0, i32 3
  store i32 %250, i32* %252, align 8
  %253 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %254 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %253, i32 0, i32 3
  %255 = load i64, i64* %254, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %259, label %257

257:                                              ; preds = %239
  %258 = call i32 @av_frame_free(%struct.TYPE_15__** %5)
  br label %259

259:                                              ; preds = %257, %239
  %260 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %261 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %260, i32 0, i32 2
  %262 = call i32 @av_frame_free(%struct.TYPE_15__** %261)
  %263 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %264 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %263, i32 0, i32 3
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %271

267:                                              ; preds = %259
  %268 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %269 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %270 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %269, i32 0, i32 2
  store %struct.TYPE_15__* %268, %struct.TYPE_15__** %270, align 8
  br label %271

271:                                              ; preds = %267, %259
  %272 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %273 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %274 = call i32 @ff_filter_frame(%struct.TYPE_16__* %272, %struct.TYPE_15__* %273)
  store i32 %274, i32* %3, align 4
  br label %275

275:                                              ; preds = %271, %44, %29
  %276 = load i32, i32* %3, align 4
  ret i32 %276
}

declare dso_local %struct.TYPE_15__* @ff_get_video_buffer(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_15__**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local i32 @av_image_copy_plane(i64, i32, i64, i32, i32, i32) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
