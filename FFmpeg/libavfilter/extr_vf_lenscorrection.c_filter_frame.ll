; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_lenscorrection.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_lenscorrection.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_12__*, i64, %struct.TYPE_15__** }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_16__*, i32, %struct.TYPE_13__*, i32*, i32)* }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32*, i32*, i32* }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, i32, i32**, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@filter_slice = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_15__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_13__, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32* %1, i32** %5, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  store %struct.TYPE_16__* %31, %struct.TYPE_16__** %6, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %34, i64 0
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %35, align 8
  store %struct.TYPE_15__* %36, %struct.TYPE_15__** %7, align 8
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %40, %struct.TYPE_14__** %8, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32* @ff_get_video_buffer(%struct.TYPE_15__* %41, i32 %44, i32 %47)
  store i32* %48, i32** %9, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %2
  %52 = call i32 @av_frame_free(i32** %5)
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = call i32 @AVERROR(i32 %53)
  store i32 %54, i32* %3, align 4
  br label %275

55:                                               ; preds = %2
  %56 = load i32*, i32** %9, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @av_frame_copy_props(i32* %56, i32* %57)
  store i32 0, i32* %10, align 4
  br label %59

59:                                               ; preds = %267, %55
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %270

65:                                               ; preds = %59
  %66 = load i32, i32* %10, align 4
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %10, align 4
  %70 = icmp eq i32 %69, 2
  br i1 %70, label %71, label %75

71:                                               ; preds = %68, %65
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  br label %76

75:                                               ; preds = %68
  br label %76

76:                                               ; preds = %75, %71
  %77 = phi i32 [ %74, %71 ], [ 0, %75 ]
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %83, label %80

80:                                               ; preds = %76
  %81 = load i32, i32* %10, align 4
  %82 = icmp eq i32 %81, 2
  br i1 %82, label %83, label %87

83:                                               ; preds = %80, %76
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  br label %88

87:                                               ; preds = %80
  br label %88

88:                                               ; preds = %87, %83
  %89 = phi i32 [ %86, %83 ], [ 0, %87 ]
  store i32 %89, i32* %12, align 4
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 9
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @AV_CEIL_RSHIFT(i32 %92, i32 %93)
  store i32 %94, i32* %13, align 4
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 8
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %12, align 4
  %99 = call i32 @AV_CEIL_RSHIFT(i32 %97, i32 %98)
  store i32 %99, i32* %14, align 4
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %13, align 4
  %104 = mul nsw i32 %102, %103
  store i32 %104, i32* %15, align 4
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %14, align 4
  %109 = mul nsw i32 %107, %108
  store i32 %109, i32* %16, align 4
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = mul nsw i32 %112, 16777216
  store i32 %113, i32* %17, align 4
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 6
  %116 = load i32, i32* %115, align 8
  %117 = mul nsw i32 %116, 16777216
  store i32 %117, i32* %18, align 4
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %119 = load i32, i32* %13, align 4
  store i32 %119, i32* %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  %121 = load i32, i32* %14, align 4
  store i32 %121, i32* %120, align 4
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 2
  %123 = load i32, i32* %15, align 4
  store i32 %123, i32* %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 3
  %125 = load i32, i32* %16, align 4
  store i32 %125, i32* %124, align 4
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 4
  %127 = load i32, i32* %10, align 4
  store i32 %127, i32* %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 5
  store i32* null, i32** %128, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 6
  %130 = load i32*, i32** %9, align 8
  store i32* %130, i32** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 7
  %132 = load i32*, i32** %5, align 8
  store i32* %132, i32** %131, align 8
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 7
  %135 = load i32**, i32*** %134, align 8
  %136 = load i32, i32* %10, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32*, i32** %135, i64 %137
  %139 = load i32*, i32** %138, align 8
  %140 = icmp ne i32* %139, null
  br i1 %140, label %246, label %141

141:                                              ; preds = %88
  %142 = load i32, i32* %13, align 4
  %143 = load i32, i32* %13, align 4
  %144 = mul nsw i32 %142, %143
  %145 = load i32, i32* %14, align 4
  %146 = load i32, i32* %14, align 4
  %147 = mul nsw i32 %145, %146
  %148 = add nsw i32 %144, %147
  %149 = sext i32 %148 to i64
  %150 = sdiv i64 4611686018427387904, %149
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %22, align 4
  %152 = load i32, i32* %13, align 4
  %153 = load i32, i32* %14, align 4
  %154 = sext i32 %153 to i64
  %155 = mul i64 %154, 4
  %156 = trunc i64 %155 to i32
  %157 = call i32* @av_malloc_array(i32 %152, i32 %156)
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 7
  %160 = load i32**, i32*** %159, align 8
  %161 = load i32, i32* %10, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32*, i32** %160, i64 %162
  store i32* %157, i32** %163, align 8
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 7
  %166 = load i32**, i32*** %165, align 8
  %167 = load i32, i32* %10, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32*, i32** %166, i64 %168
  %170 = load i32*, i32** %169, align 8
  %171 = icmp ne i32* %170, null
  br i1 %171, label %175, label %172

172:                                              ; preds = %141
  %173 = load i32, i32* @ENOMEM, align 4
  %174 = call i32 @AVERROR(i32 %173)
  store i32 %174, i32* %3, align 4
  br label %275

175:                                              ; preds = %141
  store i32 0, i32* %21, align 4
  br label %176

