; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_iseg_layer.c_forward_iseg_layer.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_iseg_layer.c_forward_iseg_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32*, i32, i32, i32*, i32, i32, i32, i32*, i32**, i32, i64* }
%struct.TYPE_5__ = type { i32*, i64, i32 }

@LOGISTIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%4d, %6.3f, \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%6.3f,\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"took %lf sec\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @forward_iseg_layer(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %0, %struct.TYPE_5__* byval(%struct.TYPE_5__) align 8 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca float*, align 8
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  %19 = alloca float, align 4
  %20 = alloca i32, align 4
  %21 = alloca float, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca float, align 4
  %25 = alloca i32, align 4
  %26 = call double (...) @what_time_is_it_now()
  store double %26, double* %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %8, align 4
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %34, %36
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 4
  %40 = trunc i64 %39 to i32
  %41 = call i32 @memcpy(i32* %30, i32 %32, i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 4
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %45, %47
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 4
  %51 = trunc i64 %50 to i32
  %52 = call i32 @memset(i32* %43, i32 0, i32 %51)
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %78, %2
  %54 = load i32, i32* %5, align 4
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %58, label %81

58:                                               ; preds = %53
  %59 = load i32, i32* %5, align 4
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = mul nsw i32 %59, %61
  store i32 %62, i32* %9, align 4
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 6
  %71 = load i32, i32* %70, align 4
  %72 = mul nsw i32 %69, %71
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 7
  %74 = load i32, i32* %73, align 8
  %75 = mul nsw i32 %72, %74
  %76 = load i32, i32* @LOGISTIC, align 4
  %77 = call i32 @activate_array(i32* %67, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %58
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %5, align 4
  br label %53

81:                                               ; preds = %53
  store i32 0, i32* %5, align 4
  br label %82

82:                                               ; preds = %762, %81
  %83 = load i32, i32* %5, align 4
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = icmp slt i32 %83, %85
  br i1 %86, label %87, label %765

87:                                               ; preds = %82
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %133, %87
  %89 = load i32, i32* %4, align 4
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 5
  %91 = load i32, i32* %90, align 8
  %92 = icmp slt i32 %89, %91
  br i1 %92, label %93, label %136

93:                                               ; preds = %88
  store i32 0, i32* %7, align 4
  br label %94

94:                                               ; preds = %129, %93
  %95 = load i32, i32* %7, align 4
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 6
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 7
  %99 = load i32, i32* %98, align 8
  %100 = mul nsw i32 %97, %99
  %101 = icmp slt i32 %95, %100
  br i1 %101, label %102, label %132

102:                                              ; preds = %94
  %103 = load i32, i32* %5, align 4
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = mul nsw i32 %103, %105
  %107 = load i32, i32* %4, align 4
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 6
  %109 = load i32, i32* %108, align 4
  %110 = mul nsw i32 %107, %109
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 7
  %112 = load i32, i32* %111, align 8
  %113 = mul nsw i32 %110, %112
  %114 = add nsw i32 %106, %113
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %114, %115
  store i32 %116, i32* %10, align 4
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %10, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = sub nsw i32 0, %122
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 4
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %10, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  store i32 %123, i32* %128, align 4
  br label %129

129:                                              ; preds = %102
  %130 = load i32, i32* %7, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %7, align 4
  br label %94

132:                                              ; preds = %94
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %4, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %4, align 4
  br label %88

136:                                              ; preds = %88
  store i32 0, i32* %4, align 4
  br label %137

137:                                              ; preds = %187, %136
  %138 = load i32, i32* %4, align 4
  %139 = load i32, i32* %8, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %190

141:                                              ; preds = %137
  store i32 0, i32* %7, align 4
  br label %142

142:                                              ; preds = %183, %141
  %143 = load i32, i32* %7, align 4
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 6
  %145 = load i32, i32* %144, align 4
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 7
  %147 = load i32, i32* %146, align 8
  %148 = mul nsw i32 %145, %147
  %149 = icmp slt i32 %143, %148
  br i1 %149, label %150, label %186

150:                                              ; preds = %142
  %151 = load i32, i32* %5, align 4
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = mul nsw i32 %151, %153
  %155 = load i32, i32* %4, align 4
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 5
  %157 = load i32, i32* %156, align 8
  %158 = add nsw i32 %155, %157
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 6
  %160 = load i32, i32* %159, align 4
  %161 = mul nsw i32 %158, %160
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 7
  %163 = load i32, i32* %162, align 8
  %164 = mul nsw i32 %161, %163
  %165 = add nsw i32 %154, %164
  %166 = load i32, i32* %7, align 4
  %167 = add nsw i32 %165, %166
  store i32 %167, i32* %11, align 4
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %11, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = sub nsw i32 0, %173
  %175 = sitofp i32 %174 to double
  %176 = fmul double 1.000000e-01, %175
  %177 = fptosi double %176 to i32
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 4
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %11, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  store i32 %177, i32* %182, align 4
  br label %183

183:                                              ; preds = %150
  %184 = load i32, i32* %7, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %7, align 4
  br label %142

186:                                              ; preds = %142
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %4, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %4, align 4
  br label %137

190:                                              ; preds = %137
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 8
  %192 = load i32*, i32** %191, align 8
  %193 = call i32 @memset(i32* %192, i32 0, i32 360)
  store i32 0, i32* %4, align 4
  br label %194

194:                                              ; preds = %338, %190
  %195 = load i32, i32* %4, align 4
  %196 = icmp slt i32 %195, 90
  br i1 %196, label %197, label %341

197:                                              ; preds = %194
  %198 = load i32, i32* %8, align 4
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 9
  %200 = load i32**, i32*** %199, align 8
  %201 = load i32, i32* %4, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32*, i32** %200, i64 %202
  %204 = load i32*, i32** %203, align 8
  %205 = call i32 @fill_cpu(i32 %198, i32 0, i32* %204, i32 1)
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %207 = load i32*, i32** %206, align 8
  %208 = load i32, i32* %5, align 4
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 10
  %210 = load i32, i32* %209, align 8
  %211 = mul nsw i32 %208, %210
  %212 = load i32, i32* %4, align 4
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 6
  %214 = load i32, i32* %213, align 4
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 7
  %216 = load i32, i32* %215, align 8
  %217 = mul nsw i32 %214, %216
  %218 = add nsw i32 %217, 1
  %219 = mul nsw i32 %212, %218
  %220 = add nsw i32 %211, %219
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %207, i64 %221
  %223 = load i32, i32* %222, align 4
  store i32 %223, i32* %12, align 4
  %224 = load i32, i32* %12, align 4
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %197
  br label %341

227:                                              ; preds = %197
  store i32 0, i32* %7, align 4
  br label %228

228:                                              ; preds = %334, %227
  %229 = load i32, i32* %7, align 4
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 6
  %231 = load i32, i32* %230, align 4
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 7
  %233 = load i32, i32* %232, align 8
  %234 = mul nsw i32 %231, %233
  %235 = icmp slt i32 %229, %234
  br i1 %235, label %236, label %337

236:                                              ; preds = %228
  %237 = load i32, i32* %5, align 4
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = mul nsw i32 %237, %239
  %241 = load i32, i32* %12, align 4
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 6
  %243 = load i32, i32* %242, align 4
  %244 = mul nsw i32 %241, %243
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 7
  %246 = load i32, i32* %245, align 8
  %247 = mul nsw i32 %244, %246
  %248 = add nsw i32 %240, %247
  %249 = load i32, i32* %7, align 4
  %250 = add nsw i32 %248, %249
  store i32 %250, i32* %13, align 4
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %252 = load i32*, i32** %251, align 8
  %253 = load i32, i32* %5, align 4
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 10
  %255 = load i32, i32* %254, align 8
  %256 = mul nsw i32 %253, %255
  %257 = load i32, i32* %4, align 4
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 6
  %259 = load i32, i32* %258, align 4
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 7
  %261 = load i32, i32* %260, align 8
  %262 = mul nsw i32 %259, %261
  %263 = add nsw i32 %262, 1
  %264 = mul nsw i32 %257, %263
  %265 = add nsw i32 %256, %264
  %266 = add nsw i32 %265, 1
  %267 = load i32, i32* %7, align 4
  %268 = add nsw i32 %266, %267
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %252, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = sitofp i32 %271 to float
  store float %272, float* %14, align 4
  %273 = load float, float* %14, align 4
  %274 = fcmp une float %273, 0.000000e+00
  br i1 %274, label %275, label %333

275:                                              ; preds = %236
  %276 = load float, float* %14, align 4
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %278 = load i32*, i32** %277, align 8
  %279 = load i32, i32* %13, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %278, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = sitofp i32 %282 to float
  %284 = fsub float %276, %283
  %285 = fptosi float %284 to i32
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 4
  %287 = load i32*, i32** %286, align 8
  %288 = load i32, i32* %13, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %287, i64 %289
  store i32 %285, i32* %290, align 4
  %291 = load i32, i32* %8, align 4
  %292 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %293 = load i32*, i32** %292, align 8
  %294 = load i32, i32* %5, align 4
  %295 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %296 = load i32, i32* %295, align 8
  %297 = mul nsw i32 %294, %296
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i32, i32* %293, i64 %298
  %300 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 5
  %301 = load i32, i32* %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 6
  %303 = load i32, i32* %302, align 4
  %304 = mul nsw i32 %301, %303
  %305 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 7
  %306 = load i32, i32* %305, align 8
  %307 = mul nsw i32 %304, %306
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i32, i32* %299, i64 %308
  %310 = load i32, i32* %7, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32, i32* %309, i64 %311
  %313 = bitcast i32* %312 to double*
  %314 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 6
  %315 = load i32, i32* %314, align 4
  %316 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 7
  %317 = load i32, i32* %316, align 8
  %318 = mul nsw i32 %315, %317
  %319 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 9
  %320 = load i32**, i32*** %319, align 8
  %321 = load i32, i32* %4, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i32*, i32** %320, i64 %322
  %324 = load i32*, i32** %323, align 8
  %325 = call i32 @axpy_cpu(i32 %291, i32 1, double* %313, i32 %318, i32* %324, i32 1)
  %326 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 8
  %327 = load i32*, i32** %326, align 8
  %328 = load i32, i32* %4, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i32, i32* %327, i64 %329
  %331 = load i32, i32* %330, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %330, align 4
  br label %333

333:                                              ; preds = %275, %236
  br label %334

334:                                              ; preds = %333
  %335 = load i32, i32* %7, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %7, align 4
  br label %228

337:                                              ; preds = %228
  br label %338

338:                                              ; preds = %337
  %339 = load i32, i32* %4, align 4
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %4, align 4
  br label %194

341:                                              ; preds = %226, %194
  %342 = call float* @calloc(i32 90, i32 4)
  store float* %342, float** %15, align 8
  store i32 0, i32* %4, align 4
  br label %343

343:                                              ; preds = %483, %341
  %344 = load i32, i32* %4, align 4
  %345 = icmp slt i32 %344, 90
  br i1 %345, label %346, label %486

346:                                              ; preds = %343
  %347 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %348 = load i32*, i32** %347, align 8
  %349 = load i32, i32* %5, align 4
  %350 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 10
  %351 = load i32, i32* %350, align 8
  %352 = mul nsw i32 %349, %351
  %353 = load i32, i32* %4, align 4
  %354 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 6
  %355 = load i32, i32* %354, align 4
  %356 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 7
  %357 = load i32, i32* %356, align 8
  %358 = mul nsw i32 %355, %357
  %359 = add nsw i32 %358, 1
  %360 = mul nsw i32 %353, %359
  %361 = add nsw i32 %352, %360
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i32, i32* %348, i64 %362
  %364 = load i32, i32* %363, align 4
  store i32 %364, i32* %16, align 4
  %365 = load i32, i32* %16, align 4
  %366 = icmp slt i32 %365, 0
  br i1 %366, label %367, label %368

367:                                              ; preds = %346
  br label %486

368:                                              ; preds = %346
  store i32 0, i32* %7, align 4
  br label %369

369:                                              ; preds = %466, %368
  %370 = load i32, i32* %7, align 4
  %371 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 6
  %372 = load i32, i32* %371, align 4
  %373 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 7
  %374 = load i32, i32* %373, align 8
  %375 = mul nsw i32 %372, %374
  %376 = icmp slt i32 %370, %375
  br i1 %376, label %377, label %469

377:                                              ; preds = %369
  %378 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %379 = load i32*, i32** %378, align 8
  %380 = load i32, i32* %5, align 4
  %381 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 10
  %382 = load i32, i32* %381, align 8
  %383 = mul nsw i32 %380, %382
  %384 = load i32, i32* %4, align 4
  %385 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 6
  %386 = load i32, i32* %385, align 4
  %387 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 7
  %388 = load i32, i32* %387, align 8
  %389 = mul nsw i32 %386, %388
  %390 = add nsw i32 %389, 1
  %391 = mul nsw i32 %384, %390
  %392 = add nsw i32 %383, %391
  %393 = add nsw i32 %392, 1
  %394 = load i32, i32* %7, align 4
  %395 = add nsw i32 %393, %394
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds i32, i32* %379, i64 %396
  %398 = load i32, i32* %397, align 4
  %399 = sitofp i32 %398 to float
  store float %399, float* %17, align 4
  %400 = load float, float* %17, align 4
  %401 = fcmp une float %400, 0.000000e+00
  br i1 %401, label %402, label %465

402:                                              ; preds = %377
  store float 0.000000e+00, float* %19, align 4
  store i32 0, i32* %18, align 4
  br label %403

403:                                              ; preds = %454, %402
  %404 = load i32, i32* %18, align 4
  %405 = load i32, i32* %8, align 4
  %406 = icmp slt i32 %404, %405
  br i1 %406, label %407, label %457

407:                                              ; preds = %403
  %408 = load i32, i32* %5, align 4
  %409 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %410 = load i32, i32* %409, align 8
  %411 = mul nsw i32 %408, %410
  %412 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 5
  %413 = load i32, i32* %412, align 8
  %414 = load i32, i32* %18, align 4
  %415 = add nsw i32 %413, %414
  %416 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 6
  %417 = load i32, i32* %416, align 4
  %418 = mul nsw i32 %415, %417
  %419 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 7
  %420 = load i32, i32* %419, align 8
  %421 = mul nsw i32 %418, %420
  %422 = add nsw i32 %411, %421
  %423 = load i32, i32* %7, align 4
  %424 = add nsw i32 %422, %423
  store i32 %424, i32* %20, align 4
  %425 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 9
  %426 = load i32**, i32*** %425, align 8
  %427 = load i32, i32* %4, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds i32*, i32** %426, i64 %428
  %430 = load i32*, i32** %429, align 8
  %431 = load i32, i32* %18, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds i32, i32* %430, i64 %432
  %434 = load i32, i32* %433, align 4
  %435 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 8
  %436 = load i32*, i32** %435, align 8
  %437 = load i32, i32* %4, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds i32, i32* %436, i64 %438
  %440 = load i32, i32* %439, align 4
  %441 = sdiv i32 %434, %440
  %442 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %443 = load i32*, i32** %442, align 8
  %444 = load i32, i32* %20, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds i32, i32* %443, i64 %445
  %447 = load i32, i32* %446, align 4
  %448 = sub nsw i32 %441, %447
  %449 = sitofp i32 %448 to double
  %450 = call i64 @pow(double %449, i32 2)
  %451 = sitofp i64 %450 to float
  %452 = load float, float* %19, align 4
  %453 = fadd float %452, %451
  store float %453, float* %19, align 4
  br label %454

454:                                              ; preds = %407
  %455 = load i32, i32* %18, align 4
  %456 = add nsw i32 %455, 1
  store i32 %456, i32* %18, align 4
  br label %403

457:                                              ; preds = %403
  %458 = load float, float* %19, align 4
  %459 = load float*, float** %15, align 8
  %460 = load i32, i32* %4, align 4
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds float, float* %459, i64 %461
  %463 = load float, float* %462, align 4
  %464 = fadd float %463, %458
  store float %464, float* %462, align 4
  br label %465

465:                                              ; preds = %457, %377
  br label %466

466:                                              ; preds = %465
  %467 = load i32, i32* %7, align 4
  %468 = add nsw i32 %467, 1
  store i32 %468, i32* %7, align 4
  br label %369

469:                                              ; preds = %369
  %470 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 8
  %471 = load i32*, i32** %470, align 8
  %472 = load i32, i32* %4, align 4
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds i32, i32* %471, i64 %473
  %475 = load i32, i32* %474, align 4
  %476 = sitofp i32 %475 to float
  %477 = load float*, float** %15, align 8
  %478 = load i32, i32* %4, align 4
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds float, float* %477, i64 %479
  %481 = load float, float* %480, align 4
  %482 = fdiv float %481, %476
  store float %482, float* %480, align 4
  br label %483

483:                                              ; preds = %469
  %484 = load i32, i32* %4, align 4
  %485 = add nsw i32 %484, 1
  store i32 %485, i32* %4, align 4
  br label %343

486:                                              ; preds = %367, %343
  store i32 0, i32* %4, align 4
  br label %487

487:                                              ; preds = %558, %486
  %488 = load i32, i32* %4, align 4
  %489 = icmp slt i32 %488, 90
  br i1 %489, label %490, label %561

490:                                              ; preds = %487
  %491 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 8
  %492 = load i32*, i32** %491, align 8
  %493 = load i32, i32* %4, align 4
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds i32, i32* %492, i64 %494
  %496 = load i32, i32* %495, align 4
  %497 = icmp ne i32 %496, 0
  br i1 %497, label %499, label %498

498:                                              ; preds = %490
  br label %558

499:                                              ; preds = %490
  %500 = load i32, i32* %8, align 4
  %501 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 8
  %502 = load i32*, i32** %501, align 8
  %503 = load i32, i32* %4, align 4
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds i32, i32* %502, i64 %504
  %506 = load i32, i32* %505, align 4
  %507 = sitofp i32 %506 to float
  %508 = fdiv float 1.000000e+00, %507
  %509 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 9
  %510 = load i32**, i32*** %509, align 8
  %511 = load i32, i32* %4, align 4
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds i32*, i32** %510, i64 %512
  %514 = load i32*, i32** %513, align 8
  %515 = call i32 @scal_cpu(i32 %500, float %508, i32* %514, i32 1)
  %516 = load i32, i32* %5, align 4
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %518, label %557

518:                                              ; preds = %499
  %519 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 1
  %520 = load i64, i64* %519, align 8
  %521 = icmp eq i64 %520, 0
  br i1 %521, label %522, label %557

522:                                              ; preds = %518
  %523 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 8
  %524 = load i32*, i32** %523, align 8
  %525 = load i32, i32* %4, align 4
  %526 = sext i32 %525 to i64
  %527 = getelementptr inbounds i32, i32* %524, i64 %526
  %528 = load i32, i32* %527, align 4
  %529 = load float*, float** %15, align 8
  %530 = load i32, i32* %4, align 4
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds float, float* %529, i64 %531
  %533 = load float, float* %532, align 4
  %534 = fpext float %533 to double
  %535 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %528, double %534)
  store i32 0, i32* %6, align 4
  br label %536

536:                                              ; preds = %552, %522
  %537 = load i32, i32* %6, align 4
  %538 = load i32, i32* %8, align 4
  %539 = icmp slt i32 %537, %538
  br i1 %539, label %540, label %555

540:                                              ; preds = %536
  %541 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 9
  %542 = load i32**, i32*** %541, align 8
  %543 = load i32, i32* %4, align 4
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds i32*, i32** %542, i64 %544
  %546 = load i32*, i32** %545, align 8
  %547 = load i32, i32* %6, align 4
  %548 = sext i32 %547 to i64
  %549 = getelementptr inbounds i32, i32* %546, i64 %548
  %550 = load i32, i32* %549, align 4
  %551 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %550)
  br label %552

