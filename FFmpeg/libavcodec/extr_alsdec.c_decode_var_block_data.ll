; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_alsdec.c_decode_var_block_data.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_alsdec.c_decode_var_block_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i64*, i64, i64, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_8__*)* @decode_var_block_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_var_block_data(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %5, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %9, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %12, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %13, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 4
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %14, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 4
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %45, i64 %49
  store i32* %50, i32** %15, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** %16, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 13
  %56 = load i64*, i64** %55, align 8
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %127

59:                                               ; preds = %2
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 5
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %63, 2
  %65 = call i32 @FFMAX(i32 %64, i32 0)
  store i32 %65, i32* %17, align 4
  br label %66

66:                                               ; preds = %123, %59
  %67 = load i32, i32* %17, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ult i32 %67, %68
  br i1 %69, label %70, label %126

70:                                               ; preds = %66
  %71 = load i32, i32* %17, align 4
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 5
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 %71, %75
  store i32 %76, i32* %18, align 4
  %77 = load i32, i32* %18, align 4
  %78 = sub nsw i32 %77, 2
  %79 = call i32 @FFMAX(i32 0, i32 %78)
  store i32 %79, i32* %19, align 4
  %80 = load i32, i32* %18, align 4
  %81 = add nsw i32 %80, 3
  store i32 %81, i32* %20, align 4
  %82 = load i32, i32* %20, align 4
  %83 = load i32, i32* %19, align 4
  %84 = sub nsw i32 %82, %83
  %85 = sub nsw i32 5, %84
  store i32 %85, i32* %21, align 4
  store i32 64, i32* %11, align 4
  %86 = load i32, i32* %19, align 4
  store i32 %86, i32* %22, align 4
  br label %87

87:                                               ; preds = %109, %70
  %88 = load i32, i32* %22, align 4
  %89 = load i32, i32* %20, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %114

91:                                               ; preds = %87
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 6
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %21, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** %14, align 8
  %100 = load i32, i32* %22, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @MUL64(i32 %98, i32 %103)
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %106, %104
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %11, align 4
  br label %109

109:                                              ; preds = %91
  %110 = load i32, i32* %22, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %22, align 4
  %112 = load i32, i32* %21, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %21, align 4
  br label %87

114:                                              ; preds = %87
  %115 = load i32, i32* %11, align 4
  %116 = ashr i32 %115, 7
  %117 = load i32*, i32** %14, align 8
  %118 = load i32, i32* %17, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, %116
  store i32 %122, i32* %120, align 4
  br label %123

123:                                              ; preds = %114
  %124 = load i32, i32* %17, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %17, align 4
  br label %66

126:                                              ; preds = %66
  br label %127

127:                                              ; preds = %126, %2
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 12
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %180

132:                                              ; preds = %127
  store i32 0, i32* %7, align 4
  br label %133

133:                                              ; preds = %176, %132
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* %6, align 4
  %137 = call i32 @FFMIN(i32 %135, i32 %136)
  %138 = icmp ult i32 %134, %137
  br i1 %138, label %139, label %179

139:                                              ; preds = %133
  store i32 524288, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %140

140:                                              ; preds = %162, %139
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* %7, align 4
  %143 = icmp ult i32 %141, %142
  br i1 %143, label %144, label %165

144:                                              ; preds = %140
  %145 = load i32*, i32** %13, align 8
  %146 = load i32, i32* %10, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load i32*, i32** %14, align 8
  %151 = load i32, i32* %10, align 4
  %152 = add nsw i32 %151, 1
  %153 = sub nsw i32 0, %152
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %150, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = call i64 @MUL64(i32 %149, i32 %156)
  %158 = load i32, i32* %11, align 4
  %159 = sext i32 %158 to i64
  %160 = add nsw i64 %159, %157
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %11, align 4
  br label %162

162:                                              ; preds = %144
  %163 = load i32, i32* %10, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %10, align 4
  br label %140

165:                                              ; preds = %140
  %166 = load i32, i32* %11, align 4
  %167 = ashr i32 %166, 20
  %168 = load i32*, i32** %14, align 8
  %169 = getelementptr inbounds i32, i32* %168, i32 1
  store i32* %169, i32** %14, align 8
  %170 = load i32, i32* %168, align 4
  %171 = sub nsw i32 %170, %167
  store i32 %171, i32* %168, align 4
  %172 = load i32, i32* %7, align 4
  %173 = load i32*, i32** %12, align 8
  %174 = load i32*, i32** %13, align 8
  %175 = call i32 @parcor_to_lpc(i32 %172, i32* %173, i32* %174)
  br label %176

176:                                              ; preds = %165
  %177 = load i32, i32* %7, align 4
  %178 = add i32 %177, 1
  store i32 %178, i32* %7, align 4
  br label %133

179:                                              ; preds = %133
  br label %301

180:                                              ; preds = %127
  store i32 0, i32* %8, align 4
  br label %181

181:                                              ; preds = %190, %180
  %182 = load i32, i32* %8, align 4
  %183 = load i32, i32* %9, align 4
  %184 = icmp ult i32 %182, %183
  br i1 %184, label %185, label %193

185:                                              ; preds = %181
  %186 = load i32, i32* %8, align 4
  %187 = load i32*, i32** %12, align 8
  %188 = load i32*, i32** %13, align 8
  %189 = call i32 @parcor_to_lpc(i32 %186, i32* %187, i32* %188)
  br label %190

190:                                              ; preds = %185
  %191 = load i32, i32* %8, align 4
  %192 = add i32 %191, 1
  store i32 %192, i32* %8, align 4
  br label %181

193:                                              ; preds = %181
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 10
  %196 = load i64*, i64** %195, align 8
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %217

199:                                              ; preds = %193
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 7
  %202 = load i32*, i32** %201, align 8
  %203 = load i32*, i32** %14, align 8
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = sext i32 %206 to i64
  %208 = sub i64 0, %207
  %209 = getelementptr inbounds i32, i32* %203, i64 %208
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = sext i32 %212 to i64
  %214 = mul i64 4, %213
  %215 = trunc i64 %214 to i32
  %216 = call i32 @memcpy(i32* %202, i32* %209, i32 %215)
  br label %217

217:                                              ; preds = %199, %193
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 11
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %271

222:                                              ; preds = %217
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 8
  %225 = load i32*, i32** %224, align 8
  %226 = icmp ne i32* %225, null
  br i1 %226, label %227, label %271

227:                                              ; preds = %222
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 8
  %230 = load i32*, i32** %229, align 8
  %231 = load i32*, i32** %14, align 8
  %232 = icmp ugt i32* %230, %231
  br i1 %232, label %233, label %238

233:                                              ; preds = %227
  %234 = load i32*, i32** %14, align 8
  store i32* %234, i32** %23, align 8
  %235 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 8
  %237 = load i32*, i32** %236, align 8
  store i32* %237, i32** %24, align 8
  br label %243

238:                                              ; preds = %227
  %239 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 8
  %241 = load i32*, i32** %240, align 8
  store i32* %241, i32** %23, align 8
  %242 = load i32*, i32** %14, align 8
  store i32* %242, i32** %24, align 8
  br label %243

243:                                              ; preds = %238, %233
  store i32 -1, i32* %10, align 4
  br label %244

244:                                              ; preds = %267, %243
  %245 = load i32, i32* %10, align 4
  %246 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = sub nsw i32 0, %248
  %250 = icmp sge i32 %245, %249
  br i1 %250, label %251, label %270

251:                                              ; preds = %244
  %252 = load i32*, i32** %24, align 8
  %253 = load i32, i32* %10, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = load i32*, i32** %23, align 8
  %258 = load i32, i32* %10, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = sub nsw i32 %256, %261
  %263 = load i32*, i32** %14, align 8
  %264 = load i32, i32* %10, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %263, i64 %265
  store i32 %262, i32* %266, align 4
  br label %267

267:                                              ; preds = %251
  %268 = load i32, i32* %10, align 4
  %269 = add nsw i32 %268, -1
  store i32 %269, i32* %10, align 4
  br label %244

270:                                              ; preds = %244
  br label %271

271:                                              ; preds = %270, %222, %217
  %272 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i32 0, i32 9
  %274 = load i32*, i32** %273, align 8
  %275 = load i32, i32* %274, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %300

277:                                              ; preds = %271
  store i32 -1, i32* %10, align 4
  br label %278

278:                                              ; preds = %296, %277
  %279 = load i32, i32* %10, align 4
  %280 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %281 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = sub nsw i32 0, %282
  %284 = icmp sge i32 %279, %283
  br i1 %284, label %285, label %299

285:                                              ; preds = %278
  %286 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %287 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %286, i32 0, i32 9
  %288 = load i32*, i32** %287, align 8
  %289 = load i32, i32* %288, align 4
  %290 = load i32*, i32** %14, align 8
  %291 = load i32, i32* %10, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32, i32* %290, i64 %292
  %294 = load i32, i32* %293, align 4
  %295 = ashr i32 %294, %289
  store i32 %295, i32* %293, align 4
  br label %296

296:                                              ; preds = %285
  %297 = load i32, i32* %10, align 4
  %298 = add nsw i32 %297, -1
  store i32 %298, i32* %10, align 4
  br label %278

299:                                              ; preds = %278
  br label %300

300:                                              ; preds = %299, %271
  br label %301

301:                                              ; preds = %300, %179
  %302 = load i32*, i32** %13, align 8
  %303 = load i32, i32* %9, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32, i32* %302, i64 %304
  store i32* %305, i32** %13, align 8
  store i32 0, i32* %10, align 4
  br label %306

306:                                              ; preds = %322, %301
  %307 = load i32, i32* %10, align 4
  %308 = load i32, i32* %9, align 4
  %309 = icmp slt i32 %307, %308
  br i1 %309, label %310, label %325

310:                                              ; preds = %306
  %311 = load i32*, i32** %13, align 8
  %312 = load i32, i32* %10, align 4
  %313 = add nsw i32 %312, 1
  %314 = sub nsw i32 0, %313
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i32, i32* %311, i64 %315
  %317 = load i32, i32* %316, align 4
  %318 = load i32*, i32** %16, align 8
  %319 = load i32, i32* %10, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32, i32* %318, i64 %320
  store i32 %317, i32* %321, align 4
  br label %322

322:                                              ; preds = %310
  %323 = load i32, i32* %10, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %10, align 4
  br label %306

325:                                              ; preds = %306
  %326 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %327 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %326, i32 0, i32 4
  %328 = load i32*, i32** %327, align 8
  %329 = load i32, i32* %7, align 4
  %330 = zext i32 %329 to i64
  %331 = getelementptr inbounds i32, i32* %328, i64 %330
  store i32* %331, i32** %14, align 8
  %332 = load i32*, i32** %16, align 8
  %333 = load i32, i32* %9, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i32, i32* %332, i64 %334
  store i32* %335, i32** %13, align 8
  br label %336

336:                                              ; preds = %371, %325
  %337 = load i32*, i32** %14, align 8
  %338 = load i32*, i32** %15, align 8
  %339 = icmp ult i32* %337, %338
  br i1 %339, label %340, label %374

340:                                              ; preds = %336
  store i32 524288, i32* %11, align 4
  %341 = load i32, i32* %9, align 4
  %342 = sub nsw i32 0, %341
  store i32 %342, i32* %10, align 4
  br label %343

343:                                              ; preds = %362, %340
  %344 = load i32, i32* %10, align 4
  %345 = icmp slt i32 %344, 0
  br i1 %345, label %346, label %365

346:                                              ; preds = %343
  %347 = load i32*, i32** %13, align 8
  %348 = load i32, i32* %10, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32, i32* %347, i64 %349
  %351 = load i32, i32* %350, align 4
  %352 = load i32*, i32** %14, align 8
  %353 = load i32, i32* %10, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i32, i32* %352, i64 %354
  %356 = load i32, i32* %355, align 4
  %357 = call i64 @MUL64(i32 %351, i32 %356)
  %358 = load i32, i32* %11, align 4
  %359 = sext i32 %358 to i64
  %360 = add nsw i64 %359, %357
  %361 = trunc i64 %360 to i32
  store i32 %361, i32* %11, align 4
  br label %362

362:                                              ; preds = %346
  %363 = load i32, i32* %10, align 4
  %364 = add nsw i32 %363, 1
  store i32 %364, i32* %10, align 4
  br label %343

365:                                              ; preds = %343
  %366 = load i32, i32* %11, align 4
  %367 = ashr i32 %366, 20
  %368 = load i32*, i32** %14, align 8
  %369 = load i32, i32* %368, align 4
  %370 = sub nsw i32 %369, %367
  store i32 %370, i32* %368, align 4
  br label %371

371:                                              ; preds = %365
  %372 = load i32*, i32** %14, align 8
  %373 = getelementptr inbounds i32, i32* %372, i32 1
  store i32* %373, i32** %14, align 8
  br label %336

374:                                              ; preds = %336
  %375 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %376 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %375, i32 0, i32 4
  %377 = load i32*, i32** %376, align 8
  store i32* %377, i32** %14, align 8
  %378 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %379 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %378, i32 0, i32 10
  %380 = load i64*, i64** %379, align 8
  %381 = load i64, i64* %380, align 8
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %383, label %401

383:                                              ; preds = %374
  %384 = load i32*, i32** %14, align 8
  %385 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %386 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 4
  %388 = sext i32 %387 to i64
  %389 = sub i64 0, %388
  %390 = getelementptr inbounds i32, i32* %384, i64 %389
  %391 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %392 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %391, i32 0, i32 7
  %393 = load i32*, i32** %392, align 8
  %394 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %395 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 4
  %397 = sext i32 %396 to i64
  %398 = mul i64 4, %397
  %399 = trunc i64 %398 to i32
  %400 = call i32 @memcpy(i32* %390, i32* %393, i32 %399)
  br label %401

401:                                              ; preds = %383, %374
  ret i32 0
}

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i64 @MUL64(i32, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @parcor_to_lpc(i32, i32*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
