; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_png.c_png_XYZ_from_xy.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_png.c_png_XYZ_from_xy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_5__ = type { i64, i64, i64, i64, i64, i64, i64, i32 }

@PNG_FP_1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_5__*)* @png_XYZ_from_xy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @png_XYZ_from_xy(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PNG_FP_1, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16, %2
  store i32 1, i32* %3, align 4
  br label %408

23:                                               ; preds = %16
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %23
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @PNG_FP_1, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %32, %35
  %37 = icmp sgt i64 %31, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %28, %23
  store i32 1, i32* %3, align 4
  br label %408

39:                                               ; preds = %28
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %39
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @PNG_FP_1, align 8
  %49 = icmp sgt i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44, %39
  store i32 1, i32* %3, align 4
  br label %408

51:                                               ; preds = %44
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %51
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @PNG_FP_1, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %60, %63
  %65 = icmp sgt i64 %59, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %56, %51
  store i32 1, i32* %3, align 4
  br label %408

67:                                               ; preds = %56
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %67
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @PNG_FP_1, align 8
  %77 = icmp sgt i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %72, %67
  store i32 1, i32* %3, align 4
  br label %408

79:                                               ; preds = %72
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 5
  %82 = load i64, i64* %81, align 8
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %94, label %84

84:                                               ; preds = %79
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 5
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @PNG_FP_1, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = sub nsw i64 %88, %91
  %93 = icmp sgt i64 %87, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %84, %79
  store i32 1, i32* %3, align 4
  br label %408

95:                                               ; preds = %84
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 6
  %98 = load i64, i64* %97, align 8
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %95
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 6
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @PNG_FP_1, align 8
  %105 = icmp sgt i64 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %100, %95
  store i32 1, i32* %3, align 4
  br label %408

107:                                              ; preds = %100
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 7
  %110 = load i32, i32* %109, align 8
  %111 = icmp slt i32 %110, 5
  br i1 %111, label %123, label %112

112:                                              ; preds = %107
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 7
  %115 = load i32, i32* %114, align 8
  %116 = sext i32 %115 to i64
  %117 = load i64, i64* @PNG_FP_1, align 8
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 6
  %120 = load i64, i64* %119, align 8
  %121 = sub nsw i64 %117, %120
  %122 = icmp sgt i64 %116, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %112, %107
  store i32 1, i32* %3, align 4
  br label %408

124:                                              ; preds = %112
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 4
  %130 = load i64, i64* %129, align 8
  %131 = sub nsw i64 %127, %130
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 5
  %137 = load i64, i64* %136, align 8
  %138 = sub nsw i64 %134, %137
  %139 = call i64 @png_muldiv(i64* %9, i64 %131, i64 %138, i64 7)
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %124
  store i32 2, i32* %3, align 4
  br label %408

142:                                              ; preds = %124
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 5
  %148 = load i64, i64* %147, align 8
  %149 = sub nsw i64 %145, %148
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 4
  %155 = load i64, i64* %154, align 8
  %156 = sub nsw i64 %152, %155
  %157 = call i64 @png_muldiv(i64* %10, i64 %149, i64 %156, i64 7)
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %142
  store i32 2, i32* %3, align 4
  br label %408

160:                                              ; preds = %142
  %161 = load i64, i64* %9, align 8
  %162 = load i64, i64* %10, align 8
  %163 = sub nsw i64 %161, %162
  store i64 %163, i64* %11, align 8
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 4
  %169 = load i64, i64* %168, align 8
  %170 = sub nsw i64 %166, %169
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 7
  %173 = load i32, i32* %172, align 8
  %174 = sext i32 %173 to i64
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 5
  %177 = load i64, i64* %176, align 8
  %178 = sub nsw i64 %174, %177
  %179 = call i64 @png_muldiv(i64* %9, i64 %170, i64 %178, i64 7)
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %160
  store i32 2, i32* %3, align 4
  br label %408

182:                                              ; preds = %160
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 5
  %188 = load i64, i64* %187, align 8
  %189 = sub nsw i64 %185, %188
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 6
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 4
  %195 = load i64, i64* %194, align 8
  %196 = sub nsw i64 %192, %195
  %197 = call i64 @png_muldiv(i64* %10, i64 %189, i64 %196, i64 7)
  %198 = icmp eq i64 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %182
  store i32 2, i32* %3, align 4
  br label %408

200:                                              ; preds = %182
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 7
  %203 = load i32, i32* %202, align 8
  %204 = sext i32 %203 to i64
  %205 = load i64, i64* %11, align 8
  %206 = load i64, i64* %9, align 8
  %207 = load i64, i64* %10, align 8
  %208 = sub nsw i64 %206, %207
  %209 = call i64 @png_muldiv(i64* %6, i64 %204, i64 %205, i64 %208)
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %218, label %211

211:                                              ; preds = %200
  %212 = load i64, i64* %6, align 8
  %213 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 7
  %215 = load i32, i32* %214, align 8
  %216 = sext i32 %215 to i64
  %217 = icmp sle i64 %212, %216
  br i1 %217, label %218, label %219

218:                                              ; preds = %211, %200
  store i32 1, i32* %3, align 4
  br label %408

219:                                              ; preds = %211
  %220 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 5
  %225 = load i64, i64* %224, align 8
  %226 = sub nsw i64 %222, %225
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 6
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 4
  %232 = load i64, i64* %231, align 8
  %233 = sub nsw i64 %229, %232
  %234 = call i64 @png_muldiv(i64* %9, i64 %226, i64 %233, i64 7)
  %235 = icmp eq i64 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %219
  store i32 2, i32* %3, align 4
  br label %408

237:                                              ; preds = %219
  %238 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 4
  %243 = load i64, i64* %242, align 8
  %244 = sub nsw i64 %240, %243
  %245 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i32 0, i32 7
  %247 = load i32, i32* %246, align 8
  %248 = sext i32 %247 to i64
  %249 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %249, i32 0, i32 5
  %251 = load i64, i64* %250, align 8
  %252 = sub nsw i64 %248, %251
  %253 = call i64 @png_muldiv(i64* %10, i64 %244, i64 %252, i64 7)
  %254 = icmp eq i64 %253, 0
  br i1 %254, label %255, label %256

255:                                              ; preds = %237
  store i32 2, i32* %3, align 4
  br label %408

256:                                              ; preds = %237
  %257 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i32 0, i32 7
  %259 = load i32, i32* %258, align 8
  %260 = sext i32 %259 to i64
  %261 = load i64, i64* %11, align 8
  %262 = load i64, i64* %9, align 8
  %263 = load i64, i64* %10, align 8
  %264 = sub nsw i64 %262, %263
  %265 = call i64 @png_muldiv(i64* %7, i64 %260, i64 %261, i64 %264)
  %266 = icmp eq i64 %265, 0
  br i1 %266, label %274, label %267

267:                                              ; preds = %256
  %268 = load i64, i64* %7, align 8
  %269 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %269, i32 0, i32 7
  %271 = load i32, i32* %270, align 8
  %272 = sext i32 %271 to i64
  %273 = icmp sle i64 %268, %272
  br i1 %273, label %274, label %275

274:                                              ; preds = %267, %256
  store i32 1, i32* %3, align 4
  br label %408

275:                                              ; preds = %267
  %276 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %277 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %276, i32 0, i32 7
  %278 = load i32, i32* %277, align 8
  %279 = sext i32 %278 to i64
  %280 = call i64 @png_reciprocal(i64 %279)
  %281 = load i64, i64* %6, align 8
  %282 = call i64 @png_reciprocal(i64 %281)
  %283 = sub nsw i64 %280, %282
  %284 = load i64, i64* %7, align 8
  %285 = call i64 @png_reciprocal(i64 %284)
  %286 = sub nsw i64 %283, %285
  store i64 %286, i64* %8, align 8
  %287 = load i64, i64* %8, align 8
  %288 = icmp sle i64 %287, 0
  br i1 %288, label %289, label %290

289:                                              ; preds = %275
  store i32 1, i32* %3, align 4
  br label %408

290:                                              ; preds = %275
  %291 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %292 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %291, i32 0, i32 0
  %293 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %294 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %293, i32 0, i32 0
  %295 = load i64, i64* %294, align 8
  %296 = load i64, i64* @PNG_FP_1, align 8
  %297 = load i64, i64* %6, align 8
  %298 = call i64 @png_muldiv(i64* %292, i64 %295, i64 %296, i64 %297)
  %299 = icmp eq i64 %298, 0
  br i1 %299, label %300, label %301

300:                                              ; preds = %290
  store i32 1, i32* %3, align 4
  br label %408

301:                                              ; preds = %290
  %302 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %303 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %302, i32 0, i32 1
  %304 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %305 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %304, i32 0, i32 1
  %306 = load i64, i64* %305, align 8
  %307 = load i64, i64* @PNG_FP_1, align 8
  %308 = load i64, i64* %6, align 8
  %309 = call i64 @png_muldiv(i64* %303, i64 %306, i64 %307, i64 %308)
  %310 = icmp eq i64 %309, 0
  br i1 %310, label %311, label %312

311:                                              ; preds = %301
  store i32 1, i32* %3, align 4
  br label %408

312:                                              ; preds = %301
  %313 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %314 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %313, i32 0, i32 2
  %315 = load i64, i64* @PNG_FP_1, align 8
  %316 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %317 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %316, i32 0, i32 0
  %318 = load i64, i64* %317, align 8
  %319 = sub nsw i64 %315, %318
  %320 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %321 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %320, i32 0, i32 1
  %322 = load i64, i64* %321, align 8
  %323 = sub nsw i64 %319, %322
  %324 = load i64, i64* @PNG_FP_1, align 8
  %325 = load i64, i64* %6, align 8
  %326 = call i64 @png_muldiv(i64* %314, i64 %323, i64 %324, i64 %325)
  %327 = icmp eq i64 %326, 0
  br i1 %327, label %328, label %329

328:                                              ; preds = %312
  store i32 1, i32* %3, align 4
  br label %408

329:                                              ; preds = %312
  %330 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %331 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %330, i32 0, i32 3
  %332 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %333 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %332, i32 0, i32 2
  %334 = load i64, i64* %333, align 8
  %335 = load i64, i64* @PNG_FP_1, align 8
  %336 = load i64, i64* %7, align 8
  %337 = call i64 @png_muldiv(i64* %331, i64 %334, i64 %335, i64 %336)
  %338 = icmp eq i64 %337, 0
  br i1 %338, label %339, label %340

339:                                              ; preds = %329
  store i32 1, i32* %3, align 4
  br label %408

340:                                              ; preds = %329
  %341 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %342 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %341, i32 0, i32 4
  %343 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %344 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %343, i32 0, i32 3
  %345 = load i64, i64* %344, align 8
  %346 = load i64, i64* @PNG_FP_1, align 8
  %347 = load i64, i64* %7, align 8
  %348 = call i64 @png_muldiv(i64* %342, i64 %345, i64 %346, i64 %347)
  %349 = icmp eq i64 %348, 0
  br i1 %349, label %350, label %351

350:                                              ; preds = %340
  store i32 1, i32* %3, align 4
  br label %408

351:                                              ; preds = %340
  %352 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %353 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %352, i32 0, i32 5
  %354 = load i64, i64* @PNG_FP_1, align 8
  %355 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %356 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %355, i32 0, i32 2
  %357 = load i64, i64* %356, align 8
  %358 = sub nsw i64 %354, %357
  %359 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %360 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %359, i32 0, i32 3
  %361 = load i64, i64* %360, align 8
  %362 = sub nsw i64 %358, %361
  %363 = load i64, i64* @PNG_FP_1, align 8
  %364 = load i64, i64* %7, align 8
  %365 = call i64 @png_muldiv(i64* %353, i64 %362, i64 %363, i64 %364)
  %366 = icmp eq i64 %365, 0
  br i1 %366, label %367, label %368

367:                                              ; preds = %351
  store i32 1, i32* %3, align 4
  br label %408

368:                                              ; preds = %351
  %369 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %370 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %369, i32 0, i32 6
  %371 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %372 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %371, i32 0, i32 4
  %373 = load i64, i64* %372, align 8
  %374 = load i64, i64* %8, align 8
  %375 = load i64, i64* @PNG_FP_1, align 8
  %376 = call i64 @png_muldiv(i64* %370, i64 %373, i64 %374, i64 %375)
  %377 = icmp eq i64 %376, 0
  br i1 %377, label %378, label %379

378:                                              ; preds = %368
  store i32 1, i32* %3, align 4
  br label %408

379:                                              ; preds = %368
  %380 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %381 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %380, i32 0, i32 7
  %382 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %383 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %382, i32 0, i32 5
  %384 = load i64, i64* %383, align 8
  %385 = load i64, i64* %8, align 8
  %386 = load i64, i64* @PNG_FP_1, align 8
  %387 = call i64 @png_muldiv(i64* %381, i64 %384, i64 %385, i64 %386)
  %388 = icmp eq i64 %387, 0
  br i1 %388, label %389, label %390

389:                                              ; preds = %379
  store i32 1, i32* %3, align 4
  br label %408

390:                                              ; preds = %379
  %391 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %392 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %391, i32 0, i32 8
  %393 = load i64, i64* @PNG_FP_1, align 8
  %394 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %395 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %394, i32 0, i32 4
  %396 = load i64, i64* %395, align 8
  %397 = sub nsw i64 %393, %396
  %398 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %399 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %398, i32 0, i32 5
  %400 = load i64, i64* %399, align 8
  %401 = sub nsw i64 %397, %400
  %402 = load i64, i64* %8, align 8
  %403 = load i64, i64* @PNG_FP_1, align 8
  %404 = call i64 @png_muldiv(i64* %392, i64 %401, i64 %402, i64 %403)
  %405 = icmp eq i64 %404, 0
  br i1 %405, label %406, label %407

406:                                              ; preds = %390
  store i32 1, i32* %3, align 4
  br label %408

407:                                              ; preds = %390
  store i32 0, i32* %3, align 4
  br label %408

408:                                              ; preds = %407, %406, %389, %378, %367, %350, %339, %328, %311, %300, %289, %274, %255, %236, %218, %199, %181, %159, %141, %123, %106, %94, %78, %66, %50, %38, %22
  %409 = load i32, i32* %3, align 4
  ret i32 %409
}

declare dso_local i64 @png_muldiv(i64*, i64, i64, i64) #1

declare dso_local i64 @png_reciprocal(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