176:                                              ; preds = %242, %175
  %177 = load i32, i32* %21, align 4
  %178 = load i32, i32* %14, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %180, label %245

180:                                              ; preds = %176
  %181 = load i32, i32* %21, align 4
  %182 = load i32, i32* %16, align 4
  %183 = sub nsw i32 %181, %182
  store i32 %183, i32* %23, align 4
  %184 = load i32, i32* %23, align 4
  %185 = load i32, i32* %23, align 4
  %186 = mul nsw i32 %184, %185
  store i32 %186, i32* %24, align 4
  store i32 0, i32* %20, align 4
  br label %187

187:                                              ; preds = %238, %180
  %188 = load i32, i32* %20, align 4
  %189 = load i32, i32* %13, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %241

191:                                              ; preds = %187
  %192 = load i32, i32* %20, align 4
  %193 = load i32, i32* %15, align 4
  %194 = sub nsw i32 %192, %193
  store i32 %194, i32* %25, align 4
  %195 = load i32, i32* %25, align 4
  %196 = load i32, i32* %25, align 4
  %197 = mul nsw i32 %195, %196
  %198 = load i32, i32* %24, align 4
  %199 = add nsw i32 %197, %198
  %200 = load i32, i32* %22, align 4
  %201 = mul nsw i32 %199, %200
  %202 = sext i32 %201 to i64
  %203 = add nsw i64 %202, 2147483648
  %204 = ashr i64 %203, 32
  %205 = trunc i64 %204 to i32
  store i32 %205, i32* %26, align 4
  %206 = load i32, i32* %26, align 4
  %207 = load i32, i32* %26, align 4
  %208 = mul nsw i32 %206, %207
  %209 = add nsw i32 %208, 134217728
  %210 = ashr i32 %209, 28
  store i32 %210, i32* %27, align 4
  %211 = load i32, i32* %26, align 4
  %212 = load i32, i32* %17, align 4
  %213 = mul nsw i32 %211, %212
  %214 = load i32, i32* %27, align 4
  %215 = load i32, i32* %18, align 4
  %216 = mul nsw i32 %214, %215
  %217 = add nsw i32 %213, %216
  %218 = sext i32 %217 to i64
  %219 = add nsw i64 %218, 134217728
  %220 = add nsw i64 %219, 4503599627370496
  %221 = ashr i64 %220, 28
  %222 = trunc i64 %221 to i32
  store i32 %222, i32* %28, align 4
  %223 = load i32, i32* %28, align 4
  %224 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 7
  %226 = load i32**, i32*** %225, align 8
  %227 = load i32, i32* %10, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32*, i32** %226, i64 %228
  %230 = load i32*, i32** %229, align 8
  %231 = load i32, i32* %21, align 4
  %232 = load i32, i32* %13, align 4
  %233 = mul nsw i32 %231, %232
  %234 = load i32, i32* %20, align 4
  %235 = add nsw i32 %233, %234
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %230, i64 %236
  store i32 %223, i32* %237, align 4
  br label %238

238:                                              ; preds = %191
  %239 = load i32, i32* %20, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %20, align 4
  br label %187

241:                                              ; preds = %187
  br label %242

242:                                              ; preds = %241
  %243 = load i32, i32* %21, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %21, align 4
  br label %176

245:                                              ; preds = %176
  br label %246

246:                                              ; preds = %245, %88
  %247 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %248 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %247, i32 0, i32 7
  %249 = load i32**, i32*** %248, align 8
  %250 = load i32, i32* %10, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32*, i32** %249, i64 %251
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 5
  store i32* %253, i32** %254, align 8
  %255 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %256 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %255, i32 0, i32 0
  %257 = load %struct.TYPE_12__*, %struct.TYPE_12__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %257, i32 0, i32 0
  %259 = load i32 (%struct.TYPE_16__*, i32, %struct.TYPE_13__*, i32*, i32)*, i32 (%struct.TYPE_16__*, i32, %struct.TYPE_13__*, i32*, i32)** %258, align 8
  %260 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %261 = load i32, i32* @filter_slice, align 4
  %262 = load i32, i32* %14, align 4
  %263 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %264 = call i32 @ff_filter_get_nb_threads(%struct.TYPE_16__* %263)
  %265 = call i32 @FFMIN(i32 %262, i32 %264)
  %266 = call i32 %259(%struct.TYPE_16__* %260, i32 %261, %struct.TYPE_13__* %19, i32* null, i32 %265)
  br label %267

267:                                              ; preds = %246
  %268 = load i32, i32* %10, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %10, align 4
  br label %59

270:                                              ; preds = %59
  %271 = call i32 @av_frame_free(i32** %5)
  %272 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %273 = load i32*, i32** %9, align 8
  %274 = call i32 @ff_filter_frame(%struct.TYPE_15__* %272, i32* %273)
  store i32 %274, i32* %3, align 4
  br label %275

275:                                              ; preds = %270, %172, %51
  %276 = load i32, i32* %3, align 4
  ret i32 %276
}

declare dso_local i32* @ff_get_video_buffer(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @av_frame_free(i32**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(i32*, i32*) #1

declare dso_local i32 @AV_CEIL_RSHIFT(i32, i32) #1

declare dso_local i32* @av_malloc_array(i32, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @ff_filter_get_nb_threads(%struct.TYPE_16__*) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_15__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