552:                                              ; preds = %540
  %553 = load i32, i32* %6, align 4
  %554 = add nsw i32 %553, 1
  store i32 %554, i32* %6, align 4
  br label %536

555:                                              ; preds = %536
  %556 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %557

557:                                              ; preds = %555, %518, %499
  br label %558

558:                                              ; preds = %557, %498
  %559 = load i32, i32* %4, align 4
  %560 = add nsw i32 %559, 1
  store i32 %560, i32* %4, align 4
  br label %487

561:                                              ; preds = %487
  %562 = load float*, float** %15, align 8
  %563 = call i32 @free(float* %562)
  store i32 0, i32* %4, align 4
  br label %564

564:                                              ; preds = %710, %561
  %565 = load i32, i32* %4, align 4
  %566 = icmp slt i32 %565, 90
  br i1 %566, label %567, label %713

567:                                              ; preds = %564
  %568 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 8
  %569 = load i32*, i32** %568, align 8
  %570 = load i32, i32* %4, align 4
  %571 = sext i32 %570 to i64
  %572 = getelementptr inbounds i32, i32* %569, i64 %571
  %573 = load i32, i32* %572, align 4
  %574 = icmp ne i32 %573, 0
  br i1 %574, label %576, label %575

575:                                              ; preds = %567
  br label %710

