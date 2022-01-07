; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wavpack.c_wv_get_value.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wavpack.c_wv_get_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i64, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32*, i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"k %d is too large\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Too few bits (%d) left\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i32, i32*)* @wv_get_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wv_get_value(%struct.TYPE_6__* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_5__*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 6
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 %22
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %16, align 8
  %24 = load i32*, i32** %9, align 8
  store i32 0, i32* %24, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 6
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ult i32 %32, 2
  br i1 %33, label %34, label %145

34:                                               ; preds = %4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 6
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ult i32 %42, 2
  br i1 %43, label %44, label %145

44:                                               ; preds = %34
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %145, label %49

49:                                               ; preds = %44
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %145, label %54

54:                                               ; preds = %49
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %80

59:                                               ; preds = %54
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %61, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %59
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @LEVEL_DECAY(i32 %71)
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = sub nsw i64 %76, %72
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %74, align 4
  store i32 0, i32* %5, align 4
  br label %400

79:                                               ; preds = %59
  br label %144

80:                                               ; preds = %54
  %81 = load i32*, i32** %7, align 8
  %82 = call i32 @get_unary_0_33(i32* %81)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp sge i32 %83, 2
  br i1 %84, label %85, label %104

85:                                               ; preds = %80
  %86 = load i32, i32* %10, align 4
  %87 = icmp sge i32 %86, 32
  br i1 %87, label %94, label %88

88:                                               ; preds = %85
  %89 = load i32*, i32** %7, align 8
  %90 = call i32 @get_bits_left(i32* %89)
  %91 = load i32, i32* %10, align 4
  %92 = sub nsw i32 %91, 1
  %93 = icmp slt i32 %90, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %88, %85
  br label %386

95:                                               ; preds = %88
  %96 = load i32*, i32** %7, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sub nsw i32 %97, 1
  %99 = call i32 @get_bits_long(i32* %96, i32 %98)
  %100 = load i32, i32* %10, align 4
  %101 = sub nsw i32 %100, 1
  %102 = shl i32 1, %101
  %103 = or i32 %99, %102
  store i32 %103, i32* %10, align 4
  br label %110

104:                                              ; preds = %80
  %105 = load i32*, i32** %7, align 8
  %106 = call i32 @get_bits_left(i32* %105)
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  br label %386

109:                                              ; preds = %104
  br label %110

110:                                              ; preds = %109, %95
  %111 = load i32, i32* %10, align 4
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 8
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %143

118:                                              ; preds = %110
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 6
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i64 0
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = call i32 @memset(i32* %124, i32 0, i32 8)
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 6
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i64 1
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = call i32 @memset(i32* %131, i32 0, i32 8)
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = call i64 @LEVEL_DECAY(i32 %135)
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = sext i32 %139 to i64
  %141 = sub nsw i64 %140, %136
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %138, align 4
  store i32 0, i32* %5, align 4
  br label %400

143:                                              ; preds = %110
  br label %144

144:                                              ; preds = %143, %79
  br label %145

145:                                              ; preds = %144, %49, %44, %34, %4
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %145
  store i32 0, i32* %10, align 4
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  store i32 0, i32* %152, align 8
  br label %228

153:                                              ; preds = %145
  %154 = load i32*, i32** %7, align 8
  %155 = call i32 @get_unary_0_33(i32* %154)
  store i32 %155, i32* %10, align 4
  %156 = load i32*, i32** %7, align 8
  %157 = call i32 @get_bits_left(i32* %156)
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %153
  br label %386

160:                                              ; preds = %153
  %161 = load i32, i32* %10, align 4
  %162 = icmp eq i32 %161, 16
  br i1 %162, label %163, label %199

163:                                              ; preds = %160
  %164 = load i32*, i32** %7, align 8
  %165 = call i32 @get_unary_0_33(i32* %164)
  store i32 %165, i32* %11, align 4
  %166 = load i32, i32* %11, align 4
  %167 = icmp slt i32 %166, 2
  br i1 %167, label %168, label %177

