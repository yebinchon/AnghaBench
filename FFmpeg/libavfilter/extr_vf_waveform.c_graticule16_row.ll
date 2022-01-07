; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_waveform.c_graticule16_row.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_waveform.c_graticule16_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, float, i32, i64, i32, i32, i32, i32*, i32, i32, i32 (%struct.TYPE_11__*, i32, i32, i32, float, float, i8*, i32*)*, i64, %struct.TYPE_9__*, i32 (i32*, i32, i32, float, float, i32, i32)*, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i8* }
%struct.TYPE_11__ = type { i32, i32*, i64* }

@PARADE = common dso_local global i64 0, align 8
@STACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_11__*)* @graticule16_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @graticule16_row(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
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
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, 2
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = load float, float* %30, align 4
  store float %31, float* %6, align 4
  %32 = load float, float* %6, align 4
  %33 = fpext float %32 to double
  %34 = fsub double 1.000000e+00, %33
  %35 = fptrunc double %34 to float
  store float %35, float* %7, align 4
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = sdiv i32 %38, 256
  store i32 %39, i32* %8, align 4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @PARADE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %2
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = sdiv i32 %48, %51
  br label %57

53:                                               ; preds = %2
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  br label %57

57:                                               ; preds = %53, %45
  %58 = phi i32 [ %52, %45 ], [ %56, %53 ]
  store i32 %58, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %12, align 4
  br label %59

59:                                               ; preds = %299, %57
  %60 = load i32, i32* %12, align 4
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %302

65:                                               ; preds = %59
  %66 = load i32, i32* %12, align 4
  %67 = shl i32 1, %66
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 8
  %71 = and i32 %67, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %65
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %73
  %79 = load i32, i32* %11, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %78, %65
  br label %299

82:                                               ; preds = %78, %73
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %11, align 4
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 14
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  br label %92

90:                                               ; preds = %82
  %91 = load i32, i32* %12, align 4
  br label %92

92:                                               ; preds = %90, %89
  %93 = phi i32 [ 0, %89 ], [ %91, %90 ]
  store i32 %93, i32* %10, align 4
  store i32 0, i32* %13, align 4
  br label %94

94:                                               ; preds = %191, %92
  %95 = load i32, i32* %13, align 4
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %194

100:                                              ; preds = %94
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 7
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %13, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %8, align 4
  %109 = mul nsw i32 %107, %108
  store i32 %109, i32* %17, align 4
  store i32 0, i32* %14, align 4
  br label %110

110:                                              ; preds = %187, %100
  %111 = load i32, i32* %14, align 4
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 8
  %114 = load i32, i32* %113, align 8
  %115 = icmp slt i32 %111, %114
  br i1 %115, label %116, label %190

116:                                              ; preds = %110
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 12
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %118, align 8
  %120 = load i32, i32* %14, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %123, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  store i32 %129, i32* %18, align 4
  %130 = load i32, i32* %15, align 4
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 11
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %116
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 9
  %138 = load i32, i32* %137, align 4
  %139 = sub nsw i32 %138, 1
  %140 = load i32, i32* %18, align 4
  %141 = sub nsw i32 %139, %140
  br label %144

142:                                              ; preds = %116
  %143 = load i32, i32* %18, align 4
  br label %144

144:                                              ; preds = %142, %135
  %145 = phi i32 [ %141, %135 ], [ %143, %142 ]
  %146 = add nsw i32 %130, %145
  store i32 %146, i32* %19, align 4
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 2
  %149 = load i64*, i64** %148, align 8
  %150 = load i32, i32* %13, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i64, i64* %149, i64 %151
  %153 = load i64, i64* %152, align 8
  %154 = load i32, i32* %16, align 4
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %13, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = mul nsw i32 %154, %161
  %163 = sext i32 %162 to i64
  %164 = add nsw i64 %153, %163
  %165 = inttoptr i64 %164 to i32*
  %166 = load i32, i32* %19, align 4
  %167 = mul nsw i32 %166, 2
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %165, i64 %168
  store i32* %169, i32** %20, align 8
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 13
  %172 = load i32 (i32*, i32, i32, float, float, i32, i32)*, i32 (i32*, i32, i32, float, float, i32, i32)** %171, align 8
  %173 = load i32*, i32** %20, align 8
  %174 = load i32, i32* %9, align 4
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %13, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = load float, float* %6, align 4
  %183 = load float, float* %7, align 4
  %184 = load i32, i32* %17, align 4
  %185 = load i32, i32* %5, align 4
  %186 = call i32 %172(i32* %173, i32 %174, i32 %181, float %182, float %183, i32 %184, i32 %185)
  br label %187

187:                                              ; preds = %144
  %188 = load i32, i32* %14, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %14, align 4
  br label %110

190:                                              ; preds = %110
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %13, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %13, align 4
  br label %94

194:                                              ; preds = %94
  store i32 0, i32* %14, align 4
  br label %195

195:                                              ; preds = %273, %194
  %196 = load i32, i32* %14, align 4
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 8
  %199 = load i32, i32* %198, align 8
  %200 = icmp slt i32 %196, %199
  br i1 %200, label %201, label %207

201:                                              ; preds = %195
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = and i32 %204, 1
  %206 = icmp ne i32 %205, 0
  br label %207

207:                                              ; preds = %201, %195
  %208 = phi i1 [ false, %195 ], [ %206, %201 ]
  br i1 %208, label %209, label %276

209:                                              ; preds = %207
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 12
  %212 = load %struct.TYPE_9__*, %struct.TYPE_9__** %211, align 8
  %213 = load i32, i32* %14, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 0
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %216, align 8
  %218 = load i32, i32* %10, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 1
  %222 = load i8*, i8** %221, align 8
  store i8* %222, i8** %21, align 8
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 12
  %225 = load %struct.TYPE_9__*, %struct.TYPE_9__** %224, align 8
  %226 = load i32, i32* %14, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 0
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** %229, align 8
  %231 = load i32, i32* %10, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  store i32 %235, i32* %22, align 4
  %236 = load i32, i32* %15, align 4
  %237 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i32 0, i32 11
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %248

241:                                              ; preds = %209
  %242 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %242, i32 0, i32 9
  %244 = load i32, i32* %243, align 4
  %245 = sub nsw i32 %244, 1
  %246 = load i32, i32* %22, align 4
  %247 = sub nsw i32 %245, %246
  br label %250

248:                                              ; preds = %209
  %249 = load i32, i32* %22, align 4
  br label %250

250:                                              ; preds = %248, %241
  %251 = phi i32 [ %247, %241 ], [ %249, %248 ]
  %252 = add nsw i32 %236, %251
  %253 = sub nsw i32 %252, 10
  store i32 %253, i32* %23, align 4
  %254 = load i32, i32* %23, align 4
  %255 = icmp slt i32 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %250
  store i32 4, i32* %23, align 4
  br label %257

257:                                              ; preds = %256, %250
  %258 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %259 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %258, i32 0, i32 10
  %260 = load i32 (%struct.TYPE_11__*, i32, i32, i32, float, float, i8*, i32*)*, i32 (%struct.TYPE_11__*, i32, i32, i32, float, float, i8*, i32*)** %259, align 8
  %261 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %262 = load i32, i32* %23, align 4
  %263 = load i32, i32* %16, align 4
  %264 = add nsw i32 %263, 2
  %265 = load i32, i32* %8, align 4
  %266 = load float, float* %6, align 4
  %267 = load float, float* %7, align 4
  %268 = load i8*, i8** %21, align 8
  %269 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %269, i32 0, i32 7
  %271 = load i32*, i32** %270, align 8
  %272 = call i32 %260(%struct.TYPE_11__* %261, i32 %262, i32 %264, i32 %265, float %266, float %267, i8* %268, i32* %271)
  br label %273

273:                                              ; preds = %257
  %274 = load i32, i32* %14, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %14, align 4
  br label %195

276:                                              ; preds = %207
  %277 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %278 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %277, i32 0, i32 9
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %281 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %280, i32 0, i32 3
  %282 = load i64, i64* %281, align 8
  %283 = load i64, i64* @STACK, align 8
  %284 = icmp eq i64 %282, %283
  %285 = zext i1 %284 to i32
  %286 = mul nsw i32 %279, %285
  %287 = load i32, i32* %15, align 4
  %288 = add nsw i32 %287, %286
  store i32 %288, i32* %15, align 4
  %289 = load i32, i32* %9, align 4
  %290 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %291 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %290, i32 0, i32 3
  %292 = load i64, i64* %291, align 8
  %293 = load i64, i64* @PARADE, align 8
  %294 = icmp eq i64 %292, %293
  %295 = zext i1 %294 to i32
  %296 = mul nsw i32 %289, %295
  %297 = load i32, i32* %16, align 4
  %298 = add nsw i32 %297, %296
  store i32 %298, i32* %16, align 4
  br label %299

299:                                              ; preds = %276, %81
  %300 = load i32, i32* %12, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %12, align 4
  br label %59

302:                                              ; preds = %59
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