576:                                              ; preds = %567
  store i32 0, i32* %7, align 4
  br label %577

577:                                              ; preds = %706, %576
  %578 = load i32, i32* %7, align 4
  %579 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 6
  %580 = load i32, i32* %579, align 4
  %581 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 7
  %582 = load i32, i32* %581, align 8
  %583 = mul nsw i32 %580, %582
  %584 = icmp slt i32 %578, %583
  br i1 %584, label %585, label %709

585:                                              ; preds = %577
  %586 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %587 = load i32*, i32** %586, align 8
  %588 = load i32, i32* %5, align 4
  %589 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 10
  %590 = load i32, i32* %589, align 8
  %591 = mul nsw i32 %588, %590
  %592 = load i32, i32* %4, align 4
  %593 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 6
  %594 = load i32, i32* %593, align 4
  %595 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 7
  %596 = load i32, i32* %595, align 8
  %597 = mul nsw i32 %594, %596
  %598 = add nsw i32 %597, 1
  %599 = mul nsw i32 %592, %598
  %600 = add nsw i32 %591, %599
  %601 = add nsw i32 %600, 1
  %602 = load i32, i32* %7, align 4
  %603 = add nsw i32 %601, %602
  %604 = sext i32 %603 to i64
  %605 = getelementptr inbounds i32, i32* %587, i64 %604
  %606 = load i32, i32* %605, align 4
  %607 = sitofp i32 %606 to float
  store float %607, float* %21, align 4
  %608 = load float, float* %21, align 4
  %609 = fcmp une float %608, 0.000000e+00
  br i1 %609, label %610, label %705

