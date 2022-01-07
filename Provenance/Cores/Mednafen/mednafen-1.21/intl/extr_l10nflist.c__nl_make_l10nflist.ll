; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/intl/extr_l10nflist.c__nl_make_l10nflist.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/intl/extr_l10nflist.c__nl_make_l10nflist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loaded_l10nfile = type { i8*, i32, %struct.loaded_l10nfile**, %struct.loaded_l10nfile*, i32* }

@XPG_TERRITORY = common dso_local global i32 0, align 4
@XPG_CODESET = common dso_local global i32 0, align 4
@XPG_NORM_CODESET = common dso_local global i32 0, align 4
@XPG_MODIFIER = common dso_local global i32 0, align 4
@PATH_SEPARATOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.loaded_l10nfile* @_nl_make_l10nflist(%struct.loaded_l10nfile** %0, i8* %1, i64 %2, i32 %3, i8* %4, i8* %5, i8* %6, i8* %7, i8* %8, i8* %9, i32 %10) #0 {
  %12 = alloca %struct.loaded_l10nfile*, align 8
  %13 = alloca %struct.loaded_l10nfile**, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca %struct.loaded_l10nfile**, align 8
  %26 = alloca %struct.loaded_l10nfile*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i8*, align 8
  store %struct.loaded_l10nfile** %0, %struct.loaded_l10nfile*** %13, align 8
  store i8* %1, i8** %14, align 8
  store i64 %2, i64* %15, align 8
  store i32 %3, i32* %16, align 4
  store i8* %4, i8** %17, align 8
  store i8* %5, i8** %18, align 8
  store i8* %6, i8** %19, align 8
  store i8* %7, i8** %20, align 8
  store i8* %8, i8** %21, align 8
  store i8* %9, i8** %22, align 8
  store i32 %10, i32* %23, align 4
  %33 = load i8*, i8** %17, align 8
  %34 = call i64 @IS_ABSOLUTE_PATH(i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %11
  store i64 0, i64* %15, align 8
  br label %37

37:                                               ; preds = %36, %11
  %38 = load i64, i64* %15, align 8
  %39 = load i8*, i8** %17, align 8
  %40 = call i32 @strlen(i8* %39)
  %41 = sext i32 %40 to i64
  %42 = add i64 %38, %41
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* @XPG_TERRITORY, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %37
  %48 = load i8*, i8** %18, align 8
  %49 = call i32 @strlen(i8* %48)
  %50 = add nsw i32 %49, 1
  br label %52

51:                                               ; preds = %37
  br label %52

52:                                               ; preds = %51, %47
  %53 = phi i32 [ %50, %47 ], [ 0, %51 ]
  %54 = sext i32 %53 to i64
  %55 = add i64 %42, %54
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* @XPG_CODESET, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  %61 = load i8*, i8** %19, align 8
  %62 = call i32 @strlen(i8* %61)
  %63 = add nsw i32 %62, 1
  br label %65

64:                                               ; preds = %52
  br label %65

65:                                               ; preds = %64, %60
  %66 = phi i32 [ %63, %60 ], [ 0, %64 ]
  %67 = sext i32 %66 to i64
  %68 = add i64 %55, %67
  %69 = load i32, i32* %16, align 4
  %70 = load i32, i32* @XPG_NORM_CODESET, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %65
  %74 = load i8*, i8** %20, align 8
  %75 = call i32 @strlen(i8* %74)
  %76 = add nsw i32 %75, 1
  br label %78

77:                                               ; preds = %65
  br label %78

78:                                               ; preds = %77, %73
  %79 = phi i32 [ %76, %73 ], [ 0, %77 ]
  %80 = sext i32 %79 to i64
  %81 = add i64 %68, %80
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* @XPG_MODIFIER, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %78
  %87 = load i8*, i8** %21, align 8
  %88 = call i32 @strlen(i8* %87)
  %89 = add nsw i32 %88, 1
  br label %91

90:                                               ; preds = %78
  br label %91

91:                                               ; preds = %90, %86
  %92 = phi i32 [ %89, %86 ], [ 0, %90 ]
  %93 = sext i32 %92 to i64
  %94 = add i64 %81, %93
  %95 = add i64 %94, 1
  %96 = load i8*, i8** %22, align 8
  %97 = call i32 @strlen(i8* %96)
  %98 = sext i32 %97 to i64
  %99 = add i64 %95, %98
  %100 = add i64 %99, 1
  %101 = trunc i64 %100 to i32
  %102 = call i64 @malloc(i32 %101)
  %103 = inttoptr i64 %102 to i8*
  store i8* %103, i8** %24, align 8
  %104 = load i8*, i8** %24, align 8
  %105 = icmp eq i8* %104, null
  br i1 %105, label %106, label %107

106:                                              ; preds = %91
  store %struct.loaded_l10nfile* null, %struct.loaded_l10nfile** %12, align 8
  br label %372

107:                                              ; preds = %91
  %108 = load i8*, i8** %24, align 8
  store i8* %108, i8** %27, align 8
  %109 = load i64, i64* %15, align 8
  %110 = icmp ugt i64 %109, 0
  br i1 %110, label %111, label %125

111:                                              ; preds = %107
  %112 = load i8*, i8** %27, align 8
  %113 = load i8*, i8** %14, align 8
  %114 = load i64, i64* %15, align 8
  %115 = call i32 @memcpy(i8* %112, i8* %113, i64 %114)
  %116 = load i8*, i8** %27, align 8
  %117 = load i64, i64* %15, align 8
  %118 = load i32, i32* @PATH_SEPARATOR, align 4
  %119 = call i32 @__argz_stringify(i8* %116, i64 %117, i32 %118)
  %120 = load i64, i64* %15, align 8
  %121 = load i8*, i8** %27, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 %120
  store i8* %122, i8** %27, align 8
  %123 = load i8*, i8** %27, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 -1
  store i8 47, i8* %124, align 1
  br label %125

125:                                              ; preds = %111, %107
  %126 = load i8*, i8** %27, align 8
  %127 = load i8*, i8** %17, align 8
  %128 = call i8* @stpcpy(i8* %126, i8* %127)
  store i8* %128, i8** %27, align 8
  %129 = load i32, i32* %16, align 4
  %130 = load i32, i32* @XPG_TERRITORY, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %125
  %134 = load i8*, i8** %27, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %27, align 8
  store i8 95, i8* %134, align 1
  %136 = load i8*, i8** %27, align 8
  %137 = load i8*, i8** %18, align 8
  %138 = call i8* @stpcpy(i8* %136, i8* %137)
  store i8* %138, i8** %27, align 8
  br label %139

139:                                              ; preds = %133, %125
  %140 = load i32, i32* %16, align 4
  %141 = load i32, i32* @XPG_CODESET, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %139
  %145 = load i8*, i8** %27, align 8
  %146 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %146, i8** %27, align 8
  store i8 46, i8* %145, align 1
  %147 = load i8*, i8** %27, align 8
  %148 = load i8*, i8** %19, align 8
  %149 = call i8* @stpcpy(i8* %147, i8* %148)
  store i8* %149, i8** %27, align 8
  br label %150

150:                                              ; preds = %144, %139
  %151 = load i32, i32* %16, align 4
  %152 = load i32, i32* @XPG_NORM_CODESET, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %150
  %156 = load i8*, i8** %27, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** %27, align 8
  store i8 46, i8* %156, align 1
  %158 = load i8*, i8** %27, align 8
  %159 = load i8*, i8** %20, align 8
  %160 = call i8* @stpcpy(i8* %158, i8* %159)
  store i8* %160, i8** %27, align 8
  br label %161

161:                                              ; preds = %155, %150
  %162 = load i32, i32* %16, align 4
  %163 = load i32, i32* @XPG_MODIFIER, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %161
  %167 = load i8*, i8** %27, align 8
  %168 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %168, i8** %27, align 8
  store i8 64, i8* %167, align 1
  %169 = load i8*, i8** %27, align 8
  %170 = load i8*, i8** %21, align 8
  %171 = call i8* @stpcpy(i8* %169, i8* %170)
  store i8* %171, i8** %27, align 8
  br label %172

172:                                              ; preds = %166, %161
  %173 = load i8*, i8** %27, align 8
  %174 = getelementptr inbounds i8, i8* %173, i32 1
  store i8* %174, i8** %27, align 8
  store i8 47, i8* %173, align 1
  %175 = load i8*, i8** %27, align 8
  %176 = load i8*, i8** %22, align 8
  %177 = call i8* @stpcpy(i8* %175, i8* %176)
  %178 = load %struct.loaded_l10nfile**, %struct.loaded_l10nfile*** %13, align 8
  store %struct.loaded_l10nfile** %178, %struct.loaded_l10nfile*** %25, align 8
  %179 = load %struct.loaded_l10nfile**, %struct.loaded_l10nfile*** %13, align 8
  %180 = load %struct.loaded_l10nfile*, %struct.loaded_l10nfile** %179, align 8
  store %struct.loaded_l10nfile* %180, %struct.loaded_l10nfile** %26, align 8
  br label %181

181:                                              ; preds = %206, %172
  %182 = load %struct.loaded_l10nfile*, %struct.loaded_l10nfile** %26, align 8
  %183 = icmp ne %struct.loaded_l10nfile* %182, null
  br i1 %183, label %184, label %210

184:                                              ; preds = %181
  %185 = load %struct.loaded_l10nfile*, %struct.loaded_l10nfile** %26, align 8
  %186 = getelementptr inbounds %struct.loaded_l10nfile, %struct.loaded_l10nfile* %185, i32 0, i32 0
  %187 = load i8*, i8** %186, align 8
  %188 = icmp ne i8* %187, null
  br i1 %188, label %189, label %205

189:                                              ; preds = %184
  %190 = load %struct.loaded_l10nfile*, %struct.loaded_l10nfile** %26, align 8
  %191 = getelementptr inbounds %struct.loaded_l10nfile, %struct.loaded_l10nfile* %190, i32 0, i32 0
  %192 = load i8*, i8** %191, align 8
  %193 = load i8*, i8** %24, align 8
  %194 = call i32 @strcmp(i8* %192, i8* %193)
  store i32 %194, i32* %31, align 4
  %195 = load i32, i32* %31, align 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %189
  br label %210

198:                                              ; preds = %189
  %199 = load i32, i32* %31, align 4
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %198
  store %struct.loaded_l10nfile* null, %struct.loaded_l10nfile** %26, align 8
  br label %210

202:                                              ; preds = %198
  %203 = load %struct.loaded_l10nfile*, %struct.loaded_l10nfile** %26, align 8
  %204 = getelementptr inbounds %struct.loaded_l10nfile, %struct.loaded_l10nfile* %203, i32 0, i32 3
  store %struct.loaded_l10nfile** %204, %struct.loaded_l10nfile*** %25, align 8
  br label %205

205:                                              ; preds = %202, %184
  br label %206

206:                                              ; preds = %205
  %207 = load %struct.loaded_l10nfile*, %struct.loaded_l10nfile** %26, align 8
  %208 = getelementptr inbounds %struct.loaded_l10nfile, %struct.loaded_l10nfile* %207, i32 0, i32 3
  %209 = load %struct.loaded_l10nfile*, %struct.loaded_l10nfile** %208, align 8
  store %struct.loaded_l10nfile* %209, %struct.loaded_l10nfile** %26, align 8
  br label %181

210:                                              ; preds = %201, %197, %181
  %211 = load %struct.loaded_l10nfile*, %struct.loaded_l10nfile** %26, align 8
  %212 = icmp ne %struct.loaded_l10nfile* %211, null
  br i1 %212, label %216, label %213

213:                                              ; preds = %210
  %214 = load i32, i32* %23, align 4
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %213, %210
  %217 = load i8*, i8** %24, align 8
  %218 = call i32 @free(i8* %217)
  %219 = load %struct.loaded_l10nfile*, %struct.loaded_l10nfile** %26, align 8
  store %struct.loaded_l10nfile* %219, %struct.loaded_l10nfile** %12, align 8
  br label %372

220:                                              ; preds = %213
  %221 = load i64, i64* %15, align 8
  %222 = icmp ugt i64 %221, 0
  br i1 %222, label %223, label %227

223:                                              ; preds = %220
  %224 = load i8*, i8** %14, align 8
  %225 = load i64, i64* %15, align 8
  %226 = call i32 @__argz_count(i8* %224, i64 %225)
  br label %228

227:                                              ; preds = %220
  br label %228

228:                                              ; preds = %227, %223
  %229 = phi i32 [ %226, %223 ], [ 1, %227 ]
  %230 = sext i32 %229 to i64
  store i64 %230, i64* %28, align 8
  %231 = load i64, i64* %28, align 8
  %232 = load i32, i32* %16, align 4
  %233 = call i64 @pop(i32 %232)
  %234 = shl i64 %231, %233
  %235 = load i64, i64* %28, align 8
  %236 = icmp ugt i64 %235, 1
  %237 = zext i1 %236 to i64
  %238 = select i1 %236, i32 1, i32 0
  %239 = sext i32 %238 to i64
  %240 = add i64 %234, %239
  %241 = mul i64 %240, 8
  %242 = add i64 40, %241
  %243 = trunc i64 %242 to i32
  %244 = call i64 @malloc(i32 %243)
  %245 = inttoptr i64 %244 to %struct.loaded_l10nfile*
  store %struct.loaded_l10nfile* %245, %struct.loaded_l10nfile** %26, align 8
  %246 = load %struct.loaded_l10nfile*, %struct.loaded_l10nfile** %26, align 8
  %247 = icmp eq %struct.loaded_l10nfile* %246, null
  br i1 %247, label %248, label %251

248:                                              ; preds = %228
  %249 = load i8*, i8** %24, align 8
  %250 = call i32 @free(i8* %249)
  store %struct.loaded_l10nfile* null, %struct.loaded_l10nfile** %12, align 8
  br label %372

251:                                              ; preds = %228
  %252 = load i8*, i8** %24, align 8
  %253 = load %struct.loaded_l10nfile*, %struct.loaded_l10nfile** %26, align 8
  %254 = getelementptr inbounds %struct.loaded_l10nfile, %struct.loaded_l10nfile* %253, i32 0, i32 0
  store i8* %252, i8** %254, align 8
  %255 = load i64, i64* %28, align 8
  %256 = icmp ugt i64 %255, 1
  br i1 %256, label %269, label %257

257:                                              ; preds = %251
  %258 = load i32, i32* %16, align 4
  %259 = load i32, i32* @XPG_CODESET, align 4
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %267

262:                                              ; preds = %257
  %263 = load i32, i32* %16, align 4
  %264 = load i32, i32* @XPG_NORM_CODESET, align 4
  %265 = and i32 %263, %264
  %266 = icmp ne i32 %265, 0
  br label %267

267:                                              ; preds = %262, %257
  %268 = phi i1 [ false, %257 ], [ %266, %262 ]
  br label %269

269:                                              ; preds = %267, %251
  %270 = phi i1 [ true, %251 ], [ %268, %267 ]
  %271 = zext i1 %270 to i32
  %272 = load %struct.loaded_l10nfile*, %struct.loaded_l10nfile** %26, align 8
  %273 = getelementptr inbounds %struct.loaded_l10nfile, %struct.loaded_l10nfile* %272, i32 0, i32 1
  store i32 %271, i32* %273, align 8
  %274 = load %struct.loaded_l10nfile*, %struct.loaded_l10nfile** %26, align 8
  %275 = getelementptr inbounds %struct.loaded_l10nfile, %struct.loaded_l10nfile* %274, i32 0, i32 4
  store i32* null, i32** %275, align 8
  %276 = load %struct.loaded_l10nfile**, %struct.loaded_l10nfile*** %25, align 8
  %277 = load %struct.loaded_l10nfile*, %struct.loaded_l10nfile** %276, align 8
  %278 = load %struct.loaded_l10nfile*, %struct.loaded_l10nfile** %26, align 8
  %279 = getelementptr inbounds %struct.loaded_l10nfile, %struct.loaded_l10nfile* %278, i32 0, i32 3
  store %struct.loaded_l10nfile* %277, %struct.loaded_l10nfile** %279, align 8
  %280 = load %struct.loaded_l10nfile*, %struct.loaded_l10nfile** %26, align 8
  %281 = load %struct.loaded_l10nfile**, %struct.loaded_l10nfile*** %25, align 8
  store %struct.loaded_l10nfile* %280, %struct.loaded_l10nfile** %281, align 8
  store i64 0, i64* %29, align 8
  %282 = load i64, i64* %28, align 8
  %283 = icmp ugt i64 %282, 1
  br i1 %283, label %284, label %286

284:                                              ; preds = %269
  %285 = load i32, i32* %16, align 4
  br label %289

286:                                              ; preds = %269
  %287 = load i32, i32* %16, align 4
  %288 = sub nsw i32 %287, 1
  br label %289

289:                                              ; preds = %286, %284
  %290 = phi i32 [ %285, %284 ], [ %288, %286 ]
  store i32 %290, i32* %30, align 4
  br label %291

291:                                              ; preds = %362, %289
  %292 = load i32, i32* %30, align 4
  %293 = icmp sge i32 %292, 0
  br i1 %293, label %294, label %365

294:                                              ; preds = %291
  %295 = load i32, i32* %30, align 4
  %296 = load i32, i32* %16, align 4
  %297 = xor i32 %296, -1
  %298 = and i32 %295, %297
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %361

300:                                              ; preds = %294
  %301 = load i32, i32* %30, align 4
  %302 = load i32, i32* @XPG_CODESET, align 4
  %303 = and i32 %301, %302
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %310

305:                                              ; preds = %300
  %306 = load i32, i32* %30, align 4
  %307 = load i32, i32* @XPG_NORM_CODESET, align 4
  %308 = and i32 %306, %307
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %361, label %310

310:                                              ; preds = %305, %300
  %311 = load i64, i64* %28, align 8
  %312 = icmp ugt i64 %311, 1
  br i1 %312, label %313, label %342

313:                                              ; preds = %310
  store i8* null, i8** %32, align 8
  br label %314

314:                                              ; preds = %320, %313
  %315 = load i8*, i8** %14, align 8
  %316 = load i64, i64* %15, align 8
  %317 = load i8*, i8** %32, align 8
  %318 = call i8* @__argz_next(i8* %315, i64 %316, i8* %317)
  store i8* %318, i8** %32, align 8
  %319 = icmp ne i8* %318, null
  br i1 %319, label %320, label %341

320:                                              ; preds = %314
  %321 = load %struct.loaded_l10nfile**, %struct.loaded_l10nfile*** %13, align 8
  %322 = load i8*, i8** %32, align 8
  %323 = load i8*, i8** %32, align 8
  %324 = call i32 @strlen(i8* %323)
  %325 = add nsw i32 %324, 1
  %326 = sext i32 %325 to i64
  %327 = load i32, i32* %30, align 4
  %328 = load i8*, i8** %17, align 8
  %329 = load i8*, i8** %18, align 8
  %330 = load i8*, i8** %19, align 8
  %331 = load i8*, i8** %20, align 8
  %332 = load i8*, i8** %21, align 8
  %333 = load i8*, i8** %22, align 8
  %334 = call %struct.loaded_l10nfile* @_nl_make_l10nflist(%struct.loaded_l10nfile** %321, i8* %322, i64 %326, i32 %327, i8* %328, i8* %329, i8* %330, i8* %331, i8* %332, i8* %333, i32 1)
  %335 = load %struct.loaded_l10nfile*, %struct.loaded_l10nfile** %26, align 8
  %336 = getelementptr inbounds %struct.loaded_l10nfile, %struct.loaded_l10nfile* %335, i32 0, i32 2
  %337 = load %struct.loaded_l10nfile**, %struct.loaded_l10nfile*** %336, align 8
  %338 = load i64, i64* %29, align 8
  %339 = add i64 %338, 1
  store i64 %339, i64* %29, align 8
  %340 = getelementptr inbounds %struct.loaded_l10nfile*, %struct.loaded_l10nfile** %337, i64 %338
  store %struct.loaded_l10nfile* %334, %struct.loaded_l10nfile** %340, align 8
  br label %314

341:                                              ; preds = %314
  br label %360

342:                                              ; preds = %310
  %343 = load %struct.loaded_l10nfile**, %struct.loaded_l10nfile*** %13, align 8
  %344 = load i8*, i8** %14, align 8
  %345 = load i64, i64* %15, align 8
  %346 = load i32, i32* %30, align 4
  %347 = load i8*, i8** %17, align 8
  %348 = load i8*, i8** %18, align 8
  %349 = load i8*, i8** %19, align 8
  %350 = load i8*, i8** %20, align 8
  %351 = load i8*, i8** %21, align 8
  %352 = load i8*, i8** %22, align 8
  %353 = call %struct.loaded_l10nfile* @_nl_make_l10nflist(%struct.loaded_l10nfile** %343, i8* %344, i64 %345, i32 %346, i8* %347, i8* %348, i8* %349, i8* %350, i8* %351, i8* %352, i32 1)
  %354 = load %struct.loaded_l10nfile*, %struct.loaded_l10nfile** %26, align 8
  %355 = getelementptr inbounds %struct.loaded_l10nfile, %struct.loaded_l10nfile* %354, i32 0, i32 2
  %356 = load %struct.loaded_l10nfile**, %struct.loaded_l10nfile*** %355, align 8
  %357 = load i64, i64* %29, align 8
  %358 = add i64 %357, 1
  store i64 %358, i64* %29, align 8
  %359 = getelementptr inbounds %struct.loaded_l10nfile*, %struct.loaded_l10nfile** %356, i64 %357
  store %struct.loaded_l10nfile* %353, %struct.loaded_l10nfile** %359, align 8
  br label %360

360:                                              ; preds = %342, %341
  br label %361

361:                                              ; preds = %360, %305, %294
  br label %362

362:                                              ; preds = %361
  %363 = load i32, i32* %30, align 4
  %364 = add nsw i32 %363, -1
  store i32 %364, i32* %30, align 4
  br label %291

365:                                              ; preds = %291
  %366 = load %struct.loaded_l10nfile*, %struct.loaded_l10nfile** %26, align 8
  %367 = getelementptr inbounds %struct.loaded_l10nfile, %struct.loaded_l10nfile* %366, i32 0, i32 2
  %368 = load %struct.loaded_l10nfile**, %struct.loaded_l10nfile*** %367, align 8
  %369 = load i64, i64* %29, align 8
  %370 = getelementptr inbounds %struct.loaded_l10nfile*, %struct.loaded_l10nfile** %368, i64 %369
  store %struct.loaded_l10nfile* null, %struct.loaded_l10nfile** %370, align 8
  %371 = load %struct.loaded_l10nfile*, %struct.loaded_l10nfile** %26, align 8
  store %struct.loaded_l10nfile* %371, %struct.loaded_l10nfile** %12, align 8
  br label %372

372:                                              ; preds = %365, %248, %216, %106
  %373 = load %struct.loaded_l10nfile*, %struct.loaded_l10nfile** %12, align 8
  ret %struct.loaded_l10nfile* %373
}

declare dso_local i64 @IS_ABSOLUTE_PATH(i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @__argz_stringify(i8*, i64, i32) #1

declare dso_local i8* @stpcpy(i8*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @__argz_count(i8*, i64) #1

declare dso_local i64 @pop(i32) #1

declare dso_local i8* @__argz_next(i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
