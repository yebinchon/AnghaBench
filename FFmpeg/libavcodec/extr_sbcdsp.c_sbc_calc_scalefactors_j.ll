; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sbcdsp.c_sbc_calc_scalefactors_j.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sbcdsp.c_sbc_calc_scalefactors_j.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCALE_OUT_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ([2 x [8 x i32]]*, [8 x i32]*, i32, i32)* @sbc_calc_scalefactors_j to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbc_calc_scalefactors_j([2 x [8 x i32]]* %0, [8 x i32]* %1, i32 %2, i32 %3) #0 {
  %5 = alloca [2 x [8 x i32]]*, align 8
  %6 = alloca [8 x i32]*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [16 x [2 x i32]], align 16
  store [2 x [8 x i32]]* %0, [2 x [8 x i32]]** %5, align 8
  store [8 x i32]* %1, [8 x i32]** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %17 = load i32, i32* %8, align 4
  %18 = sub nsw i32 %17, 1
  store i32 %18, i32* %15, align 4
  %19 = load i32, i32* @SCALE_OUT_BITS, align 4
  %20 = shl i32 1, %19
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* @SCALE_OUT_BITS, align 4
  %22 = shl i32 1, %21
  store i32 %22, i32* %14, align 4
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %64, %4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %67

27:                                               ; preds = %23
  %28 = load [2 x [8 x i32]]*, [2 x [8 x i32]]** %5, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %28, i64 %30
  %32 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %31, i64 0, i64 0
  %33 = load i32, i32* %15, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %32, i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @FFABS(i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load [2 x [8 x i32]]*, [2 x [8 x i32]]** %5, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %38, i64 %40
  %42 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %41, i64 0, i64 1
  %43 = load i32, i32* %15, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [8 x i32], [8 x i32]* %42, i64 0, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @FFABS(i32 %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %27
  %51 = load i32, i32* %11, align 4
  %52 = sub nsw i32 %51, 1
  %53 = load i32, i32* %13, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %13, align 4
  br label %55

55:                                               ; preds = %50, %27
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load i32, i32* %12, align 4
  %60 = sub nsw i32 %59, 1
  %61 = load i32, i32* %14, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %14, align 4
  br label %63

63:                                               ; preds = %58, %55
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4
  br label %23

67:                                               ; preds = %23
  %68 = load i32, i32* @SCALE_OUT_BITS, align 4
  %69 = sub nsw i32 31, %68
  %70 = load i32, i32* %13, align 4
  %71 = call i32 @ff_clz(i32 %70)
  %72 = sub nsw i32 %69, %71
  %73 = load [8 x i32]*, [8 x i32]** %6, align 8
  %74 = getelementptr inbounds [8 x i32], [8 x i32]* %73, i64 0
  %75 = load i32, i32* %15, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [8 x i32], [8 x i32]* %74, i64 0, i64 %76
  store i32 %72, i32* %77, align 4
  %78 = load i32, i32* @SCALE_OUT_BITS, align 4
  %79 = sub nsw i32 31, %78
  %80 = load i32, i32* %14, align 4
  %81 = call i32 @ff_clz(i32 %80)
  %82 = sub nsw i32 %79, %81
  %83 = load [8 x i32]*, [8 x i32]** %6, align 8
  %84 = getelementptr inbounds [8 x i32], [8 x i32]* %83, i64 1
  %85 = load i32, i32* %15, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [8 x i32], [8 x i32]* %84, i64 0, i64 %86
  store i32 %82, i32* %87, align 4
  br label %88

88:                                               ; preds = %305, %67
  %89 = load i32, i32* %15, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %15, align 4
  %91 = icmp sge i32 %90, 0
  br i1 %91, label %92, label %306

92:                                               ; preds = %88
  %93 = load i32, i32* @SCALE_OUT_BITS, align 4
  %94 = shl i32 1, %93
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* @SCALE_OUT_BITS, align 4
  %96 = shl i32 1, %95
  store i32 %96, i32* %14, align 4
  store i32 0, i32* %9, align 4
  br label %97

97:                                               ; preds = %158, %92
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %161

101:                                              ; preds = %97
  %102 = load [2 x [8 x i32]]*, [2 x [8 x i32]]** %5, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %102, i64 %104
  %106 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %105, i64 0, i64 0
  %107 = load i32, i32* %15, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [8 x i32], [8 x i32]* %106, i64 0, i64 %108
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %11, align 4
  %111 = load [2 x [8 x i32]]*, [2 x [8 x i32]]** %5, align 8
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %111, i64 %113
  %115 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %114, i64 0, i64 1
  %116 = load i32, i32* %15, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [8 x i32], [8 x i32]* %115, i64 0, i64 %117
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %12, align 4
  %120 = load i32, i32* %11, align 4
  %121 = ashr i32 %120, 1
  %122 = load i32, i32* %12, align 4
  %123 = ashr i32 %122, 1
  %124 = add nsw i32 %121, %123
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [16 x [2 x i32]], [16 x [2 x i32]]* %16, i64 0, i64 %126
  %128 = getelementptr inbounds [2 x i32], [2 x i32]* %127, i64 0, i64 0
  store i32 %124, i32* %128, align 8
  %129 = load i32, i32* %11, align 4
  %130 = ashr i32 %129, 1
  %131 = load i32, i32* %12, align 4
  %132 = ashr i32 %131, 1
  %133 = sub nsw i32 %130, %132
  %134 = load i32, i32* %9, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [16 x [2 x i32]], [16 x [2 x i32]]* %16, i64 0, i64 %135
  %137 = getelementptr inbounds [2 x i32], [2 x i32]* %136, i64 0, i64 1
  store i32 %133, i32* %137, align 4
  %138 = load i32, i32* %11, align 4
  %139 = call i32 @FFABS(i32 %138)
  store i32 %139, i32* %11, align 4
  %140 = load i32, i32* %12, align 4
  %141 = call i32 @FFABS(i32 %140)
  store i32 %141, i32* %12, align 4
  %142 = load i32, i32* %11, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %101
  %145 = load i32, i32* %11, align 4
  %146 = sub nsw i32 %145, 1
  %147 = load i32, i32* %13, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %13, align 4
  br label %149

149:                                              ; preds = %144, %101
  %150 = load i32, i32* %12, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %149
  %153 = load i32, i32* %12, align 4
  %154 = sub nsw i32 %153, 1
  %155 = load i32, i32* %14, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %14, align 4
  br label %157

157:                                              ; preds = %152, %149
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %9, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %9, align 4
  br label %97

161:                                              ; preds = %97
  %162 = load i32, i32* @SCALE_OUT_BITS, align 4
  %163 = sub nsw i32 31, %162
  %164 = load i32, i32* %13, align 4
  %165 = call i32 @ff_clz(i32 %164)
  %166 = sub nsw i32 %163, %165
  %167 = load [8 x i32]*, [8 x i32]** %6, align 8
  %168 = getelementptr inbounds [8 x i32], [8 x i32]* %167, i64 0
  %169 = load i32, i32* %15, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [8 x i32], [8 x i32]* %168, i64 0, i64 %170
  store i32 %166, i32* %171, align 4
  %172 = load i32, i32* @SCALE_OUT_BITS, align 4
  %173 = sub nsw i32 31, %172
  %174 = load i32, i32* %14, align 4
  %175 = call i32 @ff_clz(i32 %174)
  %176 = sub nsw i32 %173, %175
  %177 = load [8 x i32]*, [8 x i32]** %6, align 8
  %178 = getelementptr inbounds [8 x i32], [8 x i32]* %177, i64 1
  %179 = load i32, i32* %15, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [8 x i32], [8 x i32]* %178, i64 0, i64 %180
  store i32 %176, i32* %181, align 4
  %182 = load i32, i32* @SCALE_OUT_BITS, align 4
  %183 = shl i32 1, %182
  store i32 %183, i32* %13, align 4
  %184 = load i32, i32* @SCALE_OUT_BITS, align 4
  %185 = shl i32 1, %184
  store i32 %185, i32* %14, align 4
  store i32 0, i32* %9, align 4
  br label %186

186:                                              ; preds = %219, %161
  %187 = load i32, i32* %9, align 4
  %188 = load i32, i32* %7, align 4
  %189 = icmp slt i32 %187, %188
  br i1 %189, label %190, label %222

190:                                              ; preds = %186
  %191 = load i32, i32* %9, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [16 x [2 x i32]], [16 x [2 x i32]]* %16, i64 0, i64 %192
  %194 = getelementptr inbounds [2 x i32], [2 x i32]* %193, i64 0, i64 0
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @FFABS(i32 %195)
  store i32 %196, i32* %11, align 4
  %197 = load i32, i32* %9, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [16 x [2 x i32]], [16 x [2 x i32]]* %16, i64 0, i64 %198
  %200 = getelementptr inbounds [2 x i32], [2 x i32]* %199, i64 0, i64 1
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @FFABS(i32 %201)
  store i32 %202, i32* %12, align 4
  %203 = load i32, i32* %11, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %210

205:                                              ; preds = %190
  %206 = load i32, i32* %11, align 4
  %207 = sub nsw i32 %206, 1
  %208 = load i32, i32* %13, align 4
  %209 = or i32 %208, %207
  store i32 %209, i32* %13, align 4
  br label %210

210:                                              ; preds = %205, %190
  %211 = load i32, i32* %12, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %218

213:                                              ; preds = %210
  %214 = load i32, i32* %12, align 4
  %215 = sub nsw i32 %214, 1
  %216 = load i32, i32* %14, align 4
  %217 = or i32 %216, %215
  store i32 %217, i32* %14, align 4
  br label %218

218:                                              ; preds = %213, %210
  br label %219

219:                                              ; preds = %218
  %220 = load i32, i32* %9, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %9, align 4
  br label %186

222:                                              ; preds = %186
  %223 = load i32, i32* @SCALE_OUT_BITS, align 4
  %224 = sub nsw i32 31, %223
  %225 = load i32, i32* %13, align 4
  %226 = call i32 @ff_clz(i32 %225)
  %227 = sub nsw i32 %224, %226
  store i32 %227, i32* %13, align 4
  %228 = load i32, i32* @SCALE_OUT_BITS, align 4
  %229 = sub nsw i32 31, %228
  %230 = load i32, i32* %14, align 4
  %231 = call i32 @ff_clz(i32 %230)
  %232 = sub nsw i32 %229, %231
  store i32 %232, i32* %14, align 4
  %233 = load [8 x i32]*, [8 x i32]** %6, align 8
  %234 = getelementptr inbounds [8 x i32], [8 x i32]* %233, i64 0
  %235 = load i32, i32* %15, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds [8 x i32], [8 x i32]* %234, i64 0, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = load [8 x i32]*, [8 x i32]** %6, align 8
  %240 = getelementptr inbounds [8 x i32], [8 x i32]* %239, i64 1
  %241 = load i32, i32* %15, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds [8 x i32], [8 x i32]* %240, i64 0, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = add nsw i32 %238, %244
  %246 = load i32, i32* %13, align 4
  %247 = load i32, i32* %14, align 4
  %248 = add nsw i32 %246, %247
  %249 = icmp sgt i32 %245, %248
  br i1 %249, label %250, label %305

250:                                              ; preds = %222
  %251 = load i32, i32* %8, align 4
  %252 = sub nsw i32 %251, 1
  %253 = load i32, i32* %15, align 4
  %254 = sub nsw i32 %252, %253
  %255 = shl i32 1, %254
  %256 = load i32, i32* %10, align 4
  %257 = or i32 %256, %255
  store i32 %257, i32* %10, align 4
  %258 = load i32, i32* %13, align 4
  %259 = load [8 x i32]*, [8 x i32]** %6, align 8
  %260 = getelementptr inbounds [8 x i32], [8 x i32]* %259, i64 0
  %261 = load i32, i32* %15, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds [8 x i32], [8 x i32]* %260, i64 0, i64 %262
  store i32 %258, i32* %263, align 4
  %264 = load i32, i32* %14, align 4
  %265 = load [8 x i32]*, [8 x i32]** %6, align 8
  %266 = getelementptr inbounds [8 x i32], [8 x i32]* %265, i64 1
  %267 = load i32, i32* %15, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds [8 x i32], [8 x i32]* %266, i64 0, i64 %268
  store i32 %264, i32* %269, align 4
  store i32 0, i32* %9, align 4
  br label %270

270:                                              ; preds = %301, %250
  %271 = load i32, i32* %9, align 4
  %272 = load i32, i32* %7, align 4
  %273 = icmp slt i32 %271, %272
  br i1 %273, label %274, label %304

274:                                              ; preds = %270
  %275 = load i32, i32* %9, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds [16 x [2 x i32]], [16 x [2 x i32]]* %16, i64 0, i64 %276
  %278 = getelementptr inbounds [2 x i32], [2 x i32]* %277, i64 0, i64 0
  %279 = load i32, i32* %278, align 8
  %280 = load [2 x [8 x i32]]*, [2 x [8 x i32]]** %5, align 8
  %281 = load i32, i32* %9, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %280, i64 %282
  %284 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %283, i64 0, i64 0
  %285 = load i32, i32* %15, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds [8 x i32], [8 x i32]* %284, i64 0, i64 %286
  store i32 %279, i32* %287, align 4
  %288 = load i32, i32* %9, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds [16 x [2 x i32]], [16 x [2 x i32]]* %16, i64 0, i64 %289
  %291 = getelementptr inbounds [2 x i32], [2 x i32]* %290, i64 0, i64 1
  %292 = load i32, i32* %291, align 4
  %293 = load [2 x [8 x i32]]*, [2 x [8 x i32]]** %5, align 8
  %294 = load i32, i32* %9, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %293, i64 %295
  %297 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %296, i64 0, i64 1
  %298 = load i32, i32* %15, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds [8 x i32], [8 x i32]* %297, i64 0, i64 %299
  store i32 %292, i32* %300, align 4
  br label %301

301:                                              ; preds = %274
  %302 = load i32, i32* %9, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %9, align 4
  br label %270

304:                                              ; preds = %270
  br label %305

305:                                              ; preds = %304, %222
  br label %88

306:                                              ; preds = %88
  %307 = load i32, i32* %10, align 4
  ret i32 %307
}

declare dso_local i32 @FFABS(i32) #1

declare dso_local i32 @ff_clz(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
