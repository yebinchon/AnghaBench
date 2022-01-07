; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_normalize.c_normalize.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_normalize.c_normalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64*, i32, i32, float, float*, float, float*, i32, i32, %struct.TYPE_9__*, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { float, i32* }
%struct.TYPE_10__ = type { float, i32* }
%struct.TYPE_13__ = type { i32**, i32, i32*, i32 }
%struct.TYPE_11__ = type { i32, float, float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, %struct.TYPE_13__*, %struct.TYPE_13__*)* @normalize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @normalize(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca [3 x %struct.TYPE_11__], align 16
  %8 = alloca [3 x %struct.TYPE_11__], align 16
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca [3 x [256 x i64]], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca float, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64*, align 8
  %22 = alloca i64*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %6, align 8
  store i32 0, i32* %14, align 4
  br label %23

23:                                               ; preds = %49, %3
  %24 = load i32, i32* %14, align 4
  %25 = icmp slt i32 %24, 3
  br i1 %25, label %26, label %52

26:                                               ; preds = %23
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i32**, i32*** %28, align 8
  %30 = getelementptr inbounds i32*, i32** %29, i64 0
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = load i32, i32* %14, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i32, i32* %31, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %14, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %8, i64 0, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  store i32 %40, i32* %44, align 4
  %45 = load i32, i32* %14, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %7, i64 0, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  store i32 %40, i32* %48, align 4
  br label %49

49:                                               ; preds = %26
  %50 = load i32, i32* %14, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %14, align 4
  br label %23

52:                                               ; preds = %23
  store i32 0, i32* %13, align 4
  br label %53

53:                                               ; preds = %143, %52
  %54 = load i32, i32* %13, align 4
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %146

59:                                               ; preds = %53
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load i32**, i32*** %61, align 8
  %63 = getelementptr inbounds i32*, i32** %62, i64 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %13, align 4
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 %65, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %64, i64 %72
  %74 = bitcast i32* %73 to i64*
  store i64* %74, i64** %15, align 8
  store i32 0, i32* %12, align 4
  br label %75

75:                                               ; preds = %139, %59
  %76 = load i32, i32* %12, align 4
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %142

81:                                               ; preds = %75
  store i32 0, i32* %14, align 4
  br label %82

82:                                               ; preds = %129, %81
  %83 = load i32, i32* %14, align 4
  %84 = icmp slt i32 %83, 3
  br i1 %84, label %85, label %132

85:                                               ; preds = %82
  %86 = load i32, i32* %14, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %7, i64 0, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i64*, i64** %15, align 8
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load i64*, i64** %93, align 8
  %95 = load i32, i32* %14, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds i64, i64* %91, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = trunc i64 %100 to i32
  %102 = call i8* @FFMIN(i32 %90, i32 %101)
  %103 = ptrtoint i8* %102 to i32
  %104 = load i32, i32* %14, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %7, i64 0, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  store i32 %103, i32* %107, align 4
  %108 = load i32, i32* %14, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %8, i64 0, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i64*, i64** %15, align 8
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = load i64*, i64** %115, align 8
  %117 = load i32, i32* %14, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %116, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds i64, i64* %113, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = call i8* @FFMAX(i32 %112, i64 %122)
  %124 = ptrtoint i8* %123 to i32
  %125 = load i32, i32* %14, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %8, i64 0, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  store i32 %124, i32* %128, align 4
  br label %129

129:                                              ; preds = %85
  %130 = load i32, i32* %14, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %14, align 4
  br label %82

132:                                              ; preds = %82
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 8
  %135 = load i32, i32* %134, align 4
  %136 = load i64*, i64** %15, align 8
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i64, i64* %136, i64 %137
  store i64* %138, i64** %15, align 8
  br label %139

139:                                              ; preds = %132
  %140 = load i32, i32* %12, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %12, align 4
  br label %75

142:                                              ; preds = %75
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %13, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %13, align 4
  br label %53

146:                                              ; preds = %53
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = srem i32 %149, %152
  store i32 %153, i32* %16, align 4
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %17, align 4
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = icmp sge i32 %160, %163
  br i1 %164, label %165, label %221

165:                                              ; preds = %146
  store i32 0, i32* %14, align 4
  br label %166

166:                                              ; preds = %214, %165
  %167 = load i32, i32* %14, align 4
  %168 = icmp slt i32 %167, 3
  br i1 %168, label %169, label %217

169:                                              ; preds = %166
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 10
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %171, align 8
  %173 = load i32, i32* %14, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %16, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = sitofp i32 %181 to float
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 10
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %184, align 8
  %186 = load i32, i32* %14, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 0
  %190 = load float, float* %189, align 8
  %191 = fsub float %190, %182
  store float %191, float* %189, align 8
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 9
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %193, align 8
  %195 = load i32, i32* %14, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 1
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %16, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = sitofp i32 %203 to float
  %205 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 9
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %206, align 8
  %208 = load i32, i32* %14, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 0
  %212 = load float, float* %211, align 8
  %213 = fsub float %212, %204
  store float %213, float* %211, align 8
  br label %214

214:                                              ; preds = %169
  %215 = load i32, i32* %14, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %14, align 4
  br label %166

217:                                              ; preds = %166
  %218 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 4
  store i32 %220, i32* %17, align 4
  br label %221

221:                                              ; preds = %217, %146
  store i32 0, i32* %14, align 4
  br label %222

222:                                              ; preds = %308, %221
  %223 = load i32, i32* %14, align 4
  %224 = icmp slt i32 %223, 3
  br i1 %224, label %225, label %311

225:                                              ; preds = %222
  %226 = load i32, i32* %14, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %7, i64 0, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 10
  %233 = load %struct.TYPE_10__*, %struct.TYPE_10__** %232, align 8
  %234 = load i32, i32* %14, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 1
  %238 = load i32*, i32** %237, align 8
  %239 = load i32, i32* %16, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %238, i64 %240
  store i32 %230, i32* %241, align 4
  %242 = sitofp i32 %230 to float
  %243 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i32 0, i32 10
  %245 = load %struct.TYPE_10__*, %struct.TYPE_10__** %244, align 8
  %246 = load i32, i32* %14, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 0
  %250 = load float, float* %249, align 8
  %251 = fadd float %250, %242
  store float %251, float* %249, align 8
  %252 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i32 0, i32 10
  %254 = load %struct.TYPE_10__*, %struct.TYPE_10__** %253, align 8
  %255 = load i32, i32* %14, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %254, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %257, i32 0, i32 0
  %259 = load float, float* %258, align 8
  %260 = load i32, i32* %17, align 4
  %261 = sitofp i32 %260 to float
  %262 = fdiv float %259, %261
  %263 = load i32, i32* %14, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %7, i64 0, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %265, i32 0, i32 1
  store float %262, float* %266, align 4
  %267 = load i32, i32* %14, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %8, i64 0, i64 %268
  %270 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %272, i32 0, i32 9
  %274 = load %struct.TYPE_9__*, %struct.TYPE_9__** %273, align 8
  %275 = load i32, i32* %14, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %274, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %277, i32 0, i32 1
  %279 = load i32*, i32** %278, align 8
  %280 = load i32, i32* %16, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %279, i64 %281
  store i32 %271, i32* %282, align 4
  %283 = sitofp i32 %271 to float
  %284 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %285 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %284, i32 0, i32 9
  %286 = load %struct.TYPE_9__*, %struct.TYPE_9__** %285, align 8
  %287 = load i32, i32* %14, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %286, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %289, i32 0, i32 0
  %291 = load float, float* %290, align 8
  %292 = fadd float %291, %283
  store float %292, float* %290, align 8
  %293 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %294 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %293, i32 0, i32 9
  %295 = load %struct.TYPE_9__*, %struct.TYPE_9__** %294, align 8
  %296 = load i32, i32* %14, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %295, i64 %297
  %299 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %298, i32 0, i32 0
  %300 = load float, float* %299, align 8
  %301 = load i32, i32* %17, align 4
  %302 = sitofp i32 %301 to float
  %303 = fdiv float %300, %302
  %304 = load i32, i32* %14, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %8, i64 0, i64 %305
  %307 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %306, i32 0, i32 1
  store float %303, float* %307, align 4
  br label %308

308:                                              ; preds = %225
  %309 = load i32, i32* %14, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %14, align 4
  br label %222

311:                                              ; preds = %222
  %312 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %7, i64 0, i64 0
  %313 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %312, i32 0, i32 1
  %314 = load float, float* %313, align 4
  %315 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %7, i64 0, i64 1
  %316 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %315, i32 0, i32 1
  %317 = load float, float* %316, align 4
  %318 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %7, i64 0, i64 2
  %319 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %318, i32 0, i32 1
  %320 = load float, float* %319, align 4
  %321 = call float @FFMIN3(float %314, float %317, float %320)
  store float %321, float* %9, align 4
  %322 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %8, i64 0, i64 0
  %323 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %322, i32 0, i32 1
  %324 = load float, float* %323, align 4
  %325 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %8, i64 0, i64 1
  %326 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %325, i32 0, i32 1
  %327 = load float, float* %326, align 4
  %328 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %8, i64 0, i64 2
  %329 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %328, i32 0, i32 1
  %330 = load float, float* %329, align 4
  %331 = call float @FFMAX3(float %324, float %327, float %330)
  store float %331, float* %10, align 4
  store i32 0, i32* %14, align 4
  br label %332

332:                                              ; preds = %547, %311
  %333 = load i32, i32* %14, align 4
  %334 = icmp slt i32 %333, 3
  br i1 %334, label %335, label %550

335:                                              ; preds = %332
  %336 = load i32, i32* %14, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %7, i64 0, i64 %337
  %339 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %338, i32 0, i32 1
  %340 = load float, float* %339, align 4
  %341 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %342 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %341, i32 0, i32 3
  %343 = load float, float* %342, align 8
  %344 = fmul float %340, %343
  %345 = load float, float* %9, align 4
  %346 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %347 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %346, i32 0, i32 3
  %348 = load float, float* %347, align 8
  %349 = fsub float 1.000000e+00, %348
  %350 = fmul float %345, %349
  %351 = fadd float %344, %350
  %352 = load i32, i32* %14, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %7, i64 0, i64 %353
  %355 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %354, i32 0, i32 1
  store float %351, float* %355, align 4
  %356 = load i32, i32* %14, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %8, i64 0, i64 %357
  %359 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %358, i32 0, i32 1
  %360 = load float, float* %359, align 4
  %361 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %362 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %361, i32 0, i32 3
  %363 = load float, float* %362, align 8
  %364 = fmul float %360, %363
  %365 = load float, float* %10, align 4
  %366 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %367 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %366, i32 0, i32 3
  %368 = load float, float* %367, align 8
  %369 = fsub float 1.000000e+00, %368
  %370 = fmul float %365, %369
  %371 = fadd float %364, %370
  %372 = load i32, i32* %14, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %8, i64 0, i64 %373
  %375 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %374, i32 0, i32 1
  store float %371, float* %375, align 4
  %376 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %377 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %376, i32 0, i32 4
  %378 = load float*, float** %377, align 8
  %379 = load i32, i32* %14, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds float, float* %378, i64 %380
  %382 = load float, float* %381, align 4
  %383 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %384 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %383, i32 0, i32 5
  %385 = load float, float* %384, align 8
  %386 = fmul float %382, %385
  %387 = load i32, i32* %14, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %7, i64 0, i64 %388
  %390 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 4
  %392 = sitofp i32 %391 to float
  %393 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %394 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %393, i32 0, i32 5
  %395 = load float, float* %394, align 8
  %396 = fsub float 1.000000e+00, %395
  %397 = fmul float %392, %396
  %398 = fadd float %386, %397
  %399 = load i32, i32* %14, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %7, i64 0, i64 %400
  %402 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %401, i32 0, i32 2
  store float %398, float* %402, align 4
  %403 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %404 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %403, i32 0, i32 6
  %405 = load float*, float** %404, align 8
  %406 = load i32, i32* %14, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds float, float* %405, i64 %407
  %409 = load float, float* %408, align 4
  %410 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %411 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %410, i32 0, i32 5
  %412 = load float, float* %411, align 8
  %413 = fmul float %409, %412
  %414 = load i32, i32* %14, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %8, i64 0, i64 %415
  %417 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %416, i32 0, i32 0
  %418 = load i32, i32* %417, align 4
  %419 = sitofp i32 %418 to float
  %420 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %421 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %420, i32 0, i32 5
  %422 = load float, float* %421, align 8
  %423 = fsub float 1.000000e+00, %422
  %424 = fmul float %419, %423
  %425 = fadd float %413, %424
  %426 = load i32, i32* %14, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %8, i64 0, i64 %427
  %429 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %428, i32 0, i32 2
  store float %425, float* %429, align 4
  %430 = load i32, i32* %14, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %7, i64 0, i64 %431
  %433 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %432, i32 0, i32 1
  %434 = load float, float* %433, align 4
  %435 = load i32, i32* %14, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %8, i64 0, i64 %436
  %438 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %437, i32 0, i32 1
  %439 = load float, float* %438, align 4
  %440 = fcmp oeq float %434, %439
  br i1 %440, label %441, label %472

441:                                              ; preds = %335
  %442 = load i32, i32* %14, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %7, i64 0, i64 %443
  %445 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %444, i32 0, i32 0
  %446 = load i32, i32* %445, align 4
  store i32 %446, i32* %18, align 4
  br label %447

447:                                              ; preds = %468, %441
  %448 = load i32, i32* %18, align 4
  %449 = load i32, i32* %14, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %8, i64 0, i64 %450
  %452 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %451, i32 0, i32 0
  %453 = load i32, i32* %452, align 4
  %454 = icmp sle i32 %448, %453
  br i1 %454, label %455, label %471

455:                                              ; preds = %447
  %456 = load i32, i32* %14, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %7, i64 0, i64 %457
  %459 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %458, i32 0, i32 2
  %460 = load float, float* %459, align 4
  %461 = fptoui float %460 to i64
  %462 = load i32, i32* %14, align 4
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds [3 x [256 x i64]], [3 x [256 x i64]]* %11, i64 0, i64 %463
  %465 = load i32, i32* %18, align 4
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds [256 x i64], [256 x i64]* %464, i64 0, i64 %466
  store i64 %461, i64* %467, align 8
  br label %468

468:                                              ; preds = %455
  %469 = load i32, i32* %18, align 4
  %470 = add nsw i32 %469, 1
  store i32 %470, i32* %18, align 4
  br label %447

471:                                              ; preds = %447
  br label %546

472:                                              ; preds = %335
  %473 = load i32, i32* %14, align 4
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %8, i64 0, i64 %474
  %476 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %475, i32 0, i32 2
  %477 = load float, float* %476, align 4
  %478 = load i32, i32* %14, align 4
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %7, i64 0, i64 %479
  %481 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %480, i32 0, i32 2
  %482 = load float, float* %481, align 4
  %483 = fsub float %477, %482
  %484 = load i32, i32* %14, align 4
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %8, i64 0, i64 %485
  %487 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %486, i32 0, i32 1
  %488 = load float, float* %487, align 4
  %489 = load i32, i32* %14, align 4
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %7, i64 0, i64 %490
  %492 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %491, i32 0, i32 1
  %493 = load float, float* %492, align 4
  %494 = fsub float %488, %493
  %495 = fdiv float %483, %494
  store float %495, float* %19, align 4
  %496 = load i32, i32* %14, align 4
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %7, i64 0, i64 %497
  %499 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %498, i32 0, i32 0
  %500 = load i32, i32* %499, align 4
  store i32 %500, i32* %18, align 4
  br label %501

501:                                              ; preds = %542, %472
  %502 = load i32, i32* %18, align 4
  %503 = load i32, i32* %14, align 4
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %8, i64 0, i64 %504
  %506 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %505, i32 0, i32 0
  %507 = load i32, i32* %506, align 4
  %508 = icmp sle i32 %502, %507
  br i1 %508, label %509, label %545

509:                                              ; preds = %501
  %510 = load i32, i32* %18, align 4
  %511 = sitofp i32 %510 to float
  %512 = load i32, i32* %14, align 4
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %7, i64 0, i64 %513
  %515 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %514, i32 0, i32 1
  %516 = load float, float* %515, align 4
  %517 = fsub float %511, %516
  %518 = load float, float* %19, align 4
  %519 = fmul float %517, %518
  %520 = load i32, i32* %14, align 4
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %7, i64 0, i64 %521
  %523 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %522, i32 0, i32 2
  %524 = load float, float* %523, align 4
  %525 = fadd float %519, %524
  %526 = fadd float %525, 5.000000e-01
  %527 = fptosi float %526 to i32
  store i32 %527, i32* %20, align 4
  %528 = load i32, i32* %20, align 4
  %529 = call i8* @FFMAX(i32 %528, i64 0)
  %530 = ptrtoint i8* %529 to i32
  store i32 %530, i32* %20, align 4
  %531 = load i32, i32* %20, align 4
  %532 = call i8* @FFMIN(i32 %531, i32 255)
  %533 = ptrtoint i8* %532 to i32
  store i32 %533, i32* %20, align 4
  %534 = load i32, i32* %20, align 4
  %535 = sext i32 %534 to i64
  %536 = load i32, i32* %14, align 4
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds [3 x [256 x i64]], [3 x [256 x i64]]* %11, i64 0, i64 %537
  %539 = load i32, i32* %18, align 4
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds [256 x i64], [256 x i64]* %538, i64 0, i64 %540
  store i64 %535, i64* %541, align 8
  br label %542

542:                                              ; preds = %509
  %543 = load i32, i32* %18, align 4
  %544 = add nsw i32 %543, 1
  store i32 %544, i32* %18, align 4
  br label %501

545:                                              ; preds = %501
  br label %546

546:                                              ; preds = %545, %471
  br label %547

547:                                              ; preds = %546
  %548 = load i32, i32* %14, align 4
  %549 = add nsw i32 %548, 1
  store i32 %549, i32* %14, align 4
  br label %332

550:                                              ; preds = %332
  store i32 0, i32* %13, align 4
  br label %551

551:                                              ; preds = %664, %550
  %552 = load i32, i32* %13, align 4
  %553 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %554 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %553, i32 0, i32 1
  %555 = load i32, i32* %554, align 8
  %556 = icmp slt i32 %552, %555
  br i1 %556, label %557, label %667

557:                                              ; preds = %551
  %558 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %559 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %558, i32 0, i32 0
  %560 = load i32**, i32*** %559, align 8
  %561 = getelementptr inbounds i32*, i32** %560, i64 0
  %562 = load i32*, i32** %561, align 8
  %563 = load i32, i32* %13, align 4
  %564 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %565 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %564, i32 0, i32 2
  %566 = load i32*, i32** %565, align 8
  %567 = getelementptr inbounds i32, i32* %566, i64 0
  %568 = load i32, i32* %567, align 4
  %569 = mul nsw i32 %563, %568
  %570 = sext i32 %569 to i64
  %571 = getelementptr inbounds i32, i32* %562, i64 %570
  %572 = bitcast i32* %571 to i64*
  store i64* %572, i64** %21, align 8
  %573 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %574 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %573, i32 0, i32 0
  %575 = load i32**, i32*** %574, align 8
  %576 = getelementptr inbounds i32*, i32** %575, i64 0
  %577 = load i32*, i32** %576, align 8
  %578 = load i32, i32* %13, align 4
  %579 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %580 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %579, i32 0, i32 2
  %581 = load i32*, i32** %580, align 8
  %582 = getelementptr inbounds i32, i32* %581, i64 0
  %583 = load i32, i32* %582, align 4
  %584 = mul nsw i32 %578, %583
  %585 = sext i32 %584 to i64
  %586 = getelementptr inbounds i32, i32* %577, i64 %585
  %587 = bitcast i32* %586 to i64*
  store i64* %587, i64** %22, align 8
  store i32 0, i32* %12, align 4
  br label %588

588:                                              ; preds = %660, %557
  %589 = load i32, i32* %12, align 4
  %590 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %591 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %590, i32 0, i32 3
  %592 = load i32, i32* %591, align 8
  %593 = icmp slt i32 %589, %592
  br i1 %593, label %594, label %663

594:                                              ; preds = %588
  store i32 0, i32* %14, align 4
  br label %595

595:                                              ; preds = %623, %594
  %596 = load i32, i32* %14, align 4
  %597 = icmp slt i32 %596, 3
  br i1 %597, label %598, label %626

598:                                              ; preds = %595
  %599 = load i32, i32* %14, align 4
  %600 = sext i32 %599 to i64
  %601 = getelementptr inbounds [3 x [256 x i64]], [3 x [256 x i64]]* %11, i64 0, i64 %600
  %602 = load i64*, i64** %21, align 8
  %603 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %604 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %603, i32 0, i32 0
  %605 = load i64*, i64** %604, align 8
  %606 = load i32, i32* %14, align 4
  %607 = sext i32 %606 to i64
  %608 = getelementptr inbounds i64, i64* %605, i64 %607
  %609 = load i64, i64* %608, align 8
  %610 = getelementptr inbounds i64, i64* %602, i64 %609
  %611 = load i64, i64* %610, align 8
  %612 = getelementptr inbounds [256 x i64], [256 x i64]* %601, i64 0, i64 %611
  %613 = load i64, i64* %612, align 8
  %614 = load i64*, i64** %22, align 8
  %615 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %616 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %615, i32 0, i32 0
  %617 = load i64*, i64** %616, align 8
  %618 = load i32, i32* %14, align 4
  %619 = sext i32 %618 to i64
  %620 = getelementptr inbounds i64, i64* %617, i64 %619
  %621 = load i64, i64* %620, align 8
  %622 = getelementptr inbounds i64, i64* %614, i64 %621
  store i64 %613, i64* %622, align 8
  br label %623

623:                                              ; preds = %598
  %624 = load i32, i32* %14, align 4
  %625 = add nsw i32 %624, 1
  store i32 %625, i32* %14, align 4
  br label %595

626:                                              ; preds = %595
  %627 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %628 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %627, i32 0, i32 7
  %629 = load i32, i32* %628, align 8
  %630 = icmp eq i32 %629, 4
  br i1 %630, label %631, label %647

631:                                              ; preds = %626
  %632 = load i64*, i64** %21, align 8
  %633 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %634 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %633, i32 0, i32 0
  %635 = load i64*, i64** %634, align 8
  %636 = getelementptr inbounds i64, i64* %635, i64 3
  %637 = load i64, i64* %636, align 8
  %638 = getelementptr inbounds i64, i64* %632, i64 %637
  %639 = load i64, i64* %638, align 8
  %640 = load i64*, i64** %22, align 8
  %641 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %642 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %641, i32 0, i32 0
  %643 = load i64*, i64** %642, align 8
  %644 = getelementptr inbounds i64, i64* %643, i64 3
  %645 = load i64, i64* %644, align 8
  %646 = getelementptr inbounds i64, i64* %640, i64 %645
  store i64 %639, i64* %646, align 8
  br label %647

647:                                              ; preds = %631, %626
  %648 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %649 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %648, i32 0, i32 8
  %650 = load i32, i32* %649, align 4
  %651 = load i64*, i64** %21, align 8
  %652 = sext i32 %650 to i64
  %653 = getelementptr inbounds i64, i64* %651, i64 %652
  store i64* %653, i64** %21, align 8
  %654 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %655 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %654, i32 0, i32 8
  %656 = load i32, i32* %655, align 4
  %657 = load i64*, i64** %22, align 8
  %658 = sext i32 %656 to i64
  %659 = getelementptr inbounds i64, i64* %657, i64 %658
  store i64* %659, i64** %22, align 8
  br label %660

660:                                              ; preds = %647
  %661 = load i32, i32* %12, align 4
  %662 = add nsw i32 %661, 1
  store i32 %662, i32* %12, align 4
  br label %588

663:                                              ; preds = %588
  br label %664

664:                                              ; preds = %663
  %665 = load i32, i32* %13, align 4
  %666 = add nsw i32 %665, 1
  store i32 %666, i32* %13, align 4
  br label %551

667:                                              ; preds = %551
  %668 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %669 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %668, i32 0, i32 1
  %670 = load i32, i32* %669, align 8
  %671 = add nsw i32 %670, 1
  store i32 %671, i32* %669, align 8
  ret void
}

declare dso_local i8* @FFMIN(i32, i32) #1

declare dso_local i8* @FFMAX(i32, i64) #1

declare dso_local float @FFMIN3(float, float, float) #1

declare dso_local float @FFMAX3(float, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
