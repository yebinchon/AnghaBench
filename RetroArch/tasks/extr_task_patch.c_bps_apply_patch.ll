; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_patch.c_bps_apply_patch.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_patch.c_bps_apply_patch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bps_data = type { i64*, i64*, i64*, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64 }

@PATCH_PATCH_TOO_SMALL = common dso_local global i32 0, align 4
@PATCH_PATCH_INVALID_HEADER = common dso_local global i32 0, align 4
@PATCH_SOURCE_TOO_SMALL = common dso_local global i32 0, align 4
@PATCH_TARGET_ALLOC_FAILED = common dso_local global i32 0, align 4
@PATCH_SOURCE_CHECKSUM_INVALID = common dso_local global i32 0, align 4
@PATCH_TARGET_CHECKSUM_INVALID = common dso_local global i32 0, align 4
@PATCH_PATCH_CHECKSUM_INVALID = common dso_local global i32 0, align 4
@PATCH_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32, i64*, i32, i64**, i32*)* @bps_apply_patch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bps_apply_patch(i64* %0, i32 %1, i64* %2, i32 %3, i64** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.bps_data, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i64* %0, i64** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64* %2, i64** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64** %4, i64*** %12, align 8
  store i32* %5, i32** %13, align 8
  store i64 0, i64* %20, align 8
  store i64 0, i64* %21, align 8
  store i64 0, i64* %22, align 8
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 19
  br i1 %29, label %30, label %32

30:                                               ; preds = %6
  %31 = load i32, i32* @PATCH_PATCH_TOO_SMALL, align 4
  store i32 %31, i32* %7, align 4
  br label %291

32:                                               ; preds = %6
  %33 = load i64*, i64** %8, align 8
  %34 = getelementptr inbounds %struct.bps_data, %struct.bps_data* %19, i32 0, i32 0
  store i64* %33, i64** %34, align 8
  %35 = load i64*, i64** %10, align 8
  %36 = getelementptr inbounds %struct.bps_data, %struct.bps_data* %19, i32 0, i32 1
  store i64* %35, i64** %36, align 8
  %37 = load i64**, i64*** %12, align 8
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds %struct.bps_data, %struct.bps_data* %19, i32 0, i32 2
  store i64* %38, i64** %39, align 8
  %40 = load i32, i32* %9, align 4
  %41 = getelementptr inbounds %struct.bps_data, %struct.bps_data* %19, i32 0, i32 3
  store i32 %40, i32* %41, align 8
  %42 = load i32, i32* %11, align 4
  %43 = getelementptr inbounds %struct.bps_data, %struct.bps_data* %19, i32 0, i32 4
  store i32 %42, i32* %43, align 4
  %44 = load i32*, i32** %13, align 8
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.bps_data, %struct.bps_data* %19, i32 0, i32 5
  store i32 %45, i32* %46, align 8
  %47 = getelementptr inbounds %struct.bps_data, %struct.bps_data* %19, i32 0, i32 6
  store i32 0, i32* %47, align 4
  %48 = getelementptr inbounds %struct.bps_data, %struct.bps_data* %19, i32 0, i32 12
  store i64 0, i64* %48, align 8
  %49 = getelementptr inbounds %struct.bps_data, %struct.bps_data* %19, i32 0, i32 11
  store i64 0, i64* %49, align 8
  %50 = getelementptr inbounds %struct.bps_data, %struct.bps_data* %19, i32 0, i32 7
  store i64 -1, i64* %50, align 8
  %51 = getelementptr inbounds %struct.bps_data, %struct.bps_data* %19, i32 0, i32 8
  store i64 0, i64* %51, align 8
  %52 = getelementptr inbounds %struct.bps_data, %struct.bps_data* %19, i32 0, i32 9
  store i64 -1, i64* %52, align 8
  %53 = getelementptr inbounds %struct.bps_data, %struct.bps_data* %19, i32 0, i32 14
  store i64 0, i64* %53, align 8
  %54 = getelementptr inbounds %struct.bps_data, %struct.bps_data* %19, i32 0, i32 13
  store i64 0, i64* %54, align 8
  %55 = getelementptr inbounds %struct.bps_data, %struct.bps_data* %19, i32 0, i32 10
  store i64 0, i64* %55, align 8
  %56 = call i64 @bps_read(%struct.bps_data* %19)
  %57 = icmp ne i64 %56, 66
  br i1 %57, label %67, label %58

58:                                               ; preds = %32
  %59 = call i64 @bps_read(%struct.bps_data* %19)
  %60 = icmp ne i64 %59, 80
  br i1 %60, label %67, label %61

61:                                               ; preds = %58
  %62 = call i64 @bps_read(%struct.bps_data* %19)
  %63 = icmp ne i64 %62, 83
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = call i64 @bps_read(%struct.bps_data* %19)
  %66 = icmp ne i64 %65, 49
  br i1 %66, label %67, label %69

67:                                               ; preds = %64, %61, %58, %32
  %68 = load i32, i32* @PATCH_PATCH_INVALID_HEADER, align 4
  store i32 %68, i32* %7, align 4
  br label %291

69:                                               ; preds = %64
  %70 = call i64 @bps_decode(%struct.bps_data* %19)
  store i64 %70, i64* %16, align 8
  %71 = call i64 @bps_decode(%struct.bps_data* %19)
  store i64 %71, i64* %17, align 8
  %72 = call i64 @bps_decode(%struct.bps_data* %19)
  store i64 %72, i64* %18, align 8
  store i64 0, i64* %14, align 8
  br label %73

73:                                               ; preds = %79, %69
  %74 = load i64, i64* %14, align 8
  %75 = load i64, i64* %18, align 8
  %76 = icmp ult i64 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = call i64 @bps_read(%struct.bps_data* %19)
  br label %79

79:                                               ; preds = %77
  %80 = load i64, i64* %14, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %14, align 8
  br label %73

82:                                               ; preds = %73
  %83 = load i64, i64* %16, align 8
  %84 = getelementptr inbounds %struct.bps_data, %struct.bps_data* %19, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = icmp ugt i64 %83, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = load i32, i32* @PATCH_SOURCE_TOO_SMALL, align 4
  store i32 %89, i32* %7, align 4
  br label %291

90:                                               ; preds = %82
  %91 = load i64, i64* %17, align 8
  %92 = getelementptr inbounds %struct.bps_data, %struct.bps_data* %19, i32 0, i32 5
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = icmp ugt i64 %91, %94
  br i1 %95, label %96, label %116

96:                                               ; preds = %90
  %97 = load i64, i64* %17, align 8
  %98 = call i64 @malloc(i64 %97)
  %99 = inttoptr i64 %98 to i64*
  store i64* %99, i64** %23, align 8
  %100 = load i64*, i64** %23, align 8
  %101 = icmp ne i64* %100, null
  br i1 %101, label %102, label %113

102:                                              ; preds = %96
  %103 = load i64**, i64*** %12, align 8
  %104 = load i64*, i64** %103, align 8
  %105 = call i32 @free(i64* %104)
  %106 = load i64*, i64** %23, align 8
  %107 = getelementptr inbounds %struct.bps_data, %struct.bps_data* %19, i32 0, i32 2
  store i64* %106, i64** %107, align 8
  %108 = load i64*, i64** %23, align 8
  %109 = load i64**, i64*** %12, align 8
  store i64* %108, i64** %109, align 8
  %110 = load i64, i64* %17, align 8
  %111 = trunc i64 %110 to i32
  %112 = getelementptr inbounds %struct.bps_data, %struct.bps_data* %19, i32 0, i32 5
  store i32 %111, i32* %112, align 8
  br label %115

113:                                              ; preds = %96
  %114 = load i32, i32* @PATCH_TARGET_ALLOC_FAILED, align 4
  store i32 %114, i32* %7, align 4
  br label %291

115:                                              ; preds = %102
  br label %116

116:                                              ; preds = %115, %90
  br label %117

117:                                              ; preds = %212, %116
  %118 = getelementptr inbounds %struct.bps_data, %struct.bps_data* %19, i32 0, i32 6
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds %struct.bps_data, %struct.bps_data* %19, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = sub nsw i32 %121, 12
  %123 = icmp slt i32 %119, %122
  br i1 %123, label %124, label %213

124:                                              ; preds = %117
  %125 = call i64 @bps_decode(%struct.bps_data* %19)
  store i64 %125, i64* %24, align 8
  %126 = load i64, i64* %24, align 8
  %127 = and i64 %126, 3
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %25, align 4
  %129 = load i64, i64* %24, align 8
  %130 = lshr i64 %129, 2
  %131 = add i64 %130, 1
  store i64 %131, i64* %24, align 8
  %132 = load i32, i32* %25, align 4
  switch i32 %132, label %212 [
    i32 130, label %133
    i32 128, label %147
    i32 131, label %156
    i32 129, label %156
  ]

133:                                              ; preds = %124
  br label %134

134:                                              ; preds = %138, %133
  %135 = load i64, i64* %24, align 8
  %136 = add i64 %135, -1
  store i64 %136, i64* %24, align 8
  %137 = icmp ne i64 %135, 0
  br i1 %137, label %138, label %146

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.bps_data, %struct.bps_data* %19, i32 0, i32 1
  %140 = load i64*, i64** %139, align 8
  %141 = getelementptr inbounds %struct.bps_data, %struct.bps_data* %19, i32 0, i32 10
  %142 = load i64, i64* %141, align 8
  %143 = getelementptr inbounds i64, i64* %140, i64 %142
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @bps_write(%struct.bps_data* %19, i64 %144)
  br label %134

146:                                              ; preds = %134
  br label %212

147:                                              ; preds = %124
  br label %148

148:                                              ; preds = %152, %147
  %149 = load i64, i64* %24, align 8
  %150 = add i64 %149, -1
  store i64 %150, i64* %24, align 8
  %151 = icmp ne i64 %149, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %148
  %153 = call i64 @bps_read(%struct.bps_data* %19)
  %154 = call i32 @bps_write(%struct.bps_data* %19, i64 %153)
  br label %148

155:                                              ; preds = %148
  br label %212

156:                                              ; preds = %124, %124
  %157 = call i64 @bps_decode(%struct.bps_data* %19)
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %26, align 4
  %159 = load i32, i32* %26, align 4
  %160 = and i32 %159, 1
  store i32 %160, i32* %27, align 4
  %161 = load i32, i32* %26, align 4
  %162 = ashr i32 %161, 1
  store i32 %162, i32* %26, align 4
  %163 = load i32, i32* %27, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %156
  %166 = load i32, i32* %26, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %26, align 4
  br label %168

168:                                              ; preds = %165, %156
  %169 = load i32, i32* %25, align 4
  %170 = icmp eq i32 %169, 131
  br i1 %170, label %171, label %191

171:                                              ; preds = %168
  %172 = load i32, i32* %26, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.bps_data, %struct.bps_data* %19, i32 0, i32 12
  %175 = load i64, i64* %174, align 8
  %176 = add nsw i64 %175, %173
  store i64 %176, i64* %174, align 8
  br label %177

177:                                              ; preds = %181, %171
  %178 = load i64, i64* %24, align 8
  %179 = add i64 %178, -1
  store i64 %179, i64* %24, align 8
  %180 = icmp ne i64 %178, 0
  br i1 %180, label %181, label %190

181:                                              ; preds = %177
  %182 = getelementptr inbounds %struct.bps_data, %struct.bps_data* %19, i32 0, i32 1
  %183 = load i64*, i64** %182, align 8
  %184 = getelementptr inbounds %struct.bps_data, %struct.bps_data* %19, i32 0, i32 12
  %185 = load i64, i64* %184, align 8
  %186 = add nsw i64 %185, 1
  store i64 %186, i64* %184, align 8
  %187 = getelementptr inbounds i64, i64* %183, i64 %185
  %188 = load i64, i64* %187, align 8
  %189 = call i32 @bps_write(%struct.bps_data* %19, i64 %188)
  br label %177

190:                                              ; preds = %177
  br label %211

191:                                              ; preds = %168
  %192 = load i32, i32* %26, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.bps_data, %struct.bps_data* %19, i32 0, i32 11
  %195 = load i64, i64* %194, align 8
  %196 = add nsw i64 %195, %193
  store i64 %196, i64* %194, align 8
  br label %197

197:                                              ; preds = %201, %191
  %198 = load i64, i64* %24, align 8
  %199 = add i64 %198, -1
  store i64 %199, i64* %24, align 8
  %200 = icmp ne i64 %198, 0
  br i1 %200, label %201, label %210

201:                                              ; preds = %197
  %202 = getelementptr inbounds %struct.bps_data, %struct.bps_data* %19, i32 0, i32 2
  %203 = load i64*, i64** %202, align 8
  %204 = getelementptr inbounds %struct.bps_data, %struct.bps_data* %19, i32 0, i32 11
  %205 = load i64, i64* %204, align 8
  %206 = add nsw i64 %205, 1
  store i64 %206, i64* %204, align 8
  %207 = getelementptr inbounds i64, i64* %203, i64 %205
  %208 = load i64, i64* %207, align 8
  %209 = call i32 @bps_write(%struct.bps_data* %19, i64 %208)
  br label %197

210:                                              ; preds = %197
  br label %212

211:                                              ; preds = %190
  br label %212

212:                                              ; preds = %124, %211, %210, %155, %146
  br label %117

213:                                              ; preds = %117
  store i64 0, i64* %14, align 8
  br label %214

214:                                              ; preds = %223, %213
  %215 = load i64, i64* %14, align 8
  %216 = icmp ult i64 %215, 32
  br i1 %216, label %217, label %226

217:                                              ; preds = %214
  %218 = call i64 @bps_read(%struct.bps_data* %19)
  %219 = load i64, i64* %14, align 8
  %220 = shl i64 %218, %219
  %221 = load i64, i64* %20, align 8
  %222 = or i64 %221, %220
  store i64 %222, i64* %20, align 8
  br label %223

223:                                              ; preds = %217
  %224 = load i64, i64* %14, align 8
  %225 = add i64 %224, 8
  store i64 %225, i64* %14, align 8
  br label %214

226:                                              ; preds = %214
  store i64 0, i64* %14, align 8
  br label %227

227:                                              ; preds = %236, %226
  %228 = load i64, i64* %14, align 8
  %229 = icmp ult i64 %228, 32
  br i1 %229, label %230, label %239

230:                                              ; preds = %227
  %231 = call i64 @bps_read(%struct.bps_data* %19)
  %232 = load i64, i64* %14, align 8
  %233 = shl i64 %231, %232
  %234 = load i64, i64* %21, align 8
  %235 = or i64 %234, %233
  store i64 %235, i64* %21, align 8
  br label %236

236:                                              ; preds = %230
  %237 = load i64, i64* %14, align 8
  %238 = add i64 %237, 8
  store i64 %238, i64* %14, align 8
  br label %227

239:                                              ; preds = %227
  %240 = getelementptr inbounds %struct.bps_data, %struct.bps_data* %19, i32 0, i32 7
  %241 = load i64, i64* %240, align 8
  %242 = xor i64 %241, -1
  store i64 %242, i64* %15, align 8
  store i64 0, i64* %14, align 8
  br label %243

243:                                              ; preds = %252, %239
  %244 = load i64, i64* %14, align 8
  %245 = icmp ult i64 %244, 32
  br i1 %245, label %246, label %255

246:                                              ; preds = %243
  %247 = call i64 @bps_read(%struct.bps_data* %19)
  %248 = load i64, i64* %14, align 8
  %249 = shl i64 %247, %248
  %250 = load i64, i64* %22, align 8
  %251 = or i64 %250, %249
  store i64 %251, i64* %22, align 8
  br label %252

252:                                              ; preds = %246
  %253 = load i64, i64* %14, align 8
  %254 = add i64 %253, 8
  store i64 %254, i64* %14, align 8
  br label %243

255:                                              ; preds = %243
  %256 = getelementptr inbounds %struct.bps_data, %struct.bps_data* %19, i32 0, i32 1
  %257 = load i64*, i64** %256, align 8
  %258 = getelementptr inbounds %struct.bps_data, %struct.bps_data* %19, i32 0, i32 4
  %259 = load i32, i32* %258, align 4
  %260 = sext i32 %259 to i64
  %261 = call i64 @encoding_crc32(i32 0, i64* %257, i64 %260)
  %262 = getelementptr inbounds %struct.bps_data, %struct.bps_data* %19, i32 0, i32 8
  store i64 %261, i64* %262, align 8
  %263 = getelementptr inbounds %struct.bps_data, %struct.bps_data* %19, i32 0, i32 9
  %264 = load i64, i64* %263, align 8
  %265 = xor i64 %264, -1
  %266 = getelementptr inbounds %struct.bps_data, %struct.bps_data* %19, i32 0, i32 9
  store i64 %265, i64* %266, align 8
  %267 = getelementptr inbounds %struct.bps_data, %struct.bps_data* %19, i32 0, i32 8
  %268 = load i64, i64* %267, align 8
  %269 = load i64, i64* %20, align 8
  %270 = icmp ne i64 %268, %269
  br i1 %270, label %271, label %273

271:                                              ; preds = %255
  %272 = load i32, i32* @PATCH_SOURCE_CHECKSUM_INVALID, align 4
  store i32 %272, i32* %7, align 4
  br label %291

273:                                              ; preds = %255
  %274 = getelementptr inbounds %struct.bps_data, %struct.bps_data* %19, i32 0, i32 9
  %275 = load i64, i64* %274, align 8
  %276 = load i64, i64* %21, align 8
  %277 = icmp ne i64 %275, %276
  br i1 %277, label %278, label %280

278:                                              ; preds = %273
  %279 = load i32, i32* @PATCH_TARGET_CHECKSUM_INVALID, align 4
  store i32 %279, i32* %7, align 4
  br label %291

280:                                              ; preds = %273
  %281 = load i64, i64* %15, align 8
  %282 = load i64, i64* %22, align 8
  %283 = icmp ne i64 %281, %282
  br i1 %283, label %284, label %286

284:                                              ; preds = %280
  %285 = load i32, i32* @PATCH_PATCH_CHECKSUM_INVALID, align 4
  store i32 %285, i32* %7, align 4
  br label %291

286:                                              ; preds = %280
  %287 = load i64, i64* %17, align 8
  %288 = trunc i64 %287 to i32
  %289 = load i32*, i32** %13, align 8
  store i32 %288, i32* %289, align 4
  %290 = load i32, i32* @PATCH_SUCCESS, align 4
  store i32 %290, i32* %7, align 4
  br label %291

291:                                              ; preds = %286, %284, %278, %271, %113, %88, %67, %30
  %292 = load i32, i32* %7, align 4
  ret i32 %292
}

declare dso_local i64 @bps_read(%struct.bps_data*) #1

declare dso_local i64 @bps_decode(%struct.bps_data*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @free(i64*) #1

declare dso_local i32 @bps_write(%struct.bps_data*, i64) #1

declare dso_local i64 @encoding_crc32(i32, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
