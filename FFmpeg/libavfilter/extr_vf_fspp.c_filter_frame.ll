; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_fspp.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_fspp.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, %struct.TYPE_19__**, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32*, i32, i32, i32, i64, i32*, i32, i64, i32, i32*, i32 (i32*, i32*, i64)*, i64 }
%struct.TYPE_18__ = type { i64, i32*, i32*, i32, i32 }

@custom_threshold = common dso_local global i32* null, align 8
@AV_PICTURE_TYPE_B = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_18__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [64 x i32], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  store %struct.TYPE_20__* %24, %struct.TYPE_20__** %6, align 8
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  store %struct.TYPE_17__* %27, %struct.TYPE_17__** %7, align 8
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %30, i64 0
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %31, align 8
  store %struct.TYPE_19__* %32, %struct.TYPE_19__** %8, align 8
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_18__* %33, %struct.TYPE_18__** %9, align 8
  store i32 0, i32* %10, align 4
  store i32* null, i32** %11, align 8
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 16, %36
  store i32 %37, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %38

38:                                               ; preds = %57, %2
  %39 = load i32, i32* %12, align 4
  %40 = icmp slt i32 %39, 64
  br i1 %40, label %41, label %60

41:                                               ; preds = %38
  %42 = load i32*, i32** @custom_threshold, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = sitofp i32 %46 to double
  %48 = load i32, i32* %13, align 4
  %49 = sitofp i32 %48 to double
  %50 = fdiv double %49, 7.100000e+01
  %51 = fmul double %47, %50
  %52 = fadd double %51, 5.000000e-01
  %53 = fptosi double %52 to i32
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [64 x i32], [64 x i32]* %14, i64 0, i64 %55
  store i32 %53, i32* %56, align 4
  br label %57

57:                                               ; preds = %41
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %12, align 4
  br label %38

60:                                               ; preds = %38
  store i32 0, i32* %12, align 4
  br label %61

61:                                               ; preds = %140, %60
  %62 = load i32, i32* %12, align 4
  %63 = icmp slt i32 %62, 8
  br i1 %63, label %64, label %143

64:                                               ; preds = %61
  %65 = load i32, i32* %12, align 4
  %66 = mul nsw i32 %65, 8
  %67 = add nsw i32 %66, 2
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [64 x i32], [64 x i32]* %14, i64 0, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %12, align 4
  %72 = mul nsw i32 %71, 8
  %73 = add nsw i32 %72, 6
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [64 x i32], [64 x i32]* %14, i64 0, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = shl i32 %76, 16
  %78 = or i32 %70, %77
  %79 = load i32, i32* %12, align 4
  %80 = mul nsw i32 %79, 8
  %81 = add nsw i32 %80, 0
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [64 x i32], [64 x i32]* %14, i64 0, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 %84, 32
  %86 = or i32 %78, %85
  %87 = load i32, i32* %12, align 4
  %88 = mul nsw i32 %87, 8
  %89 = add nsw i32 %88, 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [64 x i32], [64 x i32]* %14, i64 0, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = shl i32 %92, 48
  %94 = or i32 %86, %93
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %12, align 4
  %99 = mul nsw i32 2, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %97, i64 %100
  store i32 %94, i32* %101, align 4
  %102 = load i32, i32* %12, align 4
  %103 = mul nsw i32 %102, 8
  %104 = add nsw i32 %103, 5
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [64 x i32], [64 x i32]* %14, i64 0, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %12, align 4
  %109 = mul nsw i32 %108, 8
  %110 = add nsw i32 %109, 3
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [64 x i32], [64 x i32]* %14, i64 0, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = shl i32 %113, 16
  %115 = or i32 %107, %114
  %116 = load i32, i32* %12, align 4
  %117 = mul nsw i32 %116, 8
  %118 = add nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [64 x i32], [64 x i32]* %14, i64 0, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = shl i32 %121, 32
  %123 = or i32 %115, %122
  %124 = load i32, i32* %12, align 4
  %125 = mul nsw i32 %124, 8
  %126 = add nsw i32 %125, 7
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [64 x i32], [64 x i32]* %14, i64 0, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = shl i32 %129, 48
  %131 = or i32 %123, %130
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %12, align 4
  %136 = mul nsw i32 2, %135
  %137 = add nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %134, i64 %138
  store i32 %131, i32* %139, align 4
  br label %140

140:                                              ; preds = %64
  %141 = load i32, i32* %12, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %12, align 4
  br label %61

143:                                              ; preds = %61
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 5
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %169

148:                                              ; preds = %143
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 5
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 12
  store i64 %151, i64* %153, align 8
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 11
  %156 = load i32 (i32*, i32*, i64)*, i32 (i32*, i32*, i64)** %155, align 8
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 0
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 10
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 0
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 5
  %167 = load i64, i64* %166, align 8
  %168 = call i32 %156(i32* %160, i32* %164, i64 %167)
  br label %169

