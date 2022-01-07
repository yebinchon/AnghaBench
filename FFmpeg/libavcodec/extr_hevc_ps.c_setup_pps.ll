; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_ps.c_setup_pps.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_ps.c_setup_pps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32, i32*, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i64 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_6__*, %struct.TYPE_5__*)* @setup_pps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_pps(i32* %0, i32* %1, %struct.TYPE_6__* %2, %struct.TYPE_5__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
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
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %9, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  %32 = call i8* @av_malloc_array(i32 %31, i32 4)
  %33 = bitcast i8* %32 to i32*
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store i32* %33, i32** %35, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 1
  %40 = call i8* @av_malloc_array(i32 %39, i32 4)
  %41 = bitcast i8* %40 to i32*
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  store i32* %41, i32** %43, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @av_malloc_array(i32 %46, i32 4)
  %48 = bitcast i8* %47 to i32*
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 4
  store i32* %48, i32** %50, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %65

55:                                               ; preds = %4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 4
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %60, %55, %4
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = call i32 @AVERROR(i32 %66)
  store i32 %67, i32* %5, align 4
  br label %805

68:                                               ; preds = %60
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 13
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %181

73:                                               ; preds = %68
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 5
  %76 = load i32*, i32** %75, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %93, label %78

78:                                               ; preds = %73
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i8* @av_malloc_array(i32 %81, i32 4)
  %83 = bitcast i8* %82 to i32*
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 5
  store i32* %83, i32** %85, align 8
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = call i8* @av_malloc_array(i32 %88, i32 4)
  %90 = bitcast i8* %89 to i32*
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 6
  store i32* %90, i32** %92, align 8
  br label %93

93:                                               ; preds = %78, %73
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 5
  %96 = load i32*, i32** %95, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 6
  %101 = load i32*, i32** %100, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %106, label %103

103:                                              ; preds = %98, %93
  %104 = load i32, i32* @ENOMEM, align 4
  %105 = call i32 @AVERROR(i32 %104)
  store i32 %105, i32* %5, align 4
  br label %805

106:                                              ; preds = %98
  store i32 0, i32* %12, align 4
  br label %107

107:                                              ; preds = %140, %106
  %108 = load i32, i32* %12, align 4
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = icmp slt i32 %108, %111
  br i1 %112, label %113, label %143

113:                                              ; preds = %107
  %114 = load i32, i32* %12, align 4
  %115 = add nsw i32 %114, 1
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = mul nsw i32 %115, %118
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = sdiv i32 %119, %122
  %124 = load i32, i32* %12, align 4
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = mul nsw i32 %124, %127
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = sdiv i32 %128, %131
  %133 = sub nsw i32 %123, %132
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 5
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %12, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  store i32 %133, i32* %139, align 4
  br label %140

140:                                              ; preds = %113
  %141 = load i32, i32* %12, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %12, align 4
  br label %107

143:                                              ; preds = %107
  store i32 0, i32* %12, align 4
  br label %144

144:                                              ; preds = %177, %143
  %145 = load i32, i32* %12, align 4
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = icmp slt i32 %145, %148
  br i1 %149, label %150, label %180

150:                                              ; preds = %144
  %151 = load i32, i32* %12, align 4
  %152 = add nsw i32 %151, 1
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = mul nsw i32 %152, %155
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = sdiv i32 %156, %159
  %161 = load i32, i32* %12, align 4
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = mul nsw i32 %161, %164
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = sdiv i32 %165, %168
  %170 = sub nsw i32 %160, %169
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 6
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %12, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  store i32 %170, i32* %176, align 4
  br label %177

177:                                              ; preds = %150
  %178 = load i32, i32* %12, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %12, align 4
  br label %144

180:                                              ; preds = %144
  br label %181

181:                                              ; preds = %180, %68
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 0
  store i32 0, i32* %185, align 4
  store i32 0, i32* %12, align 4
  br label %186

186:                                              ; preds = %215, %181
  %187 = load i32, i32* %12, align 4
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = icmp slt i32 %187, %190
  br i1 %191, label %192, label %218

192:                                              ; preds = %186
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* %12, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 5
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %12, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = add nsw i32 %199, %206
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 0
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* %12, align 4
  %212 = add nsw i32 %211, 1
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %210, i64 %213
  store i32 %207, i32* %214, align 4
  br label %215

215:                                              ; preds = %192
  %216 = load i32, i32* %12, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %12, align 4
  br label %186

218:                                              ; preds = %186
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 2
  %221 = load i32*, i32** %220, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 0
  store i32 0, i32* %222, align 4
  store i32 0, i32* %12, align 4
  br label %223

223:                                              ; preds = %252, %218
  %224 = load i32, i32* %12, align 4
  %225 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 8
  %228 = icmp slt i32 %224, %227
  br i1 %228, label %229, label %255

229:                                              ; preds = %223
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 2
  %232 = load i32*, i32** %231, align 8
  %233 = load i32, i32* %12, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 6
  %239 = load i32*, i32** %238, align 8
  %240 = load i32, i32* %12, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %239, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = add nsw i32 %236, %243
  %245 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 2
  %247 = load i32*, i32** %246, align 8
  %248 = load i32, i32* %12, align 4
  %249 = add nsw i32 %248, 1
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %247, i64 %250
  store i32 %244, i32* %251, align 4
  br label %252

252:                                              ; preds = %229
  %253 = load i32, i32* %12, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %12, align 4
  br label %223

255:                                              ; preds = %223
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %256

256:                                              ; preds = %283, %255
  %257 = load i32, i32* %12, align 4
  %258 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = icmp slt i32 %257, %260
  br i1 %261, label %262, label %286

262:                                              ; preds = %256
  %263 = load i32, i32* %12, align 4
  %264 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 0
  %266 = load i32*, i32** %265, align 8
  %267 = load i32, i32* %13, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %266, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = icmp sgt i32 %263, %270
  br i1 %271, label %272, label %275

272:                                              ; preds = %262
  %273 = load i32, i32* %13, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %13, align 4
  br label %275

275:                                              ; preds = %272, %262
  %276 = load i32, i32* %13, align 4
  %277 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %278 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i32 0, i32 4
  %279 = load i32*, i32** %278, align 8
  %280 = load i32, i32* %12, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %279, i64 %281
  store i32 %276, i32* %282, align 4
  br label %283

283:                                              ; preds = %275
  %284 = load i32, i32* %12, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %12, align 4
  br label %256

286:                                              ; preds = %256
  %287 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %288 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %291 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = mul nsw i32 %289, %292
  store i32 %293, i32* %11, align 4
  %294 = load i32, i32* %11, align 4
  %295 = call i8* @av_malloc_array(i32 %294, i32 4)
  %296 = bitcast i8* %295 to i32*
  %297 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %298 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %297, i32 0, i32 7
  store i32* %296, i32** %298, align 8
  %299 = load i32, i32* %11, align 4
  %300 = call i8* @av_malloc_array(i32 %299, i32 4)
  %301 = bitcast i8* %300 to i32*
  %302 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %303 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %302, i32 0, i32 8
  store i32* %301, i32** %303, align 8
  %304 = load i32, i32* %11, align 4
  %305 = call i8* @av_malloc_array(i32 %304, i32 4)
  %306 = bitcast i8* %305 to i32*
  %307 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %308 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %307, i32 0, i32 9
  store i32* %306, i32** %308, align 8
  %309 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %310 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %309, i32 0, i32 2
  %311 = load i32, i32* %310, align 4
  %312 = add nsw i32 %311, 2
  %313 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %314 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %313, i32 0, i32 2
  %315 = load i32, i32* %314, align 4
  %316 = add nsw i32 %315, 2
  %317 = mul nsw i32 %312, %316
  %318 = call i8* @av_malloc_array(i32 %317, i32 4)
  %319 = bitcast i8* %318 to i32*
  %320 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %321 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %320, i32 0, i32 10
  store i32* %319, i32** %321, align 8
  %322 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %323 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %322, i32 0, i32 7
  %324 = load i32*, i32** %323, align 8
  %325 = icmp ne i32* %324, null
  br i1 %325, label %326, label %341

326:                                              ; preds = %286
  %327 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %328 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %327, i32 0, i32 8
  %329 = load i32*, i32** %328, align 8
  %330 = icmp ne i32* %329, null
  br i1 %330, label %331, label %341

331:                                              ; preds = %326
  %332 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %333 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %332, i32 0, i32 9
  %334 = load i32*, i32** %333, align 8
  %335 = icmp ne i32* %334, null
  br i1 %335, label %336, label %341

336:                                              ; preds = %331
  %337 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %338 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %337, i32 0, i32 10
  %339 = load i32*, i32** %338, align 8
  %340 = icmp ne i32* %339, null
  br i1 %340, label %344, label %341

341:                                              ; preds = %336, %331, %326, %286
  %342 = load i32, i32* @ENOMEM, align 4
  %343 = call i32 @AVERROR(i32 %342)
  store i32 %343, i32* %5, align 4
  br label %805

344:                                              ; preds = %336
  store i32 0, i32* %16, align 4
  br label %345

345:                                              ; preds = %499, %344
  %346 = load i32, i32* %16, align 4
  %347 = load i32, i32* %11, align 4
  %348 = icmp slt i32 %346, %347
  br i1 %348, label %349, label %502

349:                                              ; preds = %345
  %350 = load i32, i32* %16, align 4
  %351 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %352 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 4
  %354 = srem i32 %350, %353
  store i32 %354, i32* %18, align 4
  %355 = load i32, i32* %16, align 4
  %356 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %357 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 4
  %359 = sdiv i32 %355, %358
  store i32 %359, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %12, align 4
  br label %360

360:                                              ; preds = %380, %349
  %361 = load i32, i32* %12, align 4
  %362 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %363 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %362, i32 0, i32 1
  %364 = load i32, i32* %363, align 8
  %365 = icmp slt i32 %361, %364
  br i1 %365, label %366, label %383

366:                                              ; preds = %360
  %367 = load i32, i32* %18, align 4
  %368 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %369 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %368, i32 0, i32 0
  %370 = load i32*, i32** %369, align 8
  %371 = load i32, i32* %12, align 4
  %372 = add nsw i32 %371, 1
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i32, i32* %370, i64 %373
  %375 = load i32, i32* %374, align 4
  %376 = icmp slt i32 %367, %375
  br i1 %376, label %377, label %379

377:                                              ; preds = %366
  %378 = load i32, i32* %12, align 4
  store i32 %378, i32* %20, align 4
  br label %383

379:                                              ; preds = %366
  br label %380

380:                                              ; preds = %379
  %381 = load i32, i32* %12, align 4
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %12, align 4
  br label %360

383:                                              ; preds = %377, %360
  store i32 0, i32* %12, align 4
  br label %384

384:                                              ; preds = %404, %383
  %385 = load i32, i32* %12, align 4
  %386 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %387 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %386, i32 0, i32 3
  %388 = load i32, i32* %387, align 8
  %389 = icmp slt i32 %385, %388
  br i1 %389, label %390, label %407

390:                                              ; preds = %384
  %391 = load i32, i32* %19, align 4
  %392 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %393 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %392, i32 0, i32 2
  %394 = load i32*, i32** %393, align 8
  %395 = load i32, i32* %12, align 4
  %396 = add nsw i32 %395, 1
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds i32, i32* %394, i64 %397
  %399 = load i32, i32* %398, align 4
  %400 = icmp slt i32 %391, %399
  br i1 %400, label %401, label %403

401:                                              ; preds = %390
  %402 = load i32, i32* %12, align 4
  store i32 %402, i32* %21, align 4
  br label %407

403:                                              ; preds = %390
  br label %404

404:                                              ; preds = %403
  %405 = load i32, i32* %12, align 4
  %406 = add nsw i32 %405, 1
  store i32 %406, i32* %12, align 4
  br label %384

407:                                              ; preds = %401, %384
  store i32 0, i32* %12, align 4
  br label %408

408:                                              ; preds = %430, %407
  %409 = load i32, i32* %12, align 4
  %410 = load i32, i32* %20, align 4
  %411 = icmp slt i32 %409, %410
  br i1 %411, label %412, label %433

412:                                              ; preds = %408
  %413 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %414 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %413, i32 0, i32 6
  %415 = load i32*, i32** %414, align 8
  %416 = load i32, i32* %21, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds i32, i32* %415, i64 %417
  %419 = load i32, i32* %418, align 4
  %420 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %421 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %420, i32 0, i32 5
  %422 = load i32*, i32** %421, align 8
  %423 = load i32, i32* %12, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds i32, i32* %422, i64 %424
  %426 = load i32, i32* %425, align 4
  %427 = mul nsw i32 %419, %426
  %428 = load i32, i32* %22, align 4
  %429 = add nsw i32 %428, %427
  store i32 %429, i32* %22, align 4
  br label %430

430:                                              ; preds = %412
  %431 = load i32, i32* %12, align 4
  %432 = add nsw i32 %431, 1
  store i32 %432, i32* %12, align 4
  br label %408

433:                                              ; preds = %408
  store i32 0, i32* %12, align 4
  br label %434

434:                                              ; preds = %452, %433
  %435 = load i32, i32* %12, align 4
  %436 = load i32, i32* %21, align 4
  %437 = icmp slt i32 %435, %436
  br i1 %437, label %438, label %455

438:                                              ; preds = %434
  %439 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %440 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %439, i32 0, i32 0
  %441 = load i32, i32* %440, align 4
  %442 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %443 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %442, i32 0, i32 6
  %444 = load i32*, i32** %443, align 8
  %445 = load i32, i32* %12, align 4
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds i32, i32* %444, i64 %446
  %448 = load i32, i32* %447, align 4
  %449 = mul nsw i32 %441, %448
  %450 = load i32, i32* %22, align 4
  %451 = add nsw i32 %450, %449
  store i32 %451, i32* %22, align 4
  br label %452

452:                                              ; preds = %438
  %453 = load i32, i32* %12, align 4
  %454 = add nsw i32 %453, 1
  store i32 %454, i32* %12, align 4
  br label %434

455:                                              ; preds = %434
  %456 = load i32, i32* %19, align 4
  %457 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %458 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %457, i32 0, i32 2
  %459 = load i32*, i32** %458, align 8
  %460 = load i32, i32* %21, align 4
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds i32, i32* %459, i64 %461
  %463 = load i32, i32* %462, align 4
  %464 = sub nsw i32 %456, %463
  %465 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %466 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %465, i32 0, i32 5
  %467 = load i32*, i32** %466, align 8
  %468 = load i32, i32* %20, align 4
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds i32, i32* %467, i64 %469
  %471 = load i32, i32* %470, align 4
  %472 = mul nsw i32 %464, %471
  %473 = load i32, i32* %18, align 4
  %474 = add nsw i32 %472, %473
  %475 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %476 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %475, i32 0, i32 0
  %477 = load i32*, i32** %476, align 8
  %478 = load i32, i32* %20, align 4
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds i32, i32* %477, i64 %479
  %481 = load i32, i32* %480, align 4
  %482 = sub nsw i32 %474, %481
  %483 = load i32, i32* %22, align 4
  %484 = add nsw i32 %483, %482
  store i32 %484, i32* %22, align 4
  %485 = load i32, i32* %22, align 4
  %486 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %487 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %486, i32 0, i32 7
  %488 = load i32*, i32** %487, align 8
  %489 = load i32, i32* %16, align 4
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds i32, i32* %488, i64 %490
  store i32 %485, i32* %491, align 4
  %492 = load i32, i32* %16, align 4
  %493 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %494 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %493, i32 0, i32 8
  %495 = load i32*, i32** %494, align 8
  %496 = load i32, i32* %22, align 4
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds i32, i32* %495, i64 %497
  store i32 %492, i32* %498, align 4
  br label %499

499:                                              ; preds = %455
  %500 = load i32, i32* %16, align 4
  %501 = add nsw i32 %500, 1
  store i32 %501, i32* %16, align 4
  br label %345

502:                                              ; preds = %345
  store i32 0, i32* %13, align 4
  store i32 0, i32* %17, align 4
  br label %503

503:                                              ; preds = %588, %502
  %504 = load i32, i32* %13, align 4
  %505 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %506 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %505, i32 0, i32 3
  %507 = load i32, i32* %506, align 8
  %508 = icmp slt i32 %504, %507
  br i1 %508, label %509, label %591

509:                                              ; preds = %503
  store i32 0, i32* %12, align 4
  br label %510

510:                                              ; preds = %582, %509
  %511 = load i32, i32* %12, align 4
  %512 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %513 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %512, i32 0, i32 1
  %514 = load i32, i32* %513, align 8
  %515 = icmp slt i32 %511, %514
  br i1 %515, label %516, label %587

516:                                              ; preds = %510
  %517 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %518 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %517, i32 0, i32 2
  %519 = load i32*, i32** %518, align 8
  %520 = load i32, i32* %13, align 4
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds i32, i32* %519, i64 %521
  %523 = load i32, i32* %522, align 4
  store i32 %523, i32* %15, align 4
  br label %524

524:                                              ; preds = %578, %516
  %525 = load i32, i32* %15, align 4
  %526 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %527 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %526, i32 0, i32 2
  %528 = load i32*, i32** %527, align 8
  %529 = load i32, i32* %13, align 4
  %530 = add nsw i32 %529, 1
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds i32, i32* %528, i64 %531
  %533 = load i32, i32* %532, align 4
  %534 = icmp slt i32 %525, %533
  br i1 %534, label %535, label %581

535:                                              ; preds = %524
  %536 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %537 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %536, i32 0, i32 0
  %538 = load i32*, i32** %537, align 8
  %539 = load i32, i32* %12, align 4
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds i32, i32* %538, i64 %540
  %542 = load i32, i32* %541, align 4
  store i32 %542, i32* %14, align 4
  br label %543

543:                                              ; preds = %574, %535
  %544 = load i32, i32* %14, align 4
  %545 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %546 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %545, i32 0, i32 0
  %547 = load i32*, i32** %546, align 8
  %548 = load i32, i32* %12, align 4
  %549 = add nsw i32 %548, 1
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds i32, i32* %547, i64 %550
  %552 = load i32, i32* %551, align 4
  %553 = icmp slt i32 %544, %552
  br i1 %553, label %554, label %577

554:                                              ; preds = %543
  %555 = load i32, i32* %17, align 4
  %556 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %557 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %556, i32 0, i32 9
  %558 = load i32*, i32** %557, align 8
  %559 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %560 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %559, i32 0, i32 7
  %561 = load i32*, i32** %560, align 8
  %562 = load i32, i32* %15, align 4
  %563 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %564 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %563, i32 0, i32 0
  %565 = load i32, i32* %564, align 4
  %566 = mul nsw i32 %562, %565
  %567 = load i32, i32* %14, align 4
  %568 = add nsw i32 %566, %567
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds i32, i32* %561, i64 %569
  %571 = load i32, i32* %570, align 4
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds i32, i32* %558, i64 %572
  store i32 %555, i32* %573, align 4
  br label %574

574:                                              ; preds = %554
  %575 = load i32, i32* %14, align 4
  %576 = add nsw i32 %575, 1
  store i32 %576, i32* %14, align 4
  br label %543

577:                                              ; preds = %543
  br label %578

578:                                              ; preds = %577
  %579 = load i32, i32* %15, align 4
  %580 = add nsw i32 %579, 1
  store i32 %580, i32* %15, align 4
  br label %524

581:                                              ; preds = %524
  br label %582

582:                                              ; preds = %581
  %583 = load i32, i32* %12, align 4
  %584 = add nsw i32 %583, 1
  store i32 %584, i32* %12, align 4
  %585 = load i32, i32* %17, align 4
  %586 = add nsw i32 %585, 1
  store i32 %586, i32* %17, align 4
  br label %510

587:                                              ; preds = %510
  br label %588

588:                                              ; preds = %587
  %589 = load i32, i32* %13, align 4
  %590 = add nsw i32 %589, 1
  store i32 %590, i32* %13, align 4
  br label %503

591:                                              ; preds = %503
  %592 = load i32, i32* %17, align 4
  %593 = call i8* @av_malloc_array(i32 %592, i32 4)
  %594 = bitcast i8* %593 to i32*
  %595 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %596 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %595, i32 0, i32 11
  store i32* %594, i32** %596, align 8
  %597 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %598 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %597, i32 0, i32 11
  %599 = load i32*, i32** %598, align 8
  %600 = icmp ne i32* %599, null
  br i1 %600, label %604, label %601

601:                                              ; preds = %591
  %602 = load i32, i32* @ENOMEM, align 4
  %603 = call i32 @AVERROR(i32 %602)
  store i32 %603, i32* %5, align 4
  br label %805

604:                                              ; preds = %591
  store i32 0, i32* %13, align 4
  br label %605

605:                                              ; preds = %654, %604
  %606 = load i32, i32* %13, align 4
  %607 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %608 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %607, i32 0, i32 3
  %609 = load i32, i32* %608, align 8
  %610 = icmp slt i32 %606, %609
  br i1 %610, label %611, label %657

611:                                              ; preds = %605
  store i32 0, i32* %12, align 4
  br label %612

612:                                              ; preds = %650, %611
  %613 = load i32, i32* %12, align 4
  %614 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %615 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %614, i32 0, i32 1
  %616 = load i32, i32* %615, align 8
  %617 = icmp slt i32 %613, %616
  br i1 %617, label %618, label %653

618:                                              ; preds = %612
  %619 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %620 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %619, i32 0, i32 2
  %621 = load i32*, i32** %620, align 8
  %622 = load i32, i32* %13, align 4
  %623 = sext i32 %622 to i64
  %624 = getelementptr inbounds i32, i32* %621, i64 %623
  %625 = load i32, i32* %624, align 4
  %626 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %627 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %626, i32 0, i32 0
  %628 = load i32, i32* %627, align 4
  %629 = mul nsw i32 %625, %628
  %630 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %631 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %630, i32 0, i32 0
  %632 = load i32*, i32** %631, align 8
  %633 = load i32, i32* %12, align 4
  %634 = sext i32 %633 to i64
  %635 = getelementptr inbounds i32, i32* %632, i64 %634
  %636 = load i32, i32* %635, align 4
  %637 = add nsw i32 %629, %636
  %638 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %639 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %638, i32 0, i32 11
  %640 = load i32*, i32** %639, align 8
  %641 = load i32, i32* %13, align 4
  %642 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %643 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %642, i32 0, i32 1
  %644 = load i32, i32* %643, align 8
  %645 = mul nsw i32 %641, %644
  %646 = load i32, i32* %12, align 4
  %647 = add nsw i32 %645, %646
  %648 = sext i32 %647 to i64
  %649 = getelementptr inbounds i32, i32* %640, i64 %648
  store i32 %637, i32* %649, align 4
  br label %650

650:                                              ; preds = %618
  %651 = load i32, i32* %12, align 4
  %652 = add nsw i32 %651, 1
  store i32 %652, i32* %12, align 4
  br label %612

653:                                              ; preds = %612
  br label %654

654:                                              ; preds = %653
  %655 = load i32, i32* %13, align 4
  %656 = add nsw i32 %655, 1
  store i32 %656, i32* %13, align 4
  br label %605

657:                                              ; preds = %605
  %658 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %659 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %658, i32 0, i32 3
  %660 = load i32, i32* %659, align 4
  %661 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %662 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %661, i32 0, i32 4
  %663 = load i32, i32* %662, align 4
  %664 = sub nsw i32 %660, %663
  store i32 %664, i32* %10, align 4
  %665 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %666 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %665, i32 0, i32 10
  %667 = load i32*, i32** %666, align 8
  %668 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %669 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %668, i32 0, i32 2
  %670 = load i32, i32* %669, align 4
  %671 = add nsw i32 %670, 2
  %672 = mul nsw i32 1, %671
  %673 = add nsw i32 %672, 1
  %674 = sext i32 %673 to i64
  %675 = getelementptr inbounds i32, i32* %667, i64 %674
  %676 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %677 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %676, i32 0, i32 12
  store i32* %675, i32** %677, align 8
  store i32 0, i32* %15, align 4
  br label %678

678:                                              ; preds = %703, %657
  %679 = load i32, i32* %15, align 4
  %680 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %681 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %680, i32 0, i32 2
  %682 = load i32, i32* %681, align 4
  %683 = add nsw i32 %682, 2
  %684 = icmp slt i32 %679, %683
  br i1 %684, label %685, label %706

685:                                              ; preds = %678
  %686 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %687 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %686, i32 0, i32 10
  %688 = load i32*, i32** %687, align 8
  %689 = load i32, i32* %15, align 4
  %690 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %691 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %690, i32 0, i32 2
  %692 = load i32, i32* %691, align 4
  %693 = add nsw i32 %692, 2
  %694 = mul nsw i32 %689, %693
  %695 = sext i32 %694 to i64
  %696 = getelementptr inbounds i32, i32* %688, i64 %695
  store i32 -1, i32* %696, align 4
  %697 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %698 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %697, i32 0, i32 10
  %699 = load i32*, i32** %698, align 8
  %700 = load i32, i32* %15, align 4
  %701 = sext i32 %700 to i64
  %702 = getelementptr inbounds i32, i32* %699, i64 %701
  store i32 -1, i32* %702, align 4
  br label %703

703:                                              ; preds = %685
  %704 = load i32, i32* %15, align 4
  %705 = add nsw i32 %704, 1
  store i32 %705, i32* %15, align 4
  br label %678

706:                                              ; preds = %678
  store i32 0, i32* %15, align 4
  br label %707

707:                                              ; preds = %801, %706
  %708 = load i32, i32* %15, align 4
  %709 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %710 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %709, i32 0, i32 2
  %711 = load i32, i32* %710, align 4
  %712 = add nsw i32 %711, 1
  %713 = icmp slt i32 %708, %712
  br i1 %713, label %714, label %804

714:                                              ; preds = %707
  store i32 0, i32* %14, align 4
  br label %715

715:                                              ; preds = %797, %714
  %716 = load i32, i32* %14, align 4
  %717 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %718 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %717, i32 0, i32 2
  %719 = load i32, i32* %718, align 4
  %720 = add nsw i32 %719, 1
  %721 = icmp slt i32 %716, %720
  br i1 %721, label %722, label %800

722:                                              ; preds = %715
  %723 = load i32, i32* %14, align 4
  %724 = load i32, i32* %10, align 4
  %725 = ashr i32 %723, %724
  store i32 %725, i32* %23, align 4
  %726 = load i32, i32* %15, align 4
  %727 = load i32, i32* %10, align 4
  %728 = ashr i32 %726, %727
  store i32 %728, i32* %24, align 4
  %729 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %730 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %729, i32 0, i32 0
  %731 = load i32, i32* %730, align 4
  %732 = load i32, i32* %24, align 4
  %733 = mul nsw i32 %731, %732
  %734 = load i32, i32* %23, align 4
  %735 = add nsw i32 %733, %734
  store i32 %735, i32* %25, align 4
  %736 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %737 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %736, i32 0, i32 7
  %738 = load i32*, i32** %737, align 8
  %739 = load i32, i32* %25, align 4
  %740 = sext i32 %739 to i64
  %741 = getelementptr inbounds i32, i32* %738, i64 %740
  %742 = load i32, i32* %741, align 4
  %743 = load i32, i32* %10, align 4
  %744 = mul nsw i32 %743, 2
  %745 = shl i32 %742, %744
  store i32 %745, i32* %26, align 4
  store i32 0, i32* %12, align 4
  br label %746

746:                                              ; preds = %779, %722
  %747 = load i32, i32* %12, align 4
  %748 = load i32, i32* %10, align 4
  %749 = icmp slt i32 %747, %748
  br i1 %749, label %750, label %782

750:                                              ; preds = %746
  %751 = load i32, i32* %12, align 4
  %752 = shl i32 1, %751
  store i32 %752, i32* %27, align 4
  %753 = load i32, i32* %27, align 4
  %754 = load i32, i32* %14, align 4
  %755 = and i32 %753, %754
  %756 = icmp ne i32 %755, 0
  br i1 %756, label %757, label %761

757:                                              ; preds = %750
  %758 = load i32, i32* %27, align 4
  %759 = load i32, i32* %27, align 4
  %760 = mul nsw i32 %758, %759
  br label %762

761:                                              ; preds = %750
  br label %762

762:                                              ; preds = %761, %757
  %763 = phi i32 [ %760, %757 ], [ 0, %761 ]
  %764 = load i32, i32* %27, align 4
  %765 = load i32, i32* %15, align 4
  %766 = and i32 %764, %765
  %767 = icmp ne i32 %766, 0
  br i1 %767, label %768, label %773

768:                                              ; preds = %762
  %769 = load i32, i32* %27, align 4
  %770 = mul nsw i32 2, %769
  %771 = load i32, i32* %27, align 4
  %772 = mul nsw i32 %770, %771
  br label %774

773:                                              ; preds = %762
  br label %774

774:                                              ; preds = %773, %768
  %775 = phi i32 [ %772, %768 ], [ 0, %773 ]
  %776 = add nsw i32 %763, %775
  %777 = load i32, i32* %26, align 4
  %778 = add nsw i32 %777, %776
  store i32 %778, i32* %26, align 4
  br label %779

779:                                              ; preds = %774
  %780 = load i32, i32* %12, align 4
  %781 = add nsw i32 %780, 1
  store i32 %781, i32* %12, align 4
  br label %746

782:                                              ; preds = %746
  %783 = load i32, i32* %26, align 4
  %784 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %785 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %784, i32 0, i32 12
  %786 = load i32*, i32** %785, align 8
  %787 = load i32, i32* %15, align 4
  %788 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %789 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %788, i32 0, i32 2
  %790 = load i32, i32* %789, align 4
  %791 = add nsw i32 %790, 2
  %792 = mul nsw i32 %787, %791
  %793 = load i32, i32* %14, align 4
  %794 = add nsw i32 %792, %793
  %795 = sext i32 %794 to i64
  %796 = getelementptr inbounds i32, i32* %786, i64 %795
  store i32 %783, i32* %796, align 4
  br label %797

797:                                              ; preds = %782
  %798 = load i32, i32* %14, align 4
  %799 = add nsw i32 %798, 1
  store i32 %799, i32* %14, align 4
  br label %715

800:                                              ; preds = %715
  br label %801

801:                                              ; preds = %800
  %802 = load i32, i32* %15, align 4
  %803 = add nsw i32 %802, 1
  store i32 %803, i32* %15, align 4
  br label %707

804:                                              ; preds = %707
  store i32 0, i32* %5, align 4
  br label %805

805:                                              ; preds = %804, %601, %341, %103, %65
  %806 = load i32, i32* %5, align 4
  ret i32 %806
}

declare dso_local i8* @av_malloc_array(i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
