; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_error_resilience.c_ff_er_add_slice.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_error_resilience.c_ff_er_add_slice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32*, i32, i32*, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"internal error, slice end before start\0A\00", align 1
@VP_START = common dso_local global i32 0, align 4
@ER_AC_ERROR = common dso_local global i32 0, align 4
@ER_AC_END = common dso_local global i32 0, align 4
@ER_DC_ERROR = common dso_local global i32 0, align 4
@ER_DC_END = common dso_local global i32 0, align 4
@ER_MV_ERROR = common dso_local global i32 0, align 4
@ER_MV_END = common dso_local global i32 0, align 4
@ER_MB_ERROR = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@FF_THREAD_SLICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_er_add_slice(%struct.TYPE_7__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = mul nsw i32 %21, %24
  %26 = add nsw i32 %20, %25
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %29, 1
  %31 = call i32 @av_clip(i32 %26, i32 0, i32 %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = mul nsw i32 %33, %36
  %38 = add nsw i32 %32, %37
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @av_clip(i32 %38, i32 0, i32 %41)
  store i32 %42, i32* %14, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %15, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %14, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %16, align 4
  store i32 -1, i32* %17, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 6
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 3
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = icmp ne %struct.TYPE_6__* %61, null
  br i1 %62, label %63, label %73

63:                                               ; preds = %6
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 6
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 3
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  br label %312

73:                                               ; preds = %63, %6
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %14, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* %16, align 4
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %77, %73
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 6
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = load i32, i32* @AV_LOG_ERROR, align 4
  %86 = call i32 @av_log(%struct.TYPE_8__* %84, i32 %85, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %312

87:                                               ; preds = %77
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 6
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %87
  br label %312

95:                                               ; preds = %87
  %96 = load i32, i32* @VP_START, align 4
  %97 = xor i32 %96, -1
  %98 = load i32, i32* %17, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %17, align 4
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* @ER_AC_ERROR, align 4
  %102 = load i32, i32* @ER_AC_END, align 4
  %103 = or i32 %101, %102
  %104 = and i32 %100, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %120

106:                                              ; preds = %95
  %107 = load i32, i32* @ER_AC_ERROR, align 4
  %108 = load i32, i32* @ER_AC_END, align 4
  %109 = or i32 %107, %108
  %110 = xor i32 %109, -1
  %111 = load i32, i32* %17, align 4
  %112 = and i32 %111, %110
  store i32 %112, i32* %17, align 4
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 5
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* %14, align 4
  %117 = sub nsw i32 %115, %116
  %118 = sub nsw i32 %117, 1
  %119 = call i32 @atomic_fetch_add(i32* %114, i32 %118)
  br label %120

120:                                              ; preds = %106, %95
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* @ER_DC_ERROR, align 4
  %123 = load i32, i32* @ER_DC_END, align 4
  %124 = or i32 %122, %123
  %125 = and i32 %121, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %141

127:                                              ; preds = %120
  %128 = load i32, i32* @ER_DC_ERROR, align 4
  %129 = load i32, i32* @ER_DC_END, align 4
  %130 = or i32 %128, %129
  %131 = xor i32 %130, -1
  %132 = load i32, i32* %17, align 4
  %133 = and i32 %132, %131
  store i32 %133, i32* %17, align 4
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 5
  %136 = load i32, i32* %13, align 4
  %137 = load i32, i32* %14, align 4
  %138 = sub nsw i32 %136, %137
  %139 = sub nsw i32 %138, 1
  %140 = call i32 @atomic_fetch_add(i32* %135, i32 %139)
  br label %141

141:                                              ; preds = %127, %120
  %142 = load i32, i32* %12, align 4
  %143 = load i32, i32* @ER_MV_ERROR, align 4
  %144 = load i32, i32* @ER_MV_END, align 4
  %145 = or i32 %143, %144
  %146 = and i32 %142, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %162

148:                                              ; preds = %141
  %149 = load i32, i32* @ER_MV_ERROR, align 4
  %150 = load i32, i32* @ER_MV_END, align 4
  %151 = or i32 %149, %150
  %152 = xor i32 %151, -1
  %153 = load i32, i32* %17, align 4
  %154 = and i32 %153, %152
  store i32 %154, i32* %17, align 4
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 5
  %157 = load i32, i32* %13, align 4
  %158 = load i32, i32* %14, align 4
  %159 = sub nsw i32 %157, %158
  %160 = sub nsw i32 %159, 1
  %161 = call i32 @atomic_fetch_add(i32* %156, i32 %160)
  br label %162

162:                                              ; preds = %148, %141
  %163 = load i32, i32* %12, align 4
  %164 = load i32, i32* @ER_MB_ERROR, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %174

167:                                              ; preds = %162
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 3
  store i32 1, i32* %169, align 8
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 5
  %172 = load i32, i32* @INT_MAX, align 4
  %173 = call i32 @atomic_store(i32* %171, i32 %172)
  br label %174

174:                                              ; preds = %167, %162
  %175 = load i32, i32* %17, align 4
  %176 = icmp eq i32 %175, -128
  br i1 %176, label %177, label %191

177:                                              ; preds = %174
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 4
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %15, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load i32, i32* %16, align 4
  %185 = load i32, i32* %15, align 4
  %186 = sub nsw i32 %184, %185
  %187 = sext i32 %186 to i64
  %188 = mul i64 %187, 4
  %189 = trunc i64 %188 to i32
  %190 = call i32 @memset(i32* %183, i32 0, i32 %189)
  br label %211

191:                                              ; preds = %174
  %192 = load i32, i32* %15, align 4
  store i32 %192, i32* %18, align 4
  br label %193

193:                                              ; preds = %207, %191
  %194 = load i32, i32* %18, align 4
  %195 = load i32, i32* %16, align 4
  %196 = icmp slt i32 %194, %195
  br i1 %196, label %197, label %210

197:                                              ; preds = %193
  %198 = load i32, i32* %17, align 4
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 4
  %201 = load i32*, i32** %200, align 8
  %202 = load i32, i32* %18, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = and i32 %205, %198
  store i32 %206, i32* %204, align 4
  br label %207

207:                                              ; preds = %197
  %208 = load i32, i32* %18, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %18, align 4
  br label %193

210:                                              ; preds = %193
  br label %211

211:                                              ; preds = %210, %177
  %212 = load i32, i32* %14, align 4
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = icmp eq i32 %212, %215
  br i1 %216, label %217, label %222

217:                                              ; preds = %211
  %218 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 5
  %220 = load i32, i32* @INT_MAX, align 4
  %221 = call i32 @atomic_store(i32* %219, i32 %220)
  br label %241

222:                                              ; preds = %211
  %223 = load i32, i32* %17, align 4
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 4
  %226 = load i32*, i32** %225, align 8
  %227 = load i32, i32* %16, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = and i32 %230, %223
  store i32 %231, i32* %229, align 4
  %232 = load i32, i32* %12, align 4
  %233 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 4
  %235 = load i32*, i32** %234, align 8
  %236 = load i32, i32* %16, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = or i32 %239, %232
  store i32 %240, i32* %238, align 4
  br label %241

241:                                              ; preds = %222, %217
  %242 = load i32, i32* @VP_START, align 4
  %243 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 4
  %245 = load i32*, i32** %244, align 8
  %246 = load i32, i32* %15, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %245, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = or i32 %249, %242
  store i32 %250, i32* %248, align 4
  %251 = load i32, i32* %15, align 4
  %252 = icmp sgt i32 %251, 0
  br i1 %252, label %253, label %312

253:                                              ; preds = %241
  %254 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 6
  %256 = load %struct.TYPE_8__*, %struct.TYPE_8__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = load i32, i32* @FF_THREAD_SLICE, align 4
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %312, label %262

262:                                              ; preds = %253
  %263 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %264 = call i64 @er_supported(%struct.TYPE_7__* %263)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %312

266:                                              ; preds = %262
  %267 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %268 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %267, i32 0, i32 6
  %269 = load %struct.TYPE_8__*, %struct.TYPE_8__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %273 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = mul nsw i32 %271, %274
  %276 = load i32, i32* %13, align 4
  %277 = icmp slt i32 %275, %276
  br i1 %277, label %278, label %312

278:                                              ; preds = %266
  %279 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %280 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %279, i32 0, i32 4
  %281 = load i32*, i32** %280, align 8
  %282 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %283 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %282, i32 0, i32 2
  %284 = load i32*, i32** %283, align 8
  %285 = load i32, i32* %13, align 4
  %286 = sub nsw i32 %285, 1
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %284, i64 %287
  %289 = load i32, i32* %288, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32, i32* %281, i64 %290
  %292 = load i32, i32* %291, align 4
  store i32 %292, i32* %19, align 4
  %293 = load i32, i32* @VP_START, align 4
  %294 = xor i32 %293, -1
  %295 = load i32, i32* %19, align 4
  %296 = and i32 %295, %294
  store i32 %296, i32* %19, align 4
  %297 = load i32, i32* %19, align 4
  %298 = load i32, i32* @ER_MV_END, align 4
  %299 = load i32, i32* @ER_DC_END, align 4
  %300 = or i32 %298, %299
  %301 = load i32, i32* @ER_AC_END, align 4
  %302 = or i32 %300, %301
  %303 = icmp ne i32 %297, %302
  br i1 %303, label %304, label %311

304:                                              ; preds = %278
  %305 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %306 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %305, i32 0, i32 3
  store i32 1, i32* %306, align 8
  %307 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %308 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %307, i32 0, i32 5
  %309 = load i32, i32* @INT_MAX, align 4
  %310 = call i32 @atomic_store(i32* %308, i32 %309)
  br label %311

311:                                              ; preds = %304, %278
  br label %312

312:                                              ; preds = %72, %81, %94, %311, %266, %262, %253, %241
  ret void
}

declare dso_local i32 @av_clip(i32, i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_8__*, i32, i8*) #1

declare dso_local i32 @atomic_fetch_add(i32*, i32) #1

declare dso_local i32 @atomic_store(i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @er_supported(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