610:                                              ; preds = %585
  store i32 0, i32* %6, align 4
  br label %611

611:                                              ; preds = %701, %610
  %612 = load i32, i32* %6, align 4
  %613 = icmp slt i32 %612, 90
  br i1 %613, label %614, label %704

614:                                              ; preds = %611
  %615 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 8
  %616 = load i32*, i32** %615, align 8
  %617 = load i32, i32* %6, align 4
  %618 = sext i32 %617 to i64
  %619 = getelementptr inbounds i32, i32* %616, i64 %618
  %620 = load i32, i32* %619, align 4
  %621 = icmp ne i32 %620, 0
  br i1 %621, label %623, label %622

622:                                              ; preds = %614
  br label %701

623:                                              ; preds = %614
  store i32 0, i32* %22, align 4
  br label %624

624:                                              ; preds = %697, %623
  %625 = load i32, i32* %22, align 4
  %626 = load i32, i32* %8, align 4
  %627 = icmp slt i32 %625, %626
  br i1 %627, label %628, label %700

628:                                              ; preds = %624
  %629 = load i32, i32* %5, align 4
  %630 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %631 = load i32, i32* %630, align 8
  %632 = mul nsw i32 %629, %631
  %633 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 5
  %634 = load i32, i32* %633, align 8
  %635 = load i32, i32* %22, align 4
  %636 = add nsw i32 %634, %635
  %637 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 6
  %638 = load i32, i32* %637, align 4
  %639 = mul nsw i32 %636, %638
  %640 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 7
  %641 = load i32, i32* %640, align 8
  %642 = mul nsw i32 %639, %641
  %643 = add nsw i32 %632, %642
  %644 = load i32, i32* %7, align 4
  %645 = add nsw i32 %643, %644
  store i32 %645, i32* %23, align 4
  %646 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 9
  %647 = load i32**, i32*** %646, align 8
  %648 = load i32, i32* %6, align 4
  %649 = sext i32 %648 to i64
  %650 = getelementptr inbounds i32*, i32** %647, i64 %649
  %651 = load i32*, i32** %650, align 8
  %652 = load i32, i32* %22, align 4
  %653 = sext i32 %652 to i64
  %654 = getelementptr inbounds i32, i32* %651, i64 %653
  %655 = load i32, i32* %654, align 4
  %656 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %657 = load i32*, i32** %656, align 8
  %658 = load i32, i32* %23, align 4
  %659 = sext i32 %658 to i64
  %660 = getelementptr inbounds i32, i32* %657, i64 %659
  %661 = load i32, i32* %660, align 4
  %662 = sub nsw i32 %655, %661
  %663 = sitofp i32 %662 to float
  store float %663, float* %24, align 4
  %664 = load i32, i32* %6, align 4
  %665 = load i32, i32* %4, align 4
  %666 = icmp eq i32 %664, %665
  br i1 %666, label %667, label %681

