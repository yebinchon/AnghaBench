; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/sound/extr_sn76496.c_SN76496Update.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/sound/extr_sn76496.c_SN76496Update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN76496 = type { i64*, i32*, i32*, i32, i32, i64* }

@ono_sn = common dso_local global %struct.SN76496 zeroinitializer, align 8
@STEP = common dso_local global i32 0, align 4
@MAX_OUTPUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SN76496Update(i16* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i16*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.SN76496*, align 8
  %9 = alloca [4 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i16* %0, i16** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.SN76496* @ono_sn, %struct.SN76496** %8, align 8
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %51, %3
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 4
  br i1 %15, label %16, label %54

16:                                               ; preds = %13
  %17 = load %struct.SN76496*, %struct.SN76496** %8, align 8
  %18 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %50

25:                                               ; preds = %16
  %26 = load %struct.SN76496*, %struct.SN76496** %8, align 8
  %27 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @STEP, align 4
  %35 = mul nsw i32 %33, %34
  %36 = icmp sle i32 %32, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %25
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @STEP, align 4
  %40 = mul nsw i32 %38, %39
  %41 = load %struct.SN76496*, %struct.SN76496** %8, align 8
  %42 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, %40
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %37, %25
  br label %50

50:                                               ; preds = %49, %16
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %13

54:                                               ; preds = %13
  br label %55

55:                                               ; preds = %424, %54
  %56 = load i32, i32* %5, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %427

58:                                               ; preds = %55
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  store i32 0, i32* %59, align 4
  %60 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  store i32 0, i32* %60, align 8
  %61 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  store i32 0, i32* %61, align 4
  %62 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  store i32 0, i32* %62, align 16
  store i32 0, i32* %7, align 4
  br label %63

63:                                               ; preds = %221, %58
  %64 = load i32, i32* %7, align 4
  %65 = icmp slt i32 %64, 3
  br i1 %65, label %66, label %224

66:                                               ; preds = %63
  %67 = load %struct.SN76496*, %struct.SN76496** %8, align 8
  %68 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %66
  %76 = load %struct.SN76496*, %struct.SN76496** %8, align 8
  %77 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, %82
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %75, %66
  %89 = load i32, i32* @STEP, align 4
  %90 = load %struct.SN76496*, %struct.SN76496** %8, align 8
  %91 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = sub nsw i32 %96, %89
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %166, %88
  %99 = load %struct.SN76496*, %struct.SN76496** %8, align 8
  %100 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = icmp sle i32 %105, 0
  br i1 %106, label %107, label %198

107:                                              ; preds = %98
  %108 = load %struct.SN76496*, %struct.SN76496** %8, align 8
  %109 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %108, i32 0, i32 5
  %110 = load i64*, i64** %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %110, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.SN76496*, %struct.SN76496** %8, align 8
  %116 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %121 to i64
  %123 = add nsw i64 %122, %114
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %120, align 4
  %125 = load %struct.SN76496*, %struct.SN76496** %8, align 8
  %126 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %133, label %166

133:                                              ; preds = %107
  %134 = load %struct.SN76496*, %struct.SN76496** %8, align 8
  %135 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %134, i32 0, i32 2
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = xor i32 %140, 1
  store i32 %141, i32* %139, align 4
  %142 = load %struct.SN76496*, %struct.SN76496** %8, align 8
  %143 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %142, i32 0, i32 2
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %7, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %165

150:                                              ; preds = %133
  %151 = load %struct.SN76496*, %struct.SN76496** %8, align 8
  %152 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %151, i32 0, i32 5
  %153 = load i64*, i64** %152, align 8
  %154 = load i32, i32* %7, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i64, i64* %153, i64 %155
  %157 = load i64, i64* %156, align 8
  %158 = load i32, i32* %7, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = sext i32 %161 to i64
  %163 = add nsw i64 %162, %157
  %164 = trunc i64 %163 to i32
  store i32 %164, i32* %160, align 4
  br label %165

165:                                              ; preds = %150, %133
  br label %198

166:                                              ; preds = %107
  %167 = load %struct.SN76496*, %struct.SN76496** %8, align 8
  %168 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %167, i32 0, i32 5
  %169 = load i64*, i64** %168, align 8
  %170 = load i32, i32* %7, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i64, i64* %169, i64 %171
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.SN76496*, %struct.SN76496** %8, align 8
  %175 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %174, i32 0, i32 1
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* %7, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = sext i32 %180 to i64
  %182 = add nsw i64 %181, %173
  %183 = trunc i64 %182 to i32
  store i32 %183, i32* %179, align 4
  %184 = load %struct.SN76496*, %struct.SN76496** %8, align 8
  %185 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %184, i32 0, i32 5
  %186 = load i64*, i64** %185, align 8
  %187 = load i32, i32* %7, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i64, i64* %186, i64 %188
  %190 = load i64, i64* %189, align 8
  %191 = load i32, i32* %7, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = sext i32 %194 to i64
  %196 = add nsw i64 %195, %190
  %197 = trunc i64 %196 to i32
  store i32 %197, i32* %193, align 4
  br label %98

198:                                              ; preds = %165, %98
  %199 = load %struct.SN76496*, %struct.SN76496** %8, align 8
  %200 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %199, i32 0, i32 2
  %201 = load i32*, i32** %200, align 8
  %202 = load i32, i32* %7, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %220

207:                                              ; preds = %198
  %208 = load %struct.SN76496*, %struct.SN76496** %8, align 8
  %209 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %208, i32 0, i32 1
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* %7, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* %7, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = sub nsw i32 %218, %214
  store i32 %219, i32* %217, align 4
  br label %220

220:                                              ; preds = %207, %198
  br label %221

221:                                              ; preds = %220
  %222 = load i32, i32* %7, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %7, align 4
  br label %63

224:                                              ; preds = %63
  %225 = load i32, i32* @STEP, align 4
  store i32 %225, i32* %11, align 4
  br label %226

226:                                              ; preds = %350, %224
  %227 = load %struct.SN76496*, %struct.SN76496** %8, align 8
  %228 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %227, i32 0, i32 1
  %229 = load i32*, i32** %228, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 3
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* %11, align 4
  %233 = icmp slt i32 %231, %232
  br i1 %233, label %234, label %240

234:                                              ; preds = %226
  %235 = load %struct.SN76496*, %struct.SN76496** %8, align 8
  %236 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %235, i32 0, i32 1
  %237 = load i32*, i32** %236, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 3
  %239 = load i32, i32* %238, align 4
  store i32 %239, i32* %12, align 4
  br label %242

240:                                              ; preds = %226
  %241 = load i32, i32* %11, align 4
  store i32 %241, i32* %12, align 4
  br label %242

242:                                              ; preds = %240, %234
  %243 = load %struct.SN76496*, %struct.SN76496** %8, align 8
  %244 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %243, i32 0, i32 2
  %245 = load i32*, i32** %244, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 3
  %247 = load i32, i32* %246, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %258

249:                                              ; preds = %242
  %250 = load %struct.SN76496*, %struct.SN76496** %8, align 8
  %251 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %250, i32 0, i32 1
  %252 = load i32*, i32** %251, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 3
  %254 = load i32, i32* %253, align 4
  %255 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  %256 = load i32, i32* %255, align 4
  %257 = add nsw i32 %256, %254
  store i32 %257, i32* %255, align 4
  br label %258

258:                                              ; preds = %249, %242
  %259 = load i32, i32* %12, align 4
  %260 = load %struct.SN76496*, %struct.SN76496** %8, align 8
  %261 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %260, i32 0, i32 1
  %262 = load i32*, i32** %261, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 3
  %264 = load i32, i32* %263, align 4
  %265 = sub nsw i32 %264, %259
  store i32 %265, i32* %263, align 4
  %266 = load %struct.SN76496*, %struct.SN76496** %8, align 8
  %267 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %266, i32 0, i32 1
  %268 = load i32*, i32** %267, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 3
  %270 = load i32, i32* %269, align 4
  %271 = icmp sle i32 %270, 0
  br i1 %271, label %272, label %330

272:                                              ; preds = %258
  %273 = load %struct.SN76496*, %struct.SN76496** %8, align 8
  %274 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %273, i32 0, i32 3
  %275 = load i32, i32* %274, align 8
  %276 = and i32 %275, 1
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %286

278:                                              ; preds = %272
  %279 = load %struct.SN76496*, %struct.SN76496** %8, align 8
  %280 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %279, i32 0, i32 4
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.SN76496*, %struct.SN76496** %8, align 8
  %283 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %282, i32 0, i32 3
  %284 = load i32, i32* %283, align 8
  %285 = xor i32 %284, %281
  store i32 %285, i32* %283, align 8
  br label %286

286:                                              ; preds = %278, %272
  %287 = load %struct.SN76496*, %struct.SN76496** %8, align 8
  %288 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %287, i32 0, i32 3
  %289 = load i32, i32* %288, align 8
  %290 = ashr i32 %289, 1
  store i32 %290, i32* %288, align 8
  %291 = load %struct.SN76496*, %struct.SN76496** %8, align 8
  %292 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %291, i32 0, i32 3
  %293 = load i32, i32* %292, align 8
  %294 = and i32 %293, 1
  %295 = load %struct.SN76496*, %struct.SN76496** %8, align 8
  %296 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %295, i32 0, i32 2
  %297 = load i32*, i32** %296, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 3
  store i32 %294, i32* %298, align 4
  %299 = load %struct.SN76496*, %struct.SN76496** %8, align 8
  %300 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %299, i32 0, i32 5
  %301 = load i64*, i64** %300, align 8
  %302 = getelementptr inbounds i64, i64* %301, i64 3
  %303 = load i64, i64* %302, align 8
  %304 = load %struct.SN76496*, %struct.SN76496** %8, align 8
  %305 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %304, i32 0, i32 1
  %306 = load i32*, i32** %305, align 8
  %307 = getelementptr inbounds i32, i32* %306, i64 3
  %308 = load i32, i32* %307, align 4
  %309 = sext i32 %308 to i64
  %310 = add nsw i64 %309, %303
  %311 = trunc i64 %310 to i32
  store i32 %311, i32* %307, align 4
  %312 = load %struct.SN76496*, %struct.SN76496** %8, align 8
  %313 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %312, i32 0, i32 2
  %314 = load i32*, i32** %313, align 8
  %315 = getelementptr inbounds i32, i32* %314, i64 3
  %316 = load i32, i32* %315, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %329

318:                                              ; preds = %286
  %319 = load %struct.SN76496*, %struct.SN76496** %8, align 8
  %320 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %319, i32 0, i32 5
  %321 = load i64*, i64** %320, align 8
  %322 = getelementptr inbounds i64, i64* %321, i64 3
  %323 = load i64, i64* %322, align 8
  %324 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  %325 = load i32, i32* %324, align 4
  %326 = sext i32 %325 to i64
  %327 = add nsw i64 %326, %323
  %328 = trunc i64 %327 to i32
  store i32 %328, i32* %324, align 4
  br label %329

329:                                              ; preds = %318, %286
  br label %330

330:                                              ; preds = %329, %258
  %331 = load %struct.SN76496*, %struct.SN76496** %8, align 8
  %332 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %331, i32 0, i32 2
  %333 = load i32*, i32** %332, align 8
  %334 = getelementptr inbounds i32, i32* %333, i64 3
  %335 = load i32, i32* %334, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %346

337:                                              ; preds = %330
  %338 = load %struct.SN76496*, %struct.SN76496** %8, align 8
  %339 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %338, i32 0, i32 1
  %340 = load i32*, i32** %339, align 8
  %341 = getelementptr inbounds i32, i32* %340, i64 3
  %342 = load i32, i32* %341, align 4
  %343 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  %344 = load i32, i32* %343, align 4
  %345 = sub nsw i32 %344, %342
  store i32 %345, i32* %343, align 4
  br label %346

346:                                              ; preds = %337, %330
  %347 = load i32, i32* %12, align 4
  %348 = load i32, i32* %11, align 4
  %349 = sub nsw i32 %348, %347
  store i32 %349, i32* %11, align 4
  br label %350

350:                                              ; preds = %346
  %351 = load i32, i32* %11, align 4
  %352 = icmp sgt i32 %351, 0
  br i1 %352, label %226, label %353

353:                                              ; preds = %350
  %354 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %355 = load i32, i32* %354, align 16
  %356 = sext i32 %355 to i64
  %357 = load %struct.SN76496*, %struct.SN76496** %8, align 8
  %358 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %357, i32 0, i32 0
  %359 = load i64*, i64** %358, align 8
  %360 = getelementptr inbounds i64, i64* %359, i64 0
  %361 = load i64, i64* %360, align 8
  %362 = mul nsw i64 %356, %361
  %363 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  %364 = load i32, i32* %363, align 4
  %365 = sext i32 %364 to i64
  %366 = load %struct.SN76496*, %struct.SN76496** %8, align 8
  %367 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %366, i32 0, i32 0
  %368 = load i64*, i64** %367, align 8
  %369 = getelementptr inbounds i64, i64* %368, i64 1
  %370 = load i64, i64* %369, align 8
  %371 = mul nsw i64 %365, %370
  %372 = add nsw i64 %362, %371
  %373 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  %374 = load i32, i32* %373, align 8
  %375 = sext i32 %374 to i64
  %376 = load %struct.SN76496*, %struct.SN76496** %8, align 8
  %377 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %376, i32 0, i32 0
  %378 = load i64*, i64** %377, align 8
  %379 = getelementptr inbounds i64, i64* %378, i64 2
  %380 = load i64, i64* %379, align 8
  %381 = mul nsw i64 %375, %380
  %382 = add nsw i64 %372, %381
  %383 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  %384 = load i32, i32* %383, align 4
  %385 = sext i32 %384 to i64
  %386 = load %struct.SN76496*, %struct.SN76496** %8, align 8
  %387 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %386, i32 0, i32 0
  %388 = load i64*, i64** %387, align 8
  %389 = getelementptr inbounds i64, i64* %388, i64 3
  %390 = load i64, i64* %389, align 8
  %391 = mul nsw i64 %385, %390
  %392 = add nsw i64 %382, %391
  %393 = trunc i64 %392 to i32
  store i32 %393, i32* %10, align 4
  %394 = load i32, i32* %10, align 4
  %395 = load i32, i32* @MAX_OUTPUT, align 4
  %396 = load i32, i32* @STEP, align 4
  %397 = mul nsw i32 %395, %396
  %398 = icmp ugt i32 %394, %397
  br i1 %398, label %399, label %403

399:                                              ; preds = %353
  %400 = load i32, i32* @MAX_OUTPUT, align 4
  %401 = load i32, i32* @STEP, align 4
  %402 = mul nsw i32 %400, %401
  store i32 %402, i32* %10, align 4
  br label %403

403:                                              ; preds = %399, %353
  %404 = load i32, i32* @STEP, align 4
  %405 = load i32, i32* %10, align 4
  %406 = udiv i32 %405, %404
  store i32 %406, i32* %10, align 4
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %415

408:                                              ; preds = %403
  %409 = load i32, i32* %10, align 4
  %410 = load i16*, i16** %4, align 8
  %411 = load i16, i16* %410, align 2
  %412 = sext i16 %411 to i32
  %413 = add i32 %412, %409
  %414 = trunc i32 %413 to i16
  store i16 %414, i16* %410, align 2
  br label %415

415:                                              ; preds = %408, %403
  %416 = load i32, i32* %6, align 4
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %418, label %421

418:                                              ; preds = %415
  %419 = load i16*, i16** %4, align 8
  %420 = getelementptr inbounds i16, i16* %419, i64 2
  store i16* %420, i16** %4, align 8
  br label %424

421:                                              ; preds = %415
  %422 = load i16*, i16** %4, align 8
  %423 = getelementptr inbounds i16, i16* %422, i32 1
  store i16* %423, i16** %4, align 8
  br label %424

424:                                              ; preds = %421, %418
  %425 = load i32, i32* %5, align 4
  %426 = add nsw i32 %425, -1
  store i32 %426, i32* %5, align 4
  br label %55

427:                                              ; preds = %55
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