169:                                              ; preds = %148, %143
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i32 0, i32 5
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %253, label %174

174:                                              ; preds = %169
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 9
  %178 = call i32* @av_frame_get_qp_table(%struct.TYPE_18__* %175, i32* %10, i32* %177)
  store i32* %178, i32** %11, align 8
  %179 = load i32*, i32** %11, align 8
  %180 = icmp ne i32* %179, null
  br i1 %180, label %181, label %252

181:                                              ; preds = %174
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 7
  %184 = load i32, i32* %183, align 8
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %252, label %186

186:                                              ; preds = %181
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @AV_PICTURE_TYPE_B, align 8
  %191 = icmp ne i64 %189, %190
  br i1 %191, label %192, label %252

192:                                              ; preds = %186
  %193 = load i32, i32* %10, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %201, label %195

195:                                              ; preds = %192
  %196 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = call i8* @AV_CEIL_RSHIFT(i32 %198, i32 4)
  %200 = ptrtoint i8* %199 to i32
  store i32 %200, i32* %15, align 4
  store i32 1, i32* %16, align 4
  br label %208

201:                                              ; preds = %192
  %202 = load i32, i32* %10, align 4
  store i32 %202, i32* %15, align 4
  %203 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = call i8* @AV_CEIL_RSHIFT(i32 %205, i32 4)
  %207 = ptrtoint i8* %206 to i32
  store i32 %207, i32* %16, align 4
  br label %208

208:                                              ; preds = %201, %195
  %209 = load i32, i32* %15, align 4
  %210 = load i32, i32* %16, align 4
  %211 = mul nsw i32 %209, %210
  %212 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = icmp sgt i32 %211, %214
  br i1 %215, label %216, label %234

216:                                              ; preds = %208
  %217 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %217, i32 0, i32 6
  %219 = load i32, i32* %15, align 4
  %220 = load i32, i32* %16, align 4
  %221 = call i32 @av_reallocp_array(i32** %218, i32 %219, i32 %220)
  store i32 %221, i32* %17, align 4
  %222 = load i32, i32* %17, align 4
  %223 = icmp slt i32 %222, 0
  br i1 %223, label %224, label %228

224:                                              ; preds = %216
  %225 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %225, i32 0, i32 2
  store i32 0, i32* %226, align 8
  %227 = load i32, i32* %17, align 4
  store i32 %227, i32* %3, align 4
  br label %480

228:                                              ; preds = %216
  %229 = load i32, i32* %15, align 4
  %230 = load i32, i32* %16, align 4
  %231 = mul nsw i32 %229, %230
  %232 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %233 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %232, i32 0, i32 2
  store i32 %231, i32* %233, align 8
  br label %234

234:                                              ; preds = %228, %208
  %235 = load i32, i32* %15, align 4
  %236 = load i32, i32* %16, align 4
  %237 = mul nsw i32 %235, %236
  %238 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %239 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 8
  %241 = icmp sle i32 %237, %240
  %242 = zext i1 %241 to i32
  %243 = call i32 @av_assert0(i32 %242)
  %244 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %245 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %244, i32 0, i32 6
  %246 = load i32*, i32** %245, align 8
  %247 = load i32*, i32** %11, align 8
  %248 = load i32, i32* %15, align 4
  %249 = load i32, i32* %16, align 4
  %250 = mul nsw i32 %248, %249
  %251 = call i32 @memcpy(i32* %246, i32* %247, i32 %250)
  br label %252

252:                                              ; preds = %234, %186, %181, %174
  br label %253

253:                                              ; preds = %252, %169
  %254 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %255 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %254, i32 0, i32 8
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %435

258:                                              ; preds = %253
  %259 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %260 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %435, label %263

263:                                              ; preds = %258
  %264 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %265 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %264, i32 0, i32 7
  %266 = load i32, i32* %265, align 8
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %277, label %268

268:                                              ; preds = %263
  %269 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %270 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %269, i32 0, i32 6
  %271 = load i32*, i32** %270, align 8
  %272 = icmp ne i32* %271, null
  br i1 %272, label %273, label %277

273:                                              ; preds = %268
  %274 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %275 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %274, i32 0, i32 6
  %276 = load i32*, i32** %275, align 8
  store i32* %276, i32** %11, align 8
  br label %277

277:                                              ; preds = %273, %268, %263
  %278 = load i32*, i32** %11, align 8
  %279 = icmp ne i32* %278, null
  br i1 %279, label %285, label %280

280:                                              ; preds = %277
  %281 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %282 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %281, i32 0, i32 5
  %283 = load i64, i64* %282, align 8
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %434