667:                                              ; preds = %628
  %668 = load float, float* %24, align 4
  %669 = fcmp olt float %668, 0.000000e+00
  %670 = zext i1 %669 to i64
  %671 = select i1 %669, double -1.000000e-01, double 1.000000e-01
  %672 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 4
  %673 = load i32*, i32** %672, align 8
  %674 = load i32, i32* %23, align 4
  %675 = sext i32 %674 to i64
  %676 = getelementptr inbounds i32, i32* %673, i64 %675
  %677 = load i32, i32* %676, align 4
  %678 = sitofp i32 %677 to double
  %679 = fadd double %678, %671
  %680 = fptosi double %679 to i32
  store i32 %680, i32* %676, align 4
  br label %696

681:                                              ; preds = %628
  %682 = load float, float* %24, align 4
  %683 = fcmp olt float %682, 0.000000e+00
  %684 = zext i1 %683 to i64
  %685 = select i1 %683, double -1.000000e-01, double 1.000000e-01
  %686 = fneg double %685
  %687 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 4
  %688 = load i32*, i32** %687, align 8
  %689 = load i32, i32* %23, align 4
  %690 = sext i32 %689 to i64
  %691 = getelementptr inbounds i32, i32* %688, i64 %690
  %692 = load i32, i32* %691, align 4
  %693 = sitofp i32 %692 to double
  %694 = fadd double %693, %686
  %695 = fptosi double %694 to i32
  store i32 %695, i32* %691, align 4
  br label %696