168:                                              ; preds = %163
  %169 = load i32*, i32** %7, align 8
  %170 = call i32 @get_bits_left(i32* %169)
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %168
  br label %386

173:                                              ; preds = %168
  %174 = load i32, i32* %11, align 4
  %175 = load i32, i32* %10, align 4
  %176 = add nsw i32 %175, %174
  store i32 %176, i32* %10, align 4
  br label %198

177:                                              ; preds = %163
  %178 = load i32, i32* %11, align 4
  %179 = icmp sge i32 %178, 32
  br i1 %179, label %186, label %180

180:                                              ; preds = %177
  %181 = load i32*, i32** %7, align 8
  %182 = call i32 @get_bits_left(i32* %181)
  %183 = load i32, i32* %11, align 4
  %184 = sub nsw i32 %183, 1
  %185 = icmp slt i32 %182, %184
  br i1 %185, label %186, label %187

186:                                              ; preds = %180, %177
  br label %386

187:                                              ; preds = %180
  %188 = load i32*, i32** %7, align 8
  %189 = load i32, i32* %11, align 4
  %190 = sub nsw i32 %189, 1
  %191 = call i32 @get_bits_long(i32* %188, i32 %190)
  %192 = load i32, i32* %11, align 4
  %193 = sub nsw i32 %192, 1
  %194 = shl i32 1, %193
  %195 = or i32 %191, %194
  %196 = load i32, i32* %10, align 4
  %197 = add nsw i32 %196, %195
  store i32 %197, i32* %10, align 4
  br label %198

198:                                              ; preds = %187, %173
  br label %199

199:                                              ; preds = %198, %160
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %212

204:                                              ; preds = %199
  %205 = load i32, i32* %10, align 4
  %206 = and i32 %205, 1
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 1
  store i32 %206, i32* %208, align 4
  %209 = load i32, i32* %10, align 4
  %210 = ashr i32 %209, 1
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %10, align 4
  br label %219

212:                                              ; preds = %199
  %213 = load i32, i32* %10, align 4
  %214 = and i32 %213, 1
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 1
  store i32 %214, i32* %216, align 4
  %217 = load i32, i32* %10, align 4
  %218 = ashr i32 %217, 1
  store i32 %218, i32* %10, align 4
  br label %219

219:                                              ; preds = %212, %204
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = icmp ne i32 %222, 0
  %224 = xor i1 %223, true
  %225 = zext i1 %224 to i32
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 0
  store i32 %225, i32* %227, align 8
  br label %228

228:                                              ; preds = %219, %150
  %229 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 5
  %231 = load i64, i64* %230, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %242

233:                                              ; preds = %228
  %234 = load i32, i32* %8, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %242, label %236

236:                                              ; preds = %233
  %237 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %238 = call i64 @update_error_limit(%struct.TYPE_6__* %237)
  %239 = icmp slt i64 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %236
  br label %386

241:                                              ; preds = %236
  br label %242

242:                                              ; preds = %241, %233, %228
  %243 = load i32, i32* %10, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %249, label %245

245:                                              ; preds = %242
  store i32 0, i32* %13, align 4
  %246 = call i32 @GET_MED(i32 0)
  %247 = sub nsw i32 %246, 1
  store i32 %247, i32* %14, align 4
  %248 = call i32 @DEC_MED(i32 0)
  br label %286

249:                                              ; preds = %242
  %250 = load i32, i32* %10, align 4
  %251 = icmp eq i32 %250, 1
  br i1 %251, label %252, label %258

252:                                              ; preds = %249
  %253 = call i32 @GET_MED(i32 0)
  store i32 %253, i32* %13, align 4
  %254 = call i32 @GET_MED(i32 1)
  %255 = sub nsw i32 %254, 1
  store i32 %255, i32* %14, align 4
  %256 = call i32 @INC_MED(i32 0)
  %257 = call i32 @DEC_MED(i32 1)
  br label %285

