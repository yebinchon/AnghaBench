; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..taskstask_patch.c_ups_apply_patch.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..taskstask_patch.c_ups_apply_patch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ups_data = type { i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i64, i64, i64 }

@PATCH_PATCH_INVALID = common dso_local global i32 0, align 4
@PATCH_SOURCE_INVALID = common dso_local global i32 0, align 4
@PATCH_TARGET_ALLOC_FAILED = common dso_local global i32 0, align 4
@PATCH_SUCCESS = common dso_local global i32 0, align 4
@PATCH_TARGET_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32, i32**, i32*)* @ups_apply_patch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ups_apply_patch(i32* %0, i32 %1, i32* %2, i32 %3, i32** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.ups_data, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32** %4, i32*** %12, align 8
  store i32* %5, i32** %13, align 8
  store i64 0, i64* %19, align 8
  store i64 0, i64* %20, align 8
  store i64 0, i64* %21, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = getelementptr inbounds %struct.ups_data, %struct.ups_data* %15, i32 0, i32 0
  store i32* %25, i32** %26, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = getelementptr inbounds %struct.ups_data, %struct.ups_data* %15, i32 0, i32 1
  store i32* %27, i32** %28, align 8
  %29 = load i32**, i32*** %12, align 8
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds %struct.ups_data, %struct.ups_data* %15, i32 0, i32 2
  store i32* %30, i32** %31, align 8
  %32 = load i32, i32* %9, align 4
  %33 = getelementptr inbounds %struct.ups_data, %struct.ups_data* %15, i32 0, i32 3
  store i32 %32, i32* %33, align 8
  %34 = load i32, i32* %11, align 4
  %35 = getelementptr inbounds %struct.ups_data, %struct.ups_data* %15, i32 0, i32 4
  store i32 %34, i32* %35, align 4
  %36 = load i32*, i32** %13, align 8
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.ups_data, %struct.ups_data* %15, i32 0, i32 5
  store i32 %37, i32* %38, align 8
  %39 = getelementptr inbounds %struct.ups_data, %struct.ups_data* %15, i32 0, i32 6
  store i32 0, i32* %39, align 4
  %40 = getelementptr inbounds %struct.ups_data, %struct.ups_data* %15, i32 0, i32 7
  store i32 0, i32* %40, align 8
  %41 = getelementptr inbounds %struct.ups_data, %struct.ups_data* %15, i32 0, i32 8
  store i32 0, i32* %41, align 4
  %42 = getelementptr inbounds %struct.ups_data, %struct.ups_data* %15, i32 0, i32 9
  store i64 -1, i64* %42, align 8
  %43 = getelementptr inbounds %struct.ups_data, %struct.ups_data* %15, i32 0, i32 10
  store i64 -1, i64* %43, align 8
  %44 = getelementptr inbounds %struct.ups_data, %struct.ups_data* %15, i32 0, i32 11
  store i64 -1, i64* %44, align 8
  %45 = getelementptr inbounds %struct.ups_data, %struct.ups_data* %15, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = icmp ult i32 %46, 18
  br i1 %47, label %48, label %50

48:                                               ; preds = %6
  %49 = load i32, i32* @PATCH_PATCH_INVALID, align 4
  store i32 %49, i32* %7, align 4
  br label %280

50:                                               ; preds = %6
  %51 = call i64 @ups_patch_read(%struct.ups_data* %15)
  %52 = icmp ne i64 %51, 85
  br i1 %52, label %62, label %53

53:                                               ; preds = %50
  %54 = call i64 @ups_patch_read(%struct.ups_data* %15)
  %55 = icmp ne i64 %54, 80
  br i1 %55, label %62, label %56

56:                                               ; preds = %53
  %57 = call i64 @ups_patch_read(%struct.ups_data* %15)
  %58 = icmp ne i64 %57, 83
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = call i64 @ups_patch_read(%struct.ups_data* %15)
  %61 = icmp ne i64 %60, 49
  br i1 %61, label %62, label %64

62:                                               ; preds = %59, %56, %53, %50
  %63 = load i32, i32* @PATCH_PATCH_INVALID, align 4
  store i32 %63, i32* %7, align 4
  br label %280

64:                                               ; preds = %59
  %65 = call i64 @ups_decode(%struct.ups_data* %15)
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %16, align 4
  %67 = call i64 @ups_decode(%struct.ups_data* %15)
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %17, align 4
  %69 = getelementptr inbounds %struct.ups_data, %struct.ups_data* %15, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %16, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %64
  %74 = getelementptr inbounds %struct.ups_data, %struct.ups_data* %15, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %17, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i32, i32* @PATCH_SOURCE_INVALID, align 4
  store i32 %79, i32* %7, align 4
  br label %280

80:                                               ; preds = %73, %64
  %81 = getelementptr inbounds %struct.ups_data, %struct.ups_data* %15, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %16, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i32, i32* %17, align 4
  br label %89

87:                                               ; preds = %80
  %88 = load i32, i32* %16, align 4
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i32 [ %86, %85 ], [ %88, %87 ]
  %91 = load i32*, i32** %13, align 8
  store i32 %90, i32* %91, align 4
  %92 = getelementptr inbounds %struct.ups_data, %struct.ups_data* %15, i32 0, i32 5
  %93 = load i32, i32* %92, align 8
  %94 = load i32*, i32** %13, align 8
  %95 = load i32, i32* %94, align 4
  %96 = icmp ult i32 %93, %95
  br i1 %96, label %97, label %116

97:                                               ; preds = %89
  %98 = load i32*, i32** %13, align 8
  %99 = load i32, i32* %98, align 4
  %100 = zext i32 %99 to i64
  %101 = call i64 @malloc(i64 %100)
  %102 = inttoptr i64 %101 to i32*
  store i32* %102, i32** %22, align 8
  %103 = load i32*, i32** %22, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %113

105:                                              ; preds = %97
  %106 = load i32**, i32*** %12, align 8
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @free(i32* %107)
  %109 = load i32*, i32** %22, align 8
  %110 = load i32**, i32*** %12, align 8
  store i32* %109, i32** %110, align 8
  %111 = load i32*, i32** %22, align 8
  %112 = getelementptr inbounds %struct.ups_data, %struct.ups_data* %15, i32 0, i32 2
  store i32* %111, i32** %112, align 8
  br label %115

113:                                              ; preds = %97
  %114 = load i32, i32* @PATCH_TARGET_ALLOC_FAILED, align 4
  store i32 %114, i32* %7, align 4
  br label %280

115:                                              ; preds = %105
  br label %116

116:                                              ; preds = %115, %89
  %117 = load i32*, i32** %13, align 8
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds %struct.ups_data, %struct.ups_data* %15, i32 0, i32 5
  store i32 %118, i32* %119, align 8
  br label %120

120:                                              ; preds = %149, %116
  %121 = getelementptr inbounds %struct.ups_data, %struct.ups_data* %15, i32 0, i32 6
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds %struct.ups_data, %struct.ups_data* %15, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = sub i32 %124, 12
  %126 = icmp ult i32 %122, %125
  br i1 %126, label %127, label %150

127:                                              ; preds = %120
  %128 = call i64 @ups_decode(%struct.ups_data* %15)
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %23, align 4
  br label %130

130:                                              ; preds = %134, %127
  %131 = load i32, i32* %23, align 4
  %132 = add i32 %131, -1
  store i32 %132, i32* %23, align 4
  %133 = icmp ne i32 %131, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = call i32 @ups_source_read(%struct.ups_data* %15)
  %136 = call i32 @ups_target_write(%struct.ups_data* %15, i32 %135)
  br label %130

137:                                              ; preds = %130
  br label %138

138:                                              ; preds = %137, %148
  %139 = call i64 @ups_patch_read(%struct.ups_data* %15)
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %24, align 4
  %141 = load i32, i32* %24, align 4
  %142 = call i32 @ups_source_read(%struct.ups_data* %15)
  %143 = xor i32 %141, %142
  %144 = call i32 @ups_target_write(%struct.ups_data* %15, i32 %143)
  %145 = load i32, i32* %24, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %138
  br label %149

148:                                              ; preds = %138
  br label %138

149:                                              ; preds = %147
  br label %120

150:                                              ; preds = %120
  br label %151

151:                                              ; preds = %157, %150
  %152 = getelementptr inbounds %struct.ups_data, %struct.ups_data* %15, i32 0, i32 7
  %153 = load i32, i32* %152, align 8
  %154 = getelementptr inbounds %struct.ups_data, %struct.ups_data* %15, i32 0, i32 4
  %155 = load i32, i32* %154, align 4
  %156 = icmp ult i32 %153, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %151
  %158 = call i32 @ups_source_read(%struct.ups_data* %15)
  %159 = call i32 @ups_target_write(%struct.ups_data* %15, i32 %158)
  br label %151

160:                                              ; preds = %151
  br label %161

161:                                              ; preds = %167, %160
  %162 = getelementptr inbounds %struct.ups_data, %struct.ups_data* %15, i32 0, i32 8
  %163 = load i32, i32* %162, align 4
  %164 = getelementptr inbounds %struct.ups_data, %struct.ups_data* %15, i32 0, i32 5
  %165 = load i32, i32* %164, align 8
  %166 = icmp ult i32 %163, %165
  br i1 %166, label %167, label %170

167:                                              ; preds = %161
  %168 = call i32 @ups_source_read(%struct.ups_data* %15)
  %169 = call i32 @ups_target_write(%struct.ups_data* %15, i32 %168)
  br label %161

170:                                              ; preds = %161
  store i64 0, i64* %14, align 8
  br label %171

171:                                              ; preds = %181, %170
  %172 = load i64, i64* %14, align 8
  %173 = icmp ult i64 %172, 4
  br i1 %173, label %174, label %184

174:                                              ; preds = %171
  %175 = call i64 @ups_patch_read(%struct.ups_data* %15)
  %176 = load i64, i64* %14, align 8
  %177 = mul i64 %176, 8
  %178 = shl i64 %175, %177
  %179 = load i64, i64* %20, align 8
  %180 = or i64 %179, %178
  store i64 %180, i64* %20, align 8
  br label %181

181:                                              ; preds = %174
  %182 = load i64, i64* %14, align 8
  %183 = add i64 %182, 1
  store i64 %183, i64* %14, align 8
  br label %171

184:                                              ; preds = %171
  store i64 0, i64* %14, align 8
  br label %185

185:                                              ; preds = %195, %184
  %186 = load i64, i64* %14, align 8
  %187 = icmp ult i64 %186, 4
  br i1 %187, label %188, label %198

188:                                              ; preds = %185
  %189 = call i64 @ups_patch_read(%struct.ups_data* %15)
  %190 = load i64, i64* %14, align 8
  %191 = mul i64 %190, 8
  %192 = shl i64 %189, %191
  %193 = load i64, i64* %21, align 8
  %194 = or i64 %193, %192
  store i64 %194, i64* %21, align 8
  br label %195

195:                                              ; preds = %188
  %196 = load i64, i64* %14, align 8
  %197 = add i64 %196, 1
  store i64 %197, i64* %14, align 8
  br label %185

198:                                              ; preds = %185
  %199 = getelementptr inbounds %struct.ups_data, %struct.ups_data* %15, i32 0, i32 9
  %200 = load i64, i64* %199, align 8
  %201 = xor i64 %200, -1
  store i64 %201, i64* %18, align 8
  %202 = getelementptr inbounds %struct.ups_data, %struct.ups_data* %15, i32 0, i32 10
  %203 = load i64, i64* %202, align 8
  %204 = xor i64 %203, -1
  %205 = getelementptr inbounds %struct.ups_data, %struct.ups_data* %15, i32 0, i32 10
  store i64 %204, i64* %205, align 8
  %206 = getelementptr inbounds %struct.ups_data, %struct.ups_data* %15, i32 0, i32 11
  %207 = load i64, i64* %206, align 8
  %208 = xor i64 %207, -1
  %209 = getelementptr inbounds %struct.ups_data, %struct.ups_data* %15, i32 0, i32 11
  store i64 %208, i64* %209, align 8
  store i64 0, i64* %14, align 8
  br label %210

210:                                              ; preds = %220, %198
  %211 = load i64, i64* %14, align 8
  %212 = icmp ult i64 %211, 4
  br i1 %212, label %213, label %223

213:                                              ; preds = %210
  %214 = call i64 @ups_patch_read(%struct.ups_data* %15)
  %215 = load i64, i64* %14, align 8
  %216 = mul i64 %215, 8
  %217 = shl i64 %214, %216
  %218 = load i64, i64* %19, align 8
  %219 = or i64 %218, %217
  store i64 %219, i64* %19, align 8
  br label %220

220:                                              ; preds = %213
  %221 = load i64, i64* %14, align 8
  %222 = add i64 %221, 1
  store i64 %222, i64* %14, align 8
  br label %210

223:                                              ; preds = %210
  %224 = load i64, i64* %18, align 8
  %225 = load i64, i64* %19, align 8
  %226 = icmp ne i64 %224, %225
  br i1 %226, label %227, label %229

227:                                              ; preds = %223
  %228 = load i32, i32* @PATCH_PATCH_INVALID, align 4
  store i32 %228, i32* %7, align 4
  br label %280

229:                                              ; preds = %223
  %230 = getelementptr inbounds %struct.ups_data, %struct.ups_data* %15, i32 0, i32 10
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* %20, align 8
  %233 = icmp eq i64 %231, %232
  br i1 %233, label %234, label %253

234:                                              ; preds = %229
  %235 = getelementptr inbounds %struct.ups_data, %struct.ups_data* %15, i32 0, i32 4
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* %16, align 4
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %239, label %253

239:                                              ; preds = %234
  %240 = getelementptr inbounds %struct.ups_data, %struct.ups_data* %15, i32 0, i32 11
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* %21, align 8
  %243 = icmp eq i64 %241, %242
  br i1 %243, label %244, label %251

244:                                              ; preds = %239
  %245 = getelementptr inbounds %struct.ups_data, %struct.ups_data* %15, i32 0, i32 5
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* %17, align 4
  %248 = icmp eq i32 %246, %247
  br i1 %248, label %249, label %251

249:                                              ; preds = %244
  %250 = load i32, i32* @PATCH_SUCCESS, align 4
  store i32 %250, i32* %7, align 4
  br label %280

251:                                              ; preds = %244, %239
  %252 = load i32, i32* @PATCH_TARGET_INVALID, align 4
  store i32 %252, i32* %7, align 4
  br label %280

253:                                              ; preds = %234, %229
  %254 = getelementptr inbounds %struct.ups_data, %struct.ups_data* %15, i32 0, i32 10
  %255 = load i64, i64* %254, align 8
  %256 = load i64, i64* %21, align 8
  %257 = icmp eq i64 %255, %256
  br i1 %257, label %258, label %277

258:                                              ; preds = %253
  %259 = getelementptr inbounds %struct.ups_data, %struct.ups_data* %15, i32 0, i32 4
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* %17, align 4
  %262 = icmp eq i32 %260, %261
  br i1 %262, label %263, label %277

263:                                              ; preds = %258
  %264 = getelementptr inbounds %struct.ups_data, %struct.ups_data* %15, i32 0, i32 11
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* %20, align 8
  %267 = icmp eq i64 %265, %266
  br i1 %267, label %268, label %275

268:                                              ; preds = %263
  %269 = getelementptr inbounds %struct.ups_data, %struct.ups_data* %15, i32 0, i32 5
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* %16, align 4
  %272 = icmp eq i32 %270, %271
  br i1 %272, label %273, label %275

273:                                              ; preds = %268
  %274 = load i32, i32* @PATCH_SUCCESS, align 4
  store i32 %274, i32* %7, align 4
  br label %280

275:                                              ; preds = %268, %263
  %276 = load i32, i32* @PATCH_TARGET_INVALID, align 4
  store i32 %276, i32* %7, align 4
  br label %280

277:                                              ; preds = %258, %253
  br label %278

278:                                              ; preds = %277
  %279 = load i32, i32* @PATCH_SOURCE_INVALID, align 4
  store i32 %279, i32* %7, align 4
  br label %280

280:                                              ; preds = %278, %275, %273, %251, %249, %227, %113, %78, %62, %48
  %281 = load i32, i32* %7, align 4
  ret i32 %281
}

declare dso_local i64 @ups_patch_read(%struct.ups_data*) #1

declare dso_local i64 @ups_decode(%struct.ups_data*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @ups_target_write(%struct.ups_data*, i32) #1

declare dso_local i32 @ups_source_read(%struct.ups_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
