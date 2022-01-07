; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/sound/extr_sn76496.c_SN76496Write.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/sound/extr_sn76496.c_SN76496Write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN76496 = type { i32, i32*, i32*, i32, i32, i32*, i8*, i32*, i32* }

@ono_sn = common dso_local global %struct.SN76496 zeroinitializer, align 8
@FB_WNOISE = common dso_local global i8* null, align 8
@FB_PNOISE = common dso_local global i8* null, align 8
@NG_PRESET = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SN76496Write(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.SN76496*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store %struct.SN76496* @ono_sn, %struct.SN76496** %3, align 8
  %10 = load i32, i32* %2, align 4
  %11 = and i32 %10, 128
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %171

13:                                               ; preds = %1
  %14 = load i32, i32* %2, align 4
  %15 = and i32 %14, 112
  %16 = ashr i32 %15, 4
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = sdiv i32 %17, 2
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.SN76496*, %struct.SN76496** %3, align 8
  %21 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.SN76496*, %struct.SN76496** %3, align 8
  %23 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 1008
  %30 = load i32, i32* %2, align 4
  %31 = and i32 %30, 15
  %32 = or i32 %29, %31
  %33 = load %struct.SN76496*, %struct.SN76496** %3, align 8
  %34 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 %32, i32* %38, align 4
  %39 = load i32, i32* %5, align 4
  switch i32 %39, label %170 [
    i32 0, label %40
    i32 2, label %40
    i32 4, label %40
    i32 1, label %100
    i32 3, label %100
    i32 5, label %100
    i32 7, label %100
    i32 6, label %115
  ]

40:                                               ; preds = %13, %13, %13
  %41 = load %struct.SN76496*, %struct.SN76496** %3, align 8
  %42 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.SN76496*, %struct.SN76496** %3, align 8
  %45 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 %43, %50
  %52 = load %struct.SN76496*, %struct.SN76496** %3, align 8
  %53 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 %51, i32* %57, align 4
  %58 = load %struct.SN76496*, %struct.SN76496** %3, align 8
  %59 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %40
  %67 = load %struct.SN76496*, %struct.SN76496** %3, align 8
  %68 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.SN76496*, %struct.SN76496** %3, align 8
  %71 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %69, i32* %75, align 4
  br label %76

76:                                               ; preds = %66, %40
  %77 = load i32, i32* %5, align 4
  %78 = icmp eq i32 %77, 4
  br i1 %78, label %79, label %99

79:                                               ; preds = %76
  %80 = load %struct.SN76496*, %struct.SN76496** %3, align 8
  %81 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 6
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, 3
  %86 = icmp eq i32 %85, 3
  br i1 %86, label %87, label %98

87:                                               ; preds = %79
  %88 = load %struct.SN76496*, %struct.SN76496** %3, align 8
  %89 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 2
  %92 = load i32, i32* %91, align 4
  %93 = mul nsw i32 2, %92
  %94 = load %struct.SN76496*, %struct.SN76496** %3, align 8
  %95 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 3
  store i32 %93, i32* %97, align 4
  br label %98

98:                                               ; preds = %87, %79
  br label %99

99:                                               ; preds = %98, %76
  br label %170

100:                                              ; preds = %13, %13, %13, %13
  %101 = load %struct.SN76496*, %struct.SN76496** %3, align 8
  %102 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %101, i32 0, i32 7
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %2, align 4
  %105 = and i32 %104, 15
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %103, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.SN76496*, %struct.SN76496** %3, align 8
  %110 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %109, i32 0, i32 8
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  store i32 %108, i32* %114, align 4
  br label %170

115:                                              ; preds = %13
  %116 = load %struct.SN76496*, %struct.SN76496** %3, align 8
  %117 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 6
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* %7, align 4
  %122 = and i32 %121, 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %115
  %125 = load i8*, i8** @FB_WNOISE, align 8
  br label %128

126:                                              ; preds = %115
  %127 = load i8*, i8** @FB_PNOISE, align 8
  br label %128

128:                                              ; preds = %126, %124
  %129 = phi i8* [ %125, %124 ], [ %127, %126 ]
  %130 = load %struct.SN76496*, %struct.SN76496** %3, align 8
  %131 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %130, i32 0, i32 6
  store i8* %129, i8** %131, align 8
  %132 = load i32, i32* %7, align 4
  %133 = and i32 %132, 3
  store i32 %133, i32* %7, align 4
  %134 = load i32, i32* %7, align 4
  %135 = and i32 %134, 3
  %136 = icmp eq i32 %135, 3
  br i1 %136, label %137, label %144

137:                                              ; preds = %128
  %138 = load %struct.SN76496*, %struct.SN76496** %3, align 8
  %139 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %138, i32 0, i32 2
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 2
  %142 = load i32, i32* %141, align 4
  %143 = mul nsw i32 2, %142
  br label %152

144:                                              ; preds = %128
  %145 = load %struct.SN76496*, %struct.SN76496** %3, align 8
  %146 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* %7, align 4
  %149 = and i32 %148, 3
  %150 = add nsw i32 5, %149
  %151 = shl i32 %147, %150
  br label %152

152:                                              ; preds = %144, %137
  %153 = phi i32 [ %143, %137 ], [ %151, %144 ]
  %154 = load %struct.SN76496*, %struct.SN76496** %3, align 8
  %155 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %154, i32 0, i32 2
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 3
  store i32 %153, i32* %157, align 4
  %158 = load i8*, i8** @NG_PRESET, align 8
  %159 = ptrtoint i8* %158 to i32
  %160 = load %struct.SN76496*, %struct.SN76496** %3, align 8
  %161 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %160, i32 0, i32 4
  store i32 %159, i32* %161, align 4
  %162 = load %struct.SN76496*, %struct.SN76496** %3, align 8
  %163 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 4
  %165 = and i32 %164, 1
  %166 = load %struct.SN76496*, %struct.SN76496** %3, align 8
  %167 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %166, i32 0, i32 5
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 3
  store i32 %165, i32* %169, align 4
  br label %170

170:                                              ; preds = %13, %152, %100, %99
  br label %361

171:                                              ; preds = %1
  %172 = load %struct.SN76496*, %struct.SN76496** %3, align 8
  %173 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  store i32 %174, i32* %8, align 4
  %175 = load i32, i32* %8, align 4
  %176 = sdiv i32 %175, 2
  store i32 %176, i32* %9, align 4
  %177 = load i32, i32* %8, align 4
  switch i32 %177, label %360 [
    i32 0, label %178
    i32 2, label %178
    i32 4, label %178
    i32 1, label %256
    i32 3, label %256
    i32 5, label %256
    i32 7, label %256
    i32 6, label %288
  ]

178:                                              ; preds = %171, %171, %171
  %179 = load %struct.SN76496*, %struct.SN76496** %3, align 8
  %180 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %179, i32 0, i32 1
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* %8, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = and i32 %185, 15
  %187 = load i32, i32* %2, align 4
  %188 = and i32 %187, 63
  %189 = shl i32 %188, 4
  %190 = or i32 %186, %189
  %191 = load %struct.SN76496*, %struct.SN76496** %3, align 8
  %192 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %191, i32 0, i32 1
  %193 = load i32*, i32** %192, align 8
  %194 = load i32, i32* %8, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  store i32 %190, i32* %196, align 4
  %197 = load %struct.SN76496*, %struct.SN76496** %3, align 8
  %198 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.SN76496*, %struct.SN76496** %3, align 8
  %201 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %200, i32 0, i32 1
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %8, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = mul nsw i32 %199, %206
  %208 = load %struct.SN76496*, %struct.SN76496** %3, align 8
  %209 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %208, i32 0, i32 2
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* %9, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  store i32 %207, i32* %213, align 4
  %214 = load %struct.SN76496*, %struct.SN76496** %3, align 8
  %215 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %214, i32 0, i32 2
  %216 = load i32*, i32** %215, align 8
  %217 = load i32, i32* %9, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %232

222:                                              ; preds = %178
  %223 = load %struct.SN76496*, %struct.SN76496** %3, align 8
  %224 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.SN76496*, %struct.SN76496** %3, align 8
  %227 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %226, i32 0, i32 2
  %228 = load i32*, i32** %227, align 8
  %229 = load i32, i32* %9, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  store i32 %225, i32* %231, align 4
  br label %232

232:                                              ; preds = %222, %178
  %233 = load i32, i32* %8, align 4
  %234 = icmp eq i32 %233, 4
  br i1 %234, label %235, label %255

235:                                              ; preds = %232
  %236 = load %struct.SN76496*, %struct.SN76496** %3, align 8
  %237 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %236, i32 0, i32 1
  %238 = load i32*, i32** %237, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 6
  %240 = load i32, i32* %239, align 4
  %241 = and i32 %240, 3
  %242 = icmp eq i32 %241, 3
  br i1 %242, label %243, label %254

243:                                              ; preds = %235
  %244 = load %struct.SN76496*, %struct.SN76496** %3, align 8
  %245 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %244, i32 0, i32 2
  %246 = load i32*, i32** %245, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 2
  %248 = load i32, i32* %247, align 4
  %249 = mul nsw i32 2, %248
  %250 = load %struct.SN76496*, %struct.SN76496** %3, align 8
  %251 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %250, i32 0, i32 2
  %252 = load i32*, i32** %251, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 3
  store i32 %249, i32* %253, align 4
  br label %254

254:                                              ; preds = %243, %235
  br label %255

255:                                              ; preds = %254, %232
  br label %360

256:                                              ; preds = %171, %171, %171, %171
  %257 = load %struct.SN76496*, %struct.SN76496** %3, align 8
  %258 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %257, i32 0, i32 7
  %259 = load i32*, i32** %258, align 8
  %260 = load i32, i32* %2, align 4
  %261 = and i32 %260, 15
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %259, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.SN76496*, %struct.SN76496** %3, align 8
  %266 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %265, i32 0, i32 8
  %267 = load i32*, i32** %266, align 8
  %268 = load i32, i32* %9, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %267, i64 %269
  store i32 %264, i32* %270, align 4
  %271 = load %struct.SN76496*, %struct.SN76496** %3, align 8
  %272 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %271, i32 0, i32 1
  %273 = load i32*, i32** %272, align 8
  %274 = load i32, i32* %8, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %273, i64 %275
  %277 = load i32, i32* %276, align 4
  %278 = and i32 %277, 1008
  %279 = load i32, i32* %2, align 4
  %280 = and i32 %279, 15
  %281 = or i32 %278, %280
  %282 = load %struct.SN76496*, %struct.SN76496** %3, align 8
  %283 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %282, i32 0, i32 1
  %284 = load i32*, i32** %283, align 8
  %285 = load i32, i32* %8, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %284, i64 %286
  store i32 %281, i32* %287, align 4
  br label %360

288:                                              ; preds = %171
  %289 = load %struct.SN76496*, %struct.SN76496** %3, align 8
  %290 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %289, i32 0, i32 1
  %291 = load i32*, i32** %290, align 8
  %292 = load i32, i32* %8, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %291, i64 %293
  %295 = load i32, i32* %294, align 4
  %296 = and i32 %295, 1008
  %297 = load i32, i32* %2, align 4
  %298 = and i32 %297, 15
  %299 = or i32 %296, %298
  %300 = load %struct.SN76496*, %struct.SN76496** %3, align 8
  %301 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %300, i32 0, i32 1
  %302 = load i32*, i32** %301, align 8
  %303 = load i32, i32* %8, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32, i32* %302, i64 %304
  store i32 %299, i32* %305, align 4
  %306 = load %struct.SN76496*, %struct.SN76496** %3, align 8
  %307 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %306, i32 0, i32 1
  %308 = load i32*, i32** %307, align 8
  %309 = getelementptr inbounds i32, i32* %308, i64 6
  %310 = load i32, i32* %309, align 4
  store i32 %310, i32* %4, align 4
  %311 = load i32, i32* %4, align 4
  %312 = and i32 %311, 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %316

314:                                              ; preds = %288
  %315 = load i8*, i8** @FB_WNOISE, align 8
  br label %318

316:                                              ; preds = %288
  %317 = load i8*, i8** @FB_PNOISE, align 8
  br label %318

318:                                              ; preds = %316, %314
  %319 = phi i8* [ %315, %314 ], [ %317, %316 ]
  %320 = load %struct.SN76496*, %struct.SN76496** %3, align 8
  %321 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %320, i32 0, i32 6
  store i8* %319, i8** %321, align 8
  %322 = load i32, i32* %4, align 4
  %323 = and i32 %322, 3
  store i32 %323, i32* %4, align 4
  %324 = load i32, i32* %4, align 4
  %325 = and i32 %324, 3
  %326 = icmp eq i32 %325, 3
  br i1 %326, label %327, label %334

327:                                              ; preds = %318
  %328 = load %struct.SN76496*, %struct.SN76496** %3, align 8
  %329 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %328, i32 0, i32 2
  %330 = load i32*, i32** %329, align 8
  %331 = getelementptr inbounds i32, i32* %330, i64 2
  %332 = load i32, i32* %331, align 4
  %333 = mul nsw i32 2, %332
  br label %342

334:                                              ; preds = %318
  %335 = load %struct.SN76496*, %struct.SN76496** %3, align 8
  %336 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %335, i32 0, i32 3
  %337 = load i32, i32* %336, align 8
  %338 = load i32, i32* %4, align 4
  %339 = and i32 %338, 3
  %340 = add nsw i32 5, %339
  %341 = shl i32 %337, %340
  br label %342

342:                                              ; preds = %334, %327
  %343 = phi i32 [ %333, %327 ], [ %341, %334 ]
  %344 = load %struct.SN76496*, %struct.SN76496** %3, align 8
  %345 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %344, i32 0, i32 2
  %346 = load i32*, i32** %345, align 8
  %347 = getelementptr inbounds i32, i32* %346, i64 3
  store i32 %343, i32* %347, align 4
  %348 = load i8*, i8** @NG_PRESET, align 8
  %349 = ptrtoint i8* %348 to i32
  %350 = load %struct.SN76496*, %struct.SN76496** %3, align 8
  %351 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %350, i32 0, i32 4
  store i32 %349, i32* %351, align 4
  %352 = load %struct.SN76496*, %struct.SN76496** %3, align 8
  %353 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %352, i32 0, i32 4
  %354 = load i32, i32* %353, align 4
  %355 = and i32 %354, 1
  %356 = load %struct.SN76496*, %struct.SN76496** %3, align 8
  %357 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %356, i32 0, i32 5
  %358 = load i32*, i32** %357, align 8
  %359 = getelementptr inbounds i32, i32* %358, i64 3
  store i32 %355, i32* %359, align 4
  br label %360

360:                                              ; preds = %171, %342, %256, %255
  br label %361

361:                                              ; preds = %360, %170
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