285:                                              ; preds = %280, %277
  %286 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %287 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %290 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %289, i32 0, i32 3
  %291 = load i32, i32* %290, align 4
  %292 = call i8* @AV_CEIL_RSHIFT(i32 %288, i32 %291)
  %293 = ptrtoint i8* %292 to i32
  store i32 %293, i32* %18, align 4
  %294 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %295 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %298 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %297, i32 0, i32 4
  %299 = load i32, i32* %298, align 8
  %300 = call i8* @AV_CEIL_RSHIFT(i32 %296, i32 %299)
  %301 = ptrtoint i8* %300 to i32
  store i32 %301, i32* %19, align 4
  %302 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %303 = call i32 @av_frame_is_writable(%struct.TYPE_18__* %302)
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %317

305:                                              ; preds = %285
  %306 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %307 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = and i32 %308, 7
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %317, label %311

311:                                              ; preds = %305
  %312 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %313 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 4
  %315 = and i32 %314, 7
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %350

317:                                              ; preds = %311, %305, %285
  %318 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %319 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 8
  %321 = call i32 @FFALIGN(i32 %320, i32 8)
  store i32 %321, i32* %20, align 4
  %322 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %323 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 4
  %325 = call i32 @FFALIGN(i32 %324, i32 8)
  store i32 %325, i32* %21, align 4
  %326 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %327 = load i32, i32* %20, align 4
  %328 = load i32, i32* %21, align 4
  %329 = call %struct.TYPE_18__* @ff_get_video_buffer(%struct.TYPE_19__* %326, i32 %327, i32 %328)
  store %struct.TYPE_18__* %329, %struct.TYPE_18__** %9, align 8
  %330 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %331 = icmp ne %struct.TYPE_18__* %330, null
  br i1 %331, label %336, label %332

332:                                              ; preds = %317
  %333 = call i32 @av_frame_free(%struct.TYPE_18__** %5)
  %334 = load i32, i32* @ENOMEM, align 4
  %335 = call i32 @AVERROR(i32 %334)
  store i32 %335, i32* %3, align 4
  br label %480

336:                                              ; preds = %317
  %337 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %338 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %339 = call i32 @av_frame_copy_props(%struct.TYPE_18__* %337, %struct.TYPE_18__* %338)
  %340 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %341 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %340, i32 0, i32 4
  %342 = load i32, i32* %341, align 4
  %343 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %344 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %343, i32 0, i32 4
  store i32 %342, i32* %344, align 4
  %345 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %346 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %345, i32 0, i32 3
  %347 = load i32, i32* %346, align 8
  %348 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %349 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %348, i32 0, i32 3
  store i32 %347, i32* %349, align 8
  br label %350

350:                                              ; preds = %336, %311
  %351 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %352 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %353 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %352, i32 0, i32 2
  %354 = load i32*, i32** %353, align 8
  %355 = getelementptr inbounds i32, i32* %354, i64 0
  %356 = load i32, i32* %355, align 4
  %357 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %358 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %357, i32 0, i32 2
  %359 = load i32*, i32** %358, align 8
  %360 = getelementptr inbounds i32, i32* %359, i64 0
  %361 = load i32, i32* %360, align 4
  %362 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %363 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %362, i32 0, i32 1
  %364 = load i32*, i32** %363, align 8
  %365 = getelementptr inbounds i32, i32* %364, i64 0
  %366 = load i32, i32* %365, align 4
  %367 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %368 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %367, i32 0, i32 1
  %369 = load i32*, i32** %368, align 8
  %370 = getelementptr inbounds i32, i32* %369, i64 0
  %371 = load i32, i32* %370, align 4
  %372 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %373 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 8
  %375 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %376 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %375, i32 0, i32 1
  %377 = load i32, i32* %376, align 4
  %378 = load i32*, i32** %11, align 8
  %379 = load i32, i32* %10, align 4
  %380 = call i32 @filter(%struct.TYPE_17__* %351, i32 %356, i32 %361, i32 %366, i32 %371, i32 %374, i32 %377, i32* %378, i32 %379, i32 1)
  %381 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %382 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %383 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %382, i32 0, i32 2
  %384 = load i32*, i32** %383, align 8
  %385 = getelementptr inbounds i32, i32* %384, i64 1
  %386 = load i32, i32* %385, align 4
  %387 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %388 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %387, i32 0, i32 2
  %389 = load i32*, i32** %388, align 8
  %390 = getelementptr inbounds i32, i32* %389, i64 1
  %391 = load i32, i32* %390, align 4
  %392 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %393 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %392, i32 0, i32 1
  %394 = load i32*, i32** %393, align 8
  %395 = getelementptr inbounds i32, i32* %394, i64 1
  %396 = load i32, i32* %395, align 4
  %397 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %398 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %397, i32 0, i32 1
  %399 = load i32*, i32** %398, align 8
  %400 = getelementptr inbounds i32, i32* %399, i64 1
  %401 = load i32, i32* %400, align 4
  %402 = load i32, i32* %18, align 4
  %403 = load i32, i32* %19, align 4
  %404 = load i32*, i32** %11, align 8
  %405 = load i32, i32* %10, align 4
  %406 = call i32 @filter(%struct.TYPE_17__* %381, i32 %386, i32 %391, i32 %396, i32 %401, i32 %402, i32 %403, i32* %404, i32 %405, i32 0)
  %407 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %408 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %409 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %408, i32 0, i32 2
  %410 = load i32*, i32** %409, align 8
  %411 = getelementptr inbounds i32, i32* %410, i64 2
  %412 = load i32, i32* %411, align 4
  %413 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %414 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %413, i32 0, i32 2
  %415 = load i32*, i32** %414, align 8
  %416 = getelementptr inbounds i32, i32* %415, i64 2
  %417 = load i32, i32* %416, align 4
  %418 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %419 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %418, i32 0, i32 1
  %420 = load i32*, i32** %419, align 8
  %421 = getelementptr inbounds i32, i32* %420, i64 2
  %422 = load i32, i32* %421, align 4
  %423 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %424 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %423, i32 0, i32 1
  %425 = load i32*, i32** %424, align 8
  %426 = getelementptr inbounds i32, i32* %425, i64 2
  %427 = load i32, i32* %426, align 4
  %428 = load i32, i32* %18, align 4
  %429 = load i32, i32* %19, align 4
  %430 = load i32*, i32** %11, align 8
  %431 = load i32, i32* %10, align 4
  %432 = call i32 @filter(%struct.TYPE_17__* %407, i32 %412, i32 %417, i32 %422, i32 %427, i32 %428, i32 %429, i32* %430, i32 %431, i32 0)
  %433 = call i32 (...) @emms_c()
  br label %434