258:                                              ; preds = %249
  %259 = load i32, i32* %10, align 4
  %260 = icmp eq i32 %259, 2
  br i1 %260, label %261, label %270

261:                                              ; preds = %258
  %262 = call i32 @GET_MED(i32 0)
  %263 = call i32 @GET_MED(i32 1)
  %264 = add nsw i32 %262, %263
  store i32 %264, i32* %13, align 4
  %265 = call i32 @GET_MED(i32 2)
  %266 = sub nsw i32 %265, 1
  store i32 %266, i32* %14, align 4
  %267 = call i32 @INC_MED(i32 0)
  %268 = call i32 @INC_MED(i32 1)
  %269 = call i32 @DEC_MED(i32 2)
  br label %284

270:                                              ; preds = %258
  %271 = call i32 @GET_MED(i32 0)
  %272 = call i32 @GET_MED(i32 1)
  %273 = add nsw i32 %271, %272
  %274 = call i32 @GET_MED(i32 2)
  %275 = load i32, i32* %10, align 4
  %276 = sub i32 %275, 2
  %277 = mul i32 %274, %276
  %278 = add i32 %273, %277
  store i32 %278, i32* %13, align 4
  %279 = call i32 @GET_MED(i32 2)
  %280 = sub nsw i32 %279, 1
  store i32 %280, i32* %14, align 4
  %281 = call i32 @INC_MED(i32 0)
  %282 = call i32 @INC_MED(i32 1)
  %283 = call i32 @INC_MED(i32 2)
  br label %284

284:                                              ; preds = %270, %261
  br label %285

285:                                              ; preds = %284, %252
  br label %286

286:                                              ; preds = %285, %245
  %287 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %288 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 8
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %312, label %291

291:                                              ; preds = %286
  %292 = load i32, i32* %14, align 4
  %293 = icmp uge i32 %292, 33554432
  br i1 %293, label %294, label %301

294:                                              ; preds = %291
  %295 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %296 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %295, i32 0, i32 3
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* @AV_LOG_ERROR, align 4
  %299 = load i32, i32* %14, align 4
  %300 = call i32 @av_log(i32 %297, i32 %298, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %299)
  br label %386

301:                                              ; preds = %291
  %302 = load i32, i32* %13, align 4
  %303 = load i32*, i32** %7, align 8
  %304 = load i32, i32* %14, align 4
  %305 = call i32 @get_tail(i32* %303, i32 %304)
  %306 = add nsw i32 %302, %305
  store i32 %306, i32* %15, align 4
  %307 = load i32*, i32** %7, align 8
  %308 = call i32 @get_bits_left(i32* %307)
  %309 = icmp sle i32 %308, 0
  br i1 %309, label %310, label %311

310:                                              ; preds = %301
  br label %386

311:                                              ; preds = %301
  br label %355

312:                                              ; preds = %286
  %313 = load i32, i32* %13, align 4
  %314 = mul i32 %313, 2
  %315 = load i32, i32* %14, align 4
  %316 = add i32 %314, %315
  %317 = add i32 %316, 1
  %318 = lshr i32 %317, 1
  store i32 %318, i32* %17, align 4
  br label %319

319:                                              ; preds = %346, %312
  %320 = load i32, i32* %14, align 4
  %321 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %322 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 8
  %324 = icmp sgt i32 %320, %323
  br i1 %324, label %325, label %353

325:                                              ; preds = %319
  %326 = load i32*, i32** %7, align 8
  %327 = call i32 @get_bits_left(i32* %326)
  %328 = icmp sle i32 %327, 0
  br i1 %328, label %329, label %330

329:                                              ; preds = %325
  br label %386

330:                                              ; preds = %325
  %331 = load i32*, i32** %7, align 8
  %332 = call i32 @get_bits1(i32* %331)
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %341

334:                                              ; preds = %330
  %335 = load i32, i32* %17, align 4
  %336 = load i32, i32* %13, align 4
  %337 = sub i32 %335, %336
  %338 = load i32, i32* %14, align 4
  %339 = sub i32 %338, %337
  store i32 %339, i32* %14, align 4
  %340 = load i32, i32* %17, align 4
  store i32 %340, i32* %13, align 4
  br label %346

