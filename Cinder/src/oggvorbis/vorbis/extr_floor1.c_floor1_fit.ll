; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_floor1.c_floor1_fit.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_floor1.c_floor1_fit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64*, i32*, i32*, i32*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32* }

@VIF_POSIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @floor1_fit(i32* %0, %struct.TYPE_7__* %1, float* %2, float* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store float* %2, float** %7, align 8
  store float* %3, float** %8, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 6
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  store %struct.TYPE_8__* %50, %struct.TYPE_8__** %11, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %12, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %57 = load i32, i32* @VIF_POSIT, align 4
  %58 = add nsw i32 %57, 1
  %59 = zext i32 %58 to i64
  %60 = call i8* @llvm.stacksave()
  store i8* %60, i8** %15, align 8
  %61 = alloca i32, i64 %59, align 16
  store i64 %59, i64* %16, align 8
  %62 = load i32, i32* @VIF_POSIT, align 4
  %63 = add nsw i32 %62, 2
  %64 = zext i32 %63 to i64
  %65 = alloca i32, i64 %64, align 16
  store i64 %64, i64* %17, align 8
  %66 = load i32, i32* @VIF_POSIT, align 4
  %67 = add nsw i32 %66, 2
  %68 = zext i32 %67 to i64
  %69 = alloca i32, i64 %68, align 16
  store i64 %68, i64* %18, align 8
  %70 = load i32, i32* @VIF_POSIT, align 4
  %71 = add nsw i32 %70, 2
  %72 = zext i32 %71 to i64
  %73 = alloca i32, i64 %72, align 16
  store i64 %72, i64* %19, align 8
  %74 = load i32, i32* @VIF_POSIT, align 4
  %75 = add nsw i32 %74, 2
  %76 = zext i32 %75 to i64
  %77 = alloca i32, i64 %76, align 16
  store i64 %76, i64* %20, align 8
  store i32* null, i32** %21, align 8
  %78 = load i32, i32* @VIF_POSIT, align 4
  %79 = add nsw i32 %78, 2
  %80 = zext i32 %79 to i64
  %81 = alloca i32, i64 %80, align 16
  store i64 %80, i64* %22, align 8
  store i64 0, i64* %9, align 8
  br label %82

82:                                               ; preds = %89, %4
  %83 = load i64, i64* %9, align 8
  %84 = load i64, i64* %13, align 8
  %85 = icmp slt i64 %83, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %82
  %87 = load i64, i64* %9, align 8
  %88 = getelementptr inbounds i32, i32* %65, i64 %87
  store i32 -200, i32* %88, align 4
  br label %89

89:                                               ; preds = %86
  %90 = load i64, i64* %9, align 8
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* %9, align 8
  br label %82

92:                                               ; preds = %82
  store i64 0, i64* %9, align 8
  br label %93

93:                                               ; preds = %100, %92
  %94 = load i64, i64* %9, align 8
  %95 = load i64, i64* %13, align 8
  %96 = icmp slt i64 %94, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %93
  %98 = load i64, i64* %9, align 8
  %99 = getelementptr inbounds i32, i32* %69, i64 %98
  store i32 -200, i32* %99, align 4
  br label %100

100:                                              ; preds = %97
  %101 = load i64, i64* %9, align 8
  %102 = add nsw i64 %101, 1
  store i64 %102, i64* %9, align 8
  br label %93

103:                                              ; preds = %93
  store i64 0, i64* %9, align 8
  br label %104

104:                                              ; preds = %111, %103
  %105 = load i64, i64* %9, align 8
  %106 = load i64, i64* %13, align 8
  %107 = icmp slt i64 %105, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %104
  %109 = load i64, i64* %9, align 8
  %110 = getelementptr inbounds i32, i32* %73, i64 %109
  store i32 0, i32* %110, align 4
  br label %111

111:                                              ; preds = %108
  %112 = load i64, i64* %9, align 8
  %113 = add nsw i64 %112, 1
  store i64 %113, i64* %9, align 8
  br label %104

114:                                              ; preds = %104
  store i64 0, i64* %9, align 8
  br label %115

115:                                              ; preds = %122, %114
  %116 = load i64, i64* %9, align 8
  %117 = load i64, i64* %13, align 8
  %118 = icmp slt i64 %116, %117
  br i1 %118, label %119, label %125

119:                                              ; preds = %115
  %120 = load i64, i64* %9, align 8
  %121 = getelementptr inbounds i32, i32* %77, i64 %120
  store i32 1, i32* %121, align 4
  br label %122

122:                                              ; preds = %119
  %123 = load i64, i64* %9, align 8
  %124 = add nsw i64 %123, 1
  store i64 %124, i64* %9, align 8
  br label %115

125:                                              ; preds = %115
  store i64 0, i64* %9, align 8
  br label %126

126:                                              ; preds = %133, %125
  %127 = load i64, i64* %9, align 8
  %128 = load i64, i64* %13, align 8
  %129 = icmp slt i64 %127, %128
  br i1 %129, label %130, label %136

130:                                              ; preds = %126
  %131 = load i64, i64* %9, align 8
  %132 = getelementptr inbounds i32, i32* %81, i64 %131
  store i32 -1, i32* %132, align 4
  br label %133

133:                                              ; preds = %130
  %134 = load i64, i64* %9, align 8
  %135 = add nsw i64 %134, 1
  store i64 %135, i64* %9, align 8
  br label %126

136:                                              ; preds = %126
  %137 = load i64, i64* %13, align 8
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %136
  %140 = load float*, float** %8, align 8
  %141 = load float*, float** %7, align 8
  %142 = load i64, i64* %12, align 8
  %143 = load i64, i64* %12, align 8
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %145 = call i64 @accumulate_fit(float* %140, float* %141, i64 0, i64 %142, i32* %61, i64 %143, %struct.TYPE_8__* %144)
  %146 = load i64, i64* %14, align 8
  %147 = add nsw i64 %146, %145
  store i64 %147, i64* %14, align 8
  br label %181

148:                                              ; preds = %136
  store i64 0, i64* %9, align 8
  br label %149

149:                                              ; preds = %177, %148
  %150 = load i64, i64* %9, align 8
  %151 = load i64, i64* %13, align 8
  %152 = sub nsw i64 %151, 1
  %153 = icmp slt i64 %150, %152
  br i1 %153, label %154, label %180

154:                                              ; preds = %149
  %155 = load float*, float** %8, align 8
  %156 = load float*, float** %7, align 8
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 2
  %159 = load i64*, i64** %158, align 8
  %160 = load i64, i64* %9, align 8
  %161 = getelementptr inbounds i64, i64* %159, i64 %160
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 2
  %165 = load i64*, i64** %164, align 8
  %166 = load i64, i64* %9, align 8
  %167 = add nsw i64 %166, 1
  %168 = getelementptr inbounds i64, i64* %165, i64 %167
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* %9, align 8
  %171 = getelementptr inbounds i32, i32* %61, i64 %170
  %172 = load i64, i64* %12, align 8
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %174 = call i64 @accumulate_fit(float* %155, float* %156, i64 %162, i64 %169, i32* %171, i64 %172, %struct.TYPE_8__* %173)
  %175 = load i64, i64* %14, align 8
  %176 = add nsw i64 %175, %174
  store i64 %176, i64* %14, align 8
  br label %177

177:                                              ; preds = %154
  %178 = load i64, i64* %9, align 8
  %179 = add nsw i64 %178, 1
  store i64 %179, i64* %9, align 8
  br label %149

180:                                              ; preds = %149
  br label %181

181:                                              ; preds = %180, %139
  %182 = load i64, i64* %14, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %504

184:                                              ; preds = %181
  store i32 -200, i32* %23, align 4
  store i32 -200, i32* %24, align 4
  %185 = load i64, i64* %13, align 8
  %186 = sub nsw i64 %185, 1
  %187 = trunc i64 %186 to i32
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %189 = call i32 @fit_line(i32* %61, i32 %187, i32* %23, i32* %24, %struct.TYPE_8__* %188)
  %190 = load i32, i32* %23, align 4
  %191 = getelementptr inbounds i32, i32* %65, i64 0
  store i32 %190, i32* %191, align 16
  %192 = load i32, i32* %23, align 4
  %193 = getelementptr inbounds i32, i32* %69, i64 0
  store i32 %192, i32* %193, align 16
  %194 = load i32, i32* %24, align 4
  %195 = getelementptr inbounds i32, i32* %69, i64 1
  store i32 %194, i32* %195, align 4
  %196 = load i32, i32* %24, align 4
  %197 = getelementptr inbounds i32, i32* %65, i64 1
  store i32 %196, i32* %197, align 4
  store i64 2, i64* %9, align 8
  br label %198

198:                                              ; preds = %411, %184
  %199 = load i64, i64* %9, align 8
  %200 = load i64, i64* %13, align 8
  %201 = icmp slt i64 %199, %200
  br i1 %201, label %202, label %414

202:                                              ; preds = %198
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 3
  %205 = load i32*, i32** %204, align 8
  %206 = load i64, i64* %9, align 8
  %207 = getelementptr inbounds i32, i32* %205, i64 %206
  %208 = load i32, i32* %207, align 4
  store i32 %208, i32* %25, align 4
  %209 = load i32, i32* %25, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %73, i64 %210
  %212 = load i32, i32* %211, align 4
  store i32 %212, i32* %26, align 4
  %213 = load i32, i32* %25, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %77, i64 %214
  %216 = load i32, i32* %215, align 4
  store i32 %216, i32* %27, align 4
  %217 = load i32, i32* %26, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %81, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* %27, align 4
  %222 = icmp ne i32 %220, %221
  br i1 %222, label %223, label %410

223:                                              ; preds = %202
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 3
  %226 = load i32*, i32** %225, align 8
  %227 = load i32, i32* %26, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %229, align 4
  store i32 %230, i32* %28, align 4
  %231 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 3
  %233 = load i32*, i32** %232, align 8
  %234 = load i32, i32* %27, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %233, i64 %235
  %237 = load i32, i32* %236, align 4
  store i32 %237, i32* %29, align 4
  %238 = load i32, i32* %27, align 4
  %239 = load i32, i32* %26, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %81, i64 %240
  store i32 %238, i32* %241, align 4
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 0
  %244 = load i32*, i32** %243, align 8
  %245 = load i32, i32* %26, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %244, i64 %246
  %248 = load i32, i32* %247, align 4
  store i32 %248, i32* %30, align 4
  %249 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 0
  %251 = load i32*, i32** %250, align 8
  %252 = load i32, i32* %27, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %251, i64 %253
  %255 = load i32, i32* %254, align 4
  store i32 %255, i32* %31, align 4
  %256 = load i32, i32* %26, align 4
  %257 = sext i32 %256 to i64
  %258 = call i32 @post_Y(i32* %65, i32* %69, i64 %257)
  store i32 %258, i32* %32, align 4
  %259 = load i32, i32* %27, align 4
  %260 = sext i32 %259 to i64
  %261 = call i32 @post_Y(i32* %65, i32* %69, i64 %260)
  store i32 %261, i32* %33, align 4
  %262 = load i32, i32* %32, align 4
  %263 = icmp eq i32 %262, -1
  br i1 %263, label %267, label %264

264:                                              ; preds = %223
  %265 = load i32, i32* %33, align 4
  %266 = icmp eq i32 %265, -1
  br i1 %266, label %267, label %269

267:                                              ; preds = %264, %223
  %268 = call i32 @exit(i32 1) #4
  unreachable

269:                                              ; preds = %264
  %270 = load i32, i32* %30, align 4
  %271 = load i32, i32* %31, align 4
  %272 = load i32, i32* %32, align 4
  %273 = load i32, i32* %33, align 4
  %274 = load float*, float** %8, align 8
  %275 = load float*, float** %7, align 8
  %276 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %277 = call i64 @inspect_error(i32 %270, i32 %271, i32 %272, i32 %273, float* %274, float* %275, %struct.TYPE_8__* %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %404

279:                                              ; preds = %269
  store i32 -200, i32* %34, align 4
  store i32 -200, i32* %35, align 4
  store i32 -200, i32* %36, align 4
  store i32 -200, i32* %37, align 4
  %280 = load i32, i32* %28, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %61, i64 %281
  %283 = load i32, i32* %25, align 4
  %284 = load i32, i32* %28, align 4
  %285 = sub nsw i32 %283, %284
  %286 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %287 = call i32 @fit_line(i32* %282, i32 %285, i32* %34, i32* %35, %struct.TYPE_8__* %286)
  store i32 %287, i32* %38, align 4
  %288 = load i32, i32* %25, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %61, i64 %289
  %291 = load i32, i32* %29, align 4
  %292 = load i32, i32* %25, align 4
  %293 = sub nsw i32 %291, %292
  %294 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %295 = call i32 @fit_line(i32* %290, i32 %293, i32* %36, i32* %37, %struct.TYPE_8__* %294)
  store i32 %295, i32* %39, align 4
  %296 = load i32, i32* %38, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %301

298:                                              ; preds = %279
  %299 = load i32, i32* %32, align 4
  store i32 %299, i32* %34, align 4
  %300 = load i32, i32* %36, align 4
  store i32 %300, i32* %35, align 4
  br label %301

301:                                              ; preds = %298, %279
  %302 = load i32, i32* %39, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %307

304:                                              ; preds = %301
  %305 = load i32, i32* %35, align 4
  store i32 %305, i32* %36, align 4
  %306 = load i32, i32* %33, align 4
  store i32 %306, i32* %37, align 4
  br label %307

307:                                              ; preds = %304, %301
  %308 = load i32, i32* %38, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %318

310:                                              ; preds = %307
  %311 = load i32, i32* %39, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %318

313:                                              ; preds = %310
  %314 = load i64, i64* %9, align 8
  %315 = getelementptr inbounds i32, i32* %65, i64 %314
  store i32 -200, i32* %315, align 4
  %316 = load i64, i64* %9, align 8
  %317 = getelementptr inbounds i32, i32* %69, i64 %316
  store i32 -200, i32* %317, align 4
  br label %403

318:                                              ; preds = %310, %307
  %319 = load i32, i32* %34, align 4
  %320 = load i32, i32* %26, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i32, i32* %69, i64 %321
  store i32 %319, i32* %322, align 4
  %323 = load i32, i32* %26, align 4
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %325, label %330

325:                                              ; preds = %318
  %326 = load i32, i32* %34, align 4
  %327 = load i32, i32* %26, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i32, i32* %65, i64 %328
  store i32 %326, i32* %329, align 4
  br label %330

330:                                              ; preds = %325, %318
  %331 = load i32, i32* %35, align 4
  %332 = load i64, i64* %9, align 8
  %333 = getelementptr inbounds i32, i32* %65, i64 %332
  store i32 %331, i32* %333, align 4
  %334 = load i32, i32* %36, align 4
  %335 = load i64, i64* %9, align 8
  %336 = getelementptr inbounds i32, i32* %69, i64 %335
  store i32 %334, i32* %336, align 4
  %337 = load i32, i32* %37, align 4
  %338 = load i32, i32* %27, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i32, i32* %65, i64 %339
  store i32 %337, i32* %340, align 4
  %341 = load i32, i32* %27, align 4
  %342 = icmp eq i32 %341, 1
  br i1 %342, label %343, label %348

343:                                              ; preds = %330
  %344 = load i32, i32* %37, align 4
  %345 = load i32, i32* %27, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i32, i32* %69, i64 %346
  store i32 %344, i32* %347, align 4
  br label %348

348:                                              ; preds = %343, %330
  %349 = load i32, i32* %35, align 4
  %350 = icmp sge i32 %349, 0
  br i1 %350, label %354, label %351

351:                                              ; preds = %348
  %352 = load i32, i32* %36, align 4
  %353 = icmp sge i32 %352, 0
  br i1 %353, label %354, label %402

354:                                              ; preds = %351, %348
  %355 = load i32, i32* %25, align 4
  %356 = sub nsw i32 %355, 1
  %357 = sext i32 %356 to i64
  store i64 %357, i64* %10, align 8
  br label %358

358:                                              ; preds = %374, %354
  %359 = load i64, i64* %10, align 8
  %360 = icmp sge i64 %359, 0
  br i1 %360, label %361, label %377

361:                                              ; preds = %358
  %362 = load i64, i64* %10, align 8
  %363 = getelementptr inbounds i32, i32* %77, i64 %362
  %364 = load i32, i32* %363, align 4
  %365 = load i32, i32* %27, align 4
  %366 = icmp eq i32 %364, %365
  br i1 %366, label %367, label %372

367:                                              ; preds = %361
  %368 = load i64, i64* %9, align 8
  %369 = trunc i64 %368 to i32
  %370 = load i64, i64* %10, align 8
  %371 = getelementptr inbounds i32, i32* %77, i64 %370
  store i32 %369, i32* %371, align 4
  br label %373

372:                                              ; preds = %361
  br label %377

373:                                              ; preds = %367
  br label %374

374:                                              ; preds = %373
  %375 = load i64, i64* %10, align 8
  %376 = add nsw i64 %375, -1
  store i64 %376, i64* %10, align 8
  br label %358

377:                                              ; preds = %372, %358
  %378 = load i32, i32* %25, align 4
  %379 = add nsw i32 %378, 1
  %380 = sext i32 %379 to i64
  store i64 %380, i64* %10, align 8
  br label %381

381:                                              ; preds = %398, %377
  %382 = load i64, i64* %10, align 8
  %383 = load i64, i64* %13, align 8
  %384 = icmp slt i64 %382, %383
  br i1 %384, label %385, label %401

385:                                              ; preds = %381
  %386 = load i64, i64* %10, align 8
  %387 = getelementptr inbounds i32, i32* %73, i64 %386
  %388 = load i32, i32* %387, align 4
  %389 = load i32, i32* %26, align 4
  %390 = icmp eq i32 %388, %389
  br i1 %390, label %391, label %396

391:                                              ; preds = %385
  %392 = load i64, i64* %9, align 8
  %393 = trunc i64 %392 to i32
  %394 = load i64, i64* %10, align 8
  %395 = getelementptr inbounds i32, i32* %73, i64 %394
  store i32 %393, i32* %395, align 4
  br label %397

396:                                              ; preds = %385
  br label %401

397:                                              ; preds = %391
  br label %398

398:                                              ; preds = %397
  %399 = load i64, i64* %10, align 8
  %400 = add nsw i64 %399, 1
  store i64 %400, i64* %10, align 8
  br label %381

401:                                              ; preds = %396, %381
  br label %402

402:                                              ; preds = %401, %351
  br label %403

403:                                              ; preds = %402, %313
  br label %409

404:                                              ; preds = %269
  %405 = load i64, i64* %9, align 8
  %406 = getelementptr inbounds i32, i32* %65, i64 %405
  store i32 -200, i32* %406, align 4
  %407 = load i64, i64* %9, align 8
  %408 = getelementptr inbounds i32, i32* %69, i64 %407
  store i32 -200, i32* %408, align 4
  br label %409

409:                                              ; preds = %404, %403
  br label %410

410:                                              ; preds = %409, %202
  br label %411

411:                                              ; preds = %410
  %412 = load i64, i64* %9, align 8
  %413 = add nsw i64 %412, 1
  store i64 %413, i64* %9, align 8
  br label %198

414:                                              ; preds = %198
  %415 = load i32*, i32** %5, align 8
  %416 = load i64, i64* %13, align 8
  %417 = mul i64 4, %416
  %418 = trunc i64 %417 to i32
  %419 = call i32* @_vorbis_block_alloc(i32* %415, i32 %418)
  store i32* %419, i32** %21, align 8
  %420 = call i32 @post_Y(i32* %65, i32* %69, i64 0)
  %421 = load i32*, i32** %21, align 8
  %422 = getelementptr inbounds i32, i32* %421, i64 0
  store i32 %420, i32* %422, align 4
  %423 = call i32 @post_Y(i32* %65, i32* %69, i64 1)
  %424 = load i32*, i32** %21, align 8
  %425 = getelementptr inbounds i32, i32* %424, i64 1
  store i32 %423, i32* %425, align 4
  store i64 2, i64* %9, align 8
  br label %426

426:                                              ; preds = %500, %414
  %427 = load i64, i64* %9, align 8
  %428 = load i64, i64* %13, align 8
  %429 = icmp slt i64 %427, %428
  br i1 %429, label %430, label %503

430:                                              ; preds = %426
  %431 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %432 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %431, i32 0, i32 4
  %433 = load i32*, i32** %432, align 8
  %434 = load i64, i64* %9, align 8
  %435 = sub nsw i64 %434, 2
  %436 = getelementptr inbounds i32, i32* %433, i64 %435
  %437 = load i32, i32* %436, align 4
  store i32 %437, i32* %40, align 4
  %438 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %439 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %438, i32 0, i32 5
  %440 = load i32*, i32** %439, align 8
  %441 = load i64, i64* %9, align 8
  %442 = sub nsw i64 %441, 2
  %443 = getelementptr inbounds i32, i32* %440, i64 %442
  %444 = load i32, i32* %443, align 4
  store i32 %444, i32* %41, align 4
  %445 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %446 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %445, i32 0, i32 0
  %447 = load i32*, i32** %446, align 8
  %448 = load i32, i32* %40, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds i32, i32* %447, i64 %449
  %451 = load i32, i32* %450, align 4
  store i32 %451, i32* %42, align 4
  %452 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %453 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %452, i32 0, i32 0
  %454 = load i32*, i32** %453, align 8
  %455 = load i32, i32* %41, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds i32, i32* %454, i64 %456
  %458 = load i32, i32* %457, align 4
  store i32 %458, i32* %43, align 4
  %459 = load i32*, i32** %21, align 8
  %460 = load i32, i32* %40, align 4
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds i32, i32* %459, i64 %461
  %463 = load i32, i32* %462, align 4
  store i32 %463, i32* %44, align 4
  %464 = load i32*, i32** %21, align 8
  %465 = load i32, i32* %41, align 4
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds i32, i32* %464, i64 %466
  %468 = load i32, i32* %467, align 4
  store i32 %468, i32* %45, align 4
  %469 = load i32, i32* %42, align 4
  %470 = load i32, i32* %43, align 4
  %471 = load i32, i32* %44, align 4
  %472 = load i32, i32* %45, align 4
  %473 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %474 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %473, i32 0, i32 0
  %475 = load i32*, i32** %474, align 8
  %476 = load i64, i64* %9, align 8
  %477 = getelementptr inbounds i32, i32* %475, i64 %476
  %478 = load i32, i32* %477, align 4
  %479 = call i32 @render_point(i32 %469, i32 %470, i32 %471, i32 %472, i32 %478)
  store i32 %479, i32* %46, align 4
  %480 = load i64, i64* %9, align 8
  %481 = call i32 @post_Y(i32* %65, i32* %69, i64 %480)
  store i32 %481, i32* %47, align 4
  %482 = load i32, i32* %47, align 4
  %483 = icmp sge i32 %482, 0
  br i1 %483, label %484, label %493

484:                                              ; preds = %430
  %485 = load i32, i32* %46, align 4
  %486 = load i32, i32* %47, align 4
  %487 = icmp ne i32 %485, %486
  br i1 %487, label %488, label %493

488:                                              ; preds = %484
  %489 = load i32, i32* %47, align 4
  %490 = load i32*, i32** %21, align 8
  %491 = load i64, i64* %9, align 8
  %492 = getelementptr inbounds i32, i32* %490, i64 %491
  store i32 %489, i32* %492, align 4
  br label %499

493:                                              ; preds = %484, %430
  %494 = load i32, i32* %46, align 4
  %495 = or i32 %494, 32768
  %496 = load i32*, i32** %21, align 8
  %497 = load i64, i64* %9, align 8
  %498 = getelementptr inbounds i32, i32* %496, i64 %497
  store i32 %495, i32* %498, align 4
  br label %499

499:                                              ; preds = %493, %488
  br label %500

500:                                              ; preds = %499
  %501 = load i64, i64* %9, align 8
  %502 = add nsw i64 %501, 1
  store i64 %502, i64* %9, align 8
  br label %426

503:                                              ; preds = %426
  br label %504

504:                                              ; preds = %503, %181
  %505 = load i32*, i32** %21, align 8
  %506 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %506)
  ret i32* %505
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @accumulate_fit(float*, float*, i64, i64, i32*, i64, %struct.TYPE_8__*) #2

declare dso_local i32 @fit_line(i32*, i32, i32*, i32*, %struct.TYPE_8__*) #2

declare dso_local i32 @post_Y(i32*, i32*, i64) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i64 @inspect_error(i32, i32, i32, i32, float*, float*, %struct.TYPE_8__*) #2

declare dso_local i32* @_vorbis_block_alloc(i32*, i32) #2

declare dso_local i32 @render_point(i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