696:                                              ; preds = %681, %667
  br label %697

697:                                              ; preds = %696
  %698 = load i32, i32* %22, align 4
  %699 = add nsw i32 %698, 1
  store i32 %699, i32* %22, align 4
  br label %624

700:                                              ; preds = %624
  br label %701

701:                                              ; preds = %700, %622
  %702 = load i32, i32* %6, align 4
  %703 = add nsw i32 %702, 1
  store i32 %703, i32* %6, align 4
  br label %611

704:                                              ; preds = %611
  br label %705

705:                                              ; preds = %704, %585
  br label %706

706:                                              ; preds = %705
  %707 = load i32, i32* %7, align 4
  %708 = add nsw i32 %707, 1
  store i32 %708, i32* %7, align 4
  br label %577

709:                                              ; preds = %577
  br label %710

710:                                              ; preds = %709, %575
  %711 = load i32, i32* %4, align 4
  %712 = add nsw i32 %711, 1
  store i32 %712, i32* %4, align 4
  br label %564

713:                                              ; preds = %564
  store i32 0, i32* %4, align 4
  br label %714

714:                                              ; preds = %758, %713
  %715 = load i32, i32* %4, align 4
  %716 = load i32, i32* %8, align 4
  %717 = icmp slt i32 %715, %716
  br i1 %717, label %718, label %761