434:                                              ; preds = %350, %280
  br label %435

435:                                              ; preds = %434, %258, %253
  %436 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %437 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %438 = icmp ne %struct.TYPE_18__* %436, %437
  br i1 %438, label %439, label %476

439:                                              ; preds = %435
  %440 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %441 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %440, i32 0, i32 2
  %442 = load i32*, i32** %441, align 8
  %443 = getelementptr inbounds i32, i32* %442, i64 3
  %444 = load i32, i32* %443, align 4
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %446, label %474

446:                                              ; preds = %439
  %447 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %448 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %447, i32 0, i32 2
  %449 = load i32*, i32** %448, align 8
  %450 = getelementptr inbounds i32, i32* %449, i64 3
  %451 = load i32, i32* %450, align 4
  %452 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %453 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %452, i32 0, i32 1
  %454 = load i32*, i32** %453, align 8
  %455 = getelementptr inbounds i32, i32* %454, i64 3
  %456 = load i32, i32* %455, align 4
  %457 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %458 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %457, i32 0, i32 2
  %459 = load i32*, i32** %458, align 8
  %460 = getelementptr inbounds i32, i32* %459, i64 3
  %461 = load i32, i32* %460, align 4
  %462 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %463 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %462, i32 0, i32 1
  %464 = load i32*, i32** %463, align 8
  %465 = getelementptr inbounds i32, i32* %464, i64 3
  %466 = load i32, i32* %465, align 4
  %467 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %468 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %467, i32 0, i32 0
  %469 = load i32, i32* %468, align 8
  %470 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %471 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %470, i32 0, i32 1
  %472 = load i32, i32* %471, align 4
  %473 = call i32 @av_image_copy_plane(i32 %451, i32 %456, i32 %461, i32 %466, i32 %469, i32 %472)
  br label %474

474:                                              ; preds = %446, %439
  %475 = call i32 @av_frame_free(%struct.TYPE_18__** %5)
  br label %476

476:                                              ; preds = %474, %435
  %477 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %478 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %479 = call i32 @ff_filter_frame(%struct.TYPE_19__* %477, %struct.TYPE_18__* %478)
  store i32 %479, i32* %3, align 4
  br label %480

480:                                              ; preds = %476, %332, %224
  %481 = load i32, i32* %3, align 4
  ret i32 %481
}

declare dso_local i32* @av_frame_get_qp_table(%struct.TYPE_18__*, i32*, i32*) #1

declare dso_local i8* @AV_CEIL_RSHIFT(i32, i32) #1

declare dso_local i32 @av_reallocp_array(i32**, i32, i32) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @av_frame_is_writable(%struct.TYPE_18__*) #1

declare dso_local i32 @FFALIGN(i32, i32) #1

declare dso_local %struct.TYPE_18__* @ff_get_video_buffer(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_18__**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i32 @filter(%struct.TYPE_17__*, i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @emms_c(...) #1

declare dso_local i32 @av_image_copy_plane(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