341:                                              ; preds = %330
  %342 = load i32, i32* %17, align 4
  %343 = load i32, i32* %13, align 4
  %344 = sub i32 %342, %343
  %345 = sub i32 %344, 1
  store i32 %345, i32* %14, align 4
  br label %346

346:                                              ; preds = %341, %334
  %347 = load i32, i32* %13, align 4
  %348 = mul i32 %347, 2
  %349 = load i32, i32* %14, align 4
  %350 = add i32 %348, %349
  %351 = add i32 %350, 1
  %352 = lshr i32 %351, 1
  store i32 %352, i32* %17, align 4
  br label %319

353:                                              ; preds = %319
  %354 = load i32, i32* %17, align 4
  store i32 %354, i32* %15, align 4
  br label %355

355:                                              ; preds = %353, %311
  %356 = load i32*, i32** %7, align 8
  %357 = call i32 @get_bits1(i32* %356)
  store i32 %357, i32* %12, align 4
  %358 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %359 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %358, i32 0, i32 4
  %360 = load i64, i64* %359, align 8
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %376

362:                                              ; preds = %355
  %363 = load i32, i32* %15, align 4
  %364 = call i64 @wp_log2(i32 %363)
  %365 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %366 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %365, i32 0, i32 2
  %367 = load i32, i32* %366, align 4
  %368 = call i64 @LEVEL_DECAY(i32 %367)
  %369 = sub nsw i64 %364, %368
  %370 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %371 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %370, i32 0, i32 2
  %372 = load i32, i32* %371, align 4
  %373 = sext i32 %372 to i64
  %374 = add nsw i64 %373, %369
  %375 = trunc i64 %374 to i32
  store i32 %375, i32* %371, align 4
  br label %376

376:                                              ; preds = %362, %355
  %377 = load i32, i32* %12, align 4
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %382

379:                                              ; preds = %376
  %380 = load i32, i32* %15, align 4
  %381 = xor i32 %380, -1
  br label %384

382:                                              ; preds = %376
  %383 = load i32, i32* %15, align 4
  br label %384

384:                                              ; preds = %382, %379
  %385 = phi i32 [ %381, %379 ], [ %383, %382 ]
  store i32 %385, i32* %5, align 4
  br label %400

386:                                              ; preds = %329, %310, %294, %240, %186, %172, %159, %108, %94
  %387 = load i32*, i32** %7, align 8
  %388 = call i32 @get_bits_left(i32* %387)
  store i32 %388, i32* %15, align 4
  %389 = load i32, i32* %15, align 4
  %390 = icmp sle i32 %389, 0
  br i1 %390, label %391, label %398

391:                                              ; preds = %386
  %392 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %393 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %392, i32 0, i32 3
  %394 = load i32, i32* %393, align 4
  %395 = load i32, i32* @AV_LOG_ERROR, align 4
  %396 = load i32, i32* %15, align 4
  %397 = call i32 @av_log(i32 %394, i32 %395, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %396)
  br label %398

398:                                              ; preds = %391, %386
  %399 = load i32*, i32** %9, align 8
  store i32 1, i32* %399, align 4
  store i32 0, i32* %5, align 4
  br label %400

400:                                              ; preds = %398, %384, %118, %68
  %401 = load i32, i32* %5, align 4
  ret i32 %401
}

declare dso_local i64 @LEVEL_DECAY(i32) #1

declare dso_local i32 @get_unary_0_33(i32*) #1

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local i32 @get_bits_long(i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @update_error_limit(%struct.TYPE_6__*) #1

declare dso_local i32 @GET_MED(i32) #1

declare dso_local i32 @DEC_MED(i32) #1

declare dso_local i32 @INC_MED(i32) #1

declare dso_local i32 @av_log(i32, i32, i8*, i32) #1

declare dso_local i32 @get_tail(i32*, i32) #1

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i64 @wp_log2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