718:                                              ; preds = %714
  store i32 0, i32* %7, align 4
  br label %719

719:                                              ; preds = %754, %718
  %720 = load i32, i32* %7, align 4
  %721 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 6
  %722 = load i32, i32* %721, align 4
  %723 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 7
  %724 = load i32, i32* %723, align 8
  %725 = mul nsw i32 %722, %724
  %726 = icmp slt i32 %720, %725
  br i1 %726, label %727, label %757

727:                                              ; preds = %719
  %728 = load i32, i32* %5, align 4
  %729 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %730 = load i32, i32* %729, align 8
  %731 = mul nsw i32 %728, %730
  %732 = load i32, i32* %4, align 4
  %733 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 5
  %734 = load i32, i32* %733, align 8
  %735 = add nsw i32 %732, %734
  %736 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 6
  %737 = load i32, i32* %736, align 4
  %738 = mul nsw i32 %735, %737
  %739 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 7
  %740 = load i32, i32* %739, align 8
  %741 = mul nsw i32 %738, %740
  %742 = add nsw i32 %731, %741
  %743 = load i32, i32* %7, align 4
  %744 = add nsw i32 %742, %743
  store i32 %744, i32* %25, align 4
  %745 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 4
  %746 = load i32*, i32** %745, align 8
  %747 = load i32, i32* %25, align 4
  %748 = sext i32 %747 to i64
  %749 = getelementptr inbounds i32, i32* %746, i64 %748
  %750 = load i32, i32* %749, align 4
  %751 = sitofp i32 %750 to double
  %752 = fmul double %751, 1.000000e-02
  %753 = fptosi double %752 to i32
  store i32 %753, i32* %749, align 4
  br label %754

