; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacdec_fixed.c_apply_dependent_coupling_fixed.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacdec_fixed.c_apply_dependent_coupling_fixed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_18__ = type { %struct.TYPE_15__, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i32** }
%struct.TYPE_14__ = type { i32*, i64*, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32*, i32, i32, i32* }

@AOT_AAC_LTP = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Dependent coupling is not supported together with LTP\0A\00", align 1
@ZERO_BT = common dso_local global i64 0, align 8
@cce_scale_fixed = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*, %struct.TYPE_16__*, %struct.TYPE_18__*, i32)* @apply_dependent_coupling_fixed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_dependent_coupling_fixed(%struct.TYPE_19__* %0, %struct.TYPE_16__* %1, %struct.TYPE_18__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %7, align 8
  store i32 %3, i32* %8, align 4
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 2
  store %struct.TYPE_17__* %27, %struct.TYPE_17__** %9, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %10, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %11, align 8
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %12, align 8
  store i32 0, i32* %17, align 4
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i64 1
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @AOT_AAC_LTP, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %4
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @AV_LOG_ERROR, align 4
  %54 = call i32 @av_log(i32 %52, i32 %53, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %287

55:                                               ; preds = %4
  store i32 0, i32* %13, align 4
  br label %56

56:                                               ; preds = %284, %55
  %57 = load i32, i32* %13, align 4
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %287

62:                                               ; preds = %56
  store i32 0, i32* %14, align 4
  br label %63

63:                                               ; preds = %256, %62
  %64 = load i32, i32* %14, align 4
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %261

69:                                               ; preds = %63
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i64 0
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 1
  %75 = load i64*, i64** %74, align 8
  %76 = load i32, i32* %17, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @ZERO_BT, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %255

82:                                               ; preds = %69
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  %86 = load i32**, i32*** %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32*, i32** %86, i64 %88
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %17, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %18, align 4
  %95 = load i32, i32* %18, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %110

97:                                               ; preds = %82
  %98 = load i32*, i32** @cce_scale_fixed, align 8
  %99 = load i32, i32* %18, align 4
  %100 = sub nsw i32 0, %99
  %101 = and i32 %100, 7
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %98, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %21, align 4
  %106 = load i32, i32* %18, align 4
  %107 = sub nsw i32 0, %106
  %108 = sub nsw i32 %107, 1024
  %109 = ashr i32 %108, 3
  store i32 %109, i32* %19, align 4
  br label %120

110:                                              ; preds = %82
  %111 = load i32*, i32** @cce_scale_fixed, align 8
  %112 = load i32, i32* %18, align 4
  %113 = and i32 %112, 7
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %21, align 4
  %117 = load i32, i32* %18, align 4
  %118 = sub nsw i32 %117, 1024
  %119 = ashr i32 %118, 3
  store i32 %119, i32* %19, align 4
  br label %120

120:                                              ; preds = %110, %97
  %121 = load i32, i32* %19, align 4
  %122 = icmp slt i32 %121, -31
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  br label %254

124:                                              ; preds = %120
  %125 = load i32, i32* %19, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %193

127:                                              ; preds = %124
  %128 = load i32, i32* %19, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %19, align 4
  %130 = load i32, i32* %19, align 4
  %131 = sub nsw i32 %130, 1
  %132 = shl i32 1, %131
  store i32 %132, i32* %20, align 4
  store i32 0, i32* %15, align 4
  br label %133

133:                                              ; preds = %189, %127
  %134 = load i32, i32* %15, align 4
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 3
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %13, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = icmp slt i32 %134, %141
  br i1 %142, label %143, label %192

143:                                              ; preds = %133
  %144 = load i32*, i32** %10, align 8
  %145 = load i32, i32* %14, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  store i32 %148, i32* %16, align 4
  br label %149

149:                                              ; preds = %185, %143
  %150 = load i32, i32* %16, align 4
  %151 = load i32*, i32** %10, align 8
  %152 = load i32, i32* %14, align 4
  %153 = add nsw i32 %152, 1
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %151, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = icmp slt i32 %150, %156
  br i1 %157, label %158, label %188

158:                                              ; preds = %149
  %159 = load i32*, i32** %12, align 8
  %160 = load i32, i32* %15, align 4
  %161 = mul nsw i32 %160, 128
  %162 = load i32, i32* %16, align 4
  %163 = add nsw i32 %161, %162
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %159, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* %21, align 4
  %168 = mul nsw i32 %166, %167
  %169 = add nsw i32 %168, 0
  %170 = ashr i32 %169, 37
  store i32 %170, i32* %22, align 4
  %171 = load i32, i32* %22, align 4
  %172 = load i32, i32* %20, align 4
  %173 = add nsw i32 %171, %172
  %174 = load i32, i32* %19, align 4
  %175 = ashr i32 %173, %174
  %176 = load i32*, i32** %11, align 8
  %177 = load i32, i32* %15, align 4
  %178 = mul nsw i32 %177, 128
  %179 = load i32, i32* %16, align 4
  %180 = add nsw i32 %178, %179
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %176, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = add nsw i32 %183, %175
  store i32 %184, i32* %182, align 4
  br label %185

185:                                              ; preds = %158
  %186 = load i32, i32* %16, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %16, align 4
  br label %149

188:                                              ; preds = %149
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %15, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %15, align 4
  br label %133

192:                                              ; preds = %133
  br label %253

193:                                              ; preds = %124
  store i32 0, i32* %15, align 4
  br label %194

194:                                              ; preds = %249, %193
  %195 = load i32, i32* %15, align 4
  %196 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %196, i32 0, i32 3
  %198 = load i32*, i32** %197, align 8
  %199 = load i32, i32* %13, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = icmp slt i32 %195, %202
  br i1 %203, label %204, label %252

204:                                              ; preds = %194
  %205 = load i32*, i32** %10, align 8
  %206 = load i32, i32* %14, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  %209 = load i32, i32* %208, align 4
  store i32 %209, i32* %16, align 4
  br label %210

210:                                              ; preds = %245, %204
  %211 = load i32, i32* %16, align 4
  %212 = load i32*, i32** %10, align 8
  %213 = load i32, i32* %14, align 4
  %214 = add nsw i32 %213, 1
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %212, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = icmp slt i32 %211, %217
  br i1 %218, label %219, label %248

219:                                              ; preds = %210
  %220 = load i32*, i32** %12, align 8
  %221 = load i32, i32* %15, align 4
  %222 = mul nsw i32 %221, 128
  %223 = load i32, i32* %16, align 4
  %224 = add nsw i32 %222, %223
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %220, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* %21, align 4
  %229 = mul nsw i32 %227, %228
  %230 = add nsw i32 %229, 0
  %231 = ashr i32 %230, 37
  store i32 %231, i32* %22, align 4
  %232 = load i32, i32* %22, align 4
  %233 = load i32, i32* %19, align 4
  %234 = shl i32 1, %233
  %235 = mul i32 %232, %234
  %236 = load i32*, i32** %11, align 8
  %237 = load i32, i32* %15, align 4
  %238 = mul nsw i32 %237, 128
  %239 = load i32, i32* %16, align 4
  %240 = add nsw i32 %238, %239
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %236, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = add i32 %243, %235
  store i32 %244, i32* %242, align 4
  br label %245

245:                                              ; preds = %219
  %246 = load i32, i32* %16, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %16, align 4
  br label %210

248:                                              ; preds = %210
  br label %249

249:                                              ; preds = %248
  %250 = load i32, i32* %15, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %15, align 4
  br label %194

252:                                              ; preds = %194
  br label %253

253:                                              ; preds = %252, %192
  br label %254

254:                                              ; preds = %253, %123
  br label %255

255:                                              ; preds = %254, %69
  br label %256

256:                                              ; preds = %255
  %257 = load i32, i32* %14, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %14, align 4
  %259 = load i32, i32* %17, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %17, align 4
  br label %63

261:                                              ; preds = %63
  %262 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %263 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %262, i32 0, i32 3
  %264 = load i32*, i32** %263, align 8
  %265 = load i32, i32* %13, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %264, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = mul nsw i32 %268, 128
  %270 = load i32*, i32** %11, align 8
  %271 = sext i32 %269 to i64
  %272 = getelementptr inbounds i32, i32* %270, i64 %271
  store i32* %272, i32** %11, align 8
  %273 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %274 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %273, i32 0, i32 3
  %275 = load i32*, i32** %274, align 8
  %276 = load i32, i32* %13, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %275, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = mul nsw i32 %279, 128
  %281 = load i32*, i32** %12, align 8
  %282 = sext i32 %280 to i64
  %283 = getelementptr inbounds i32, i32* %281, i64 %282
  store i32* %283, i32** %12, align 8
  br label %284

284:                                              ; preds = %261
  %285 = load i32, i32* %13, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %13, align 4
  br label %56

287:                                              ; preds = %49, %56
  ret void
}

declare dso_local i32 @av_log(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