754:                                              ; preds = %727
  %755 = load i32, i32* %7, align 4
  %756 = add nsw i32 %755, 1
  store i32 %756, i32* %7, align 4
  br label %719

757:                                              ; preds = %719
  br label %758

758:                                              ; preds = %757
  %759 = load i32, i32* %4, align 4
  %760 = add nsw i32 %759, 1
  store i32 %760, i32* %4, align 4
  br label %714

761:                                              ; preds = %714
  br label %762

762:                                              ; preds = %761
  %763 = load i32, i32* %5, align 4
  %764 = add nsw i32 %763, 1
  store i32 %764, i32* %5, align 4
  br label %82

765:                                              ; preds = %82
  %766 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 4
  %767 = load i32*, i32** %766, align 8
  %768 = bitcast i32* %767 to double*
  %769 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %770 = load i32, i32* %769, align 8
  %771 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  %772 = load i32, i32* %771, align 4
  %773 = mul nsw i32 %770, %772
  %774 = call double @mag_array(double* %768, i32 %773)
  %775 = call i64 @pow(double %774, i32 2)
  %776 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 11
  %777 = load i64*, i64** %776, align 8
  store i64 %775, i64* %777, align 8
  %778 = call double (...) @what_time_is_it_now()
  %779 = load double, double* %3, align 8
  %780 = fsub double %778, %779
  %781 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), double %780)
  ret void
}

declare dso_local double @what_time_is_it_now(...) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @activate_array(i32*, i32, i32) #1

declare dso_local i32 @fill_cpu(i32, i32, i32*, i32) #1

declare dso_local i32 @axpy_cpu(i32, i32, double*, i32, i32*, i32) #1

declare dso_local float* @calloc(i32, i32) #1

declare dso_local i64 @pow(double, i32) #1

declare dso_local i32 @scal_cpu(i32, float, i32*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @free(float*) #1

declare dso_local double @mag_array(double*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
