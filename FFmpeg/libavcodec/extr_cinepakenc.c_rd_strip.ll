; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cinepakenc.c_rd_strip.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cinepakenc.c_rd_strip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i64 }
%struct.TYPE_13__ = type { i32, i32, i64 }

@CODEBOOK_MAX = common dso_local global i32 0, align 4
@MODE_COUNT = common dso_local global i64 0, align 8
@MODE_MC = common dso_local global i64 0, align 8
@MODE_V1_ONLY = common dso_local global i64 0, align 8
@ENC_UNCERTAIN = common dso_local global i32 0, align 4
@MODE_V1_V4 = common dso_local global i64 0, align 8
@ENC_V1 = common dso_local global i32 0, align 4
@ENC_V4 = common dso_local global i32 0, align 4
@STRIP_HEADER_SIZE = common dso_local global i64 0, align 8
@SMALLEST_CODEBOOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32, i32, i32, i32**, i32*, i32**, i32*, i32**, i32*, i8*, i64*)* @rd_strip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rd_strip(%struct.TYPE_14__* %0, i32 %1, i32 %2, i32 %3, i32** %4, i32* %5, i32** %6, i32* %7, i32** %8, i32* %9, i8* %10, i64* %11) #0 {
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32**, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32**, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32**, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_13__, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i64, align 8
  %37 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %13, align 8
  store i32 %1, i32* %14, align 4
  store i32 %2, i32* %15, align 4
  store i32 %3, i32* %16, align 4
  store i32** %4, i32*** %17, align 8
  store i32* %5, i32** %18, align 8
  store i32** %6, i32*** %19, align 8
  store i32* %7, i32** %20, align 8
  store i32** %8, i32*** %21, align 8
  store i32* %9, i32** %22, align 8
  store i8* %10, i8** %23, align 8
  store i64* %11, i64** %24, align 8
  store i64 0, i64* %25, align 8
  store i32 0, i32* %26, align 4
  %38 = load i32, i32* %16, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %12
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %42 = load i32, i32* %15, align 4
  %43 = load i32**, i32*** %17, align 8
  %44 = load i32*, i32** %18, align 8
  %45 = load i32**, i32*** %19, align 8
  %46 = load i32*, i32** %20, align 8
  %47 = call i32 @calculate_skip_errors(%struct.TYPE_14__* %41, i32 %42, i32** %43, i32* %44, i32** %45, i32* %46, %struct.TYPE_13__* %27)
  br label %48

48:                                               ; preds = %40, %12
  store i32 0, i32* %28, align 4
  store i32 1, i32* %29, align 4
  br label %49

49:                                               ; preds = %291, %48
  %50 = load i32, i32* %29, align 4
  %51 = load i32, i32* @CODEBOOK_MAX, align 4
  %52 = icmp sle i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i32, i32* %28, align 4
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  br label %57

57:                                               ; preds = %53, %49
  %58 = phi i1 [ false, %49 ], [ %56, %53 ]
  br i1 %58, label %59, label %294

59:                                               ; preds = %57
  store i32 0, i32* %30, align 4
  store i32 0, i32* %31, align 4
  br label %60

60:                                               ; preds = %288, %59
  %61 = load i32, i32* %31, align 4
  %62 = load i32, i32* %29, align 4
  %63 = icmp sle i32 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i32, i32* %30, align 4
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  br label %68

68:                                               ; preds = %64, %60
  %69 = phi i1 [ false, %60 ], [ %67, %64 ]
  br i1 %69, label %70, label %290

70:                                               ; preds = %68
  store i64 0, i64* %36, align 8
  br label %71

71:                                               ; preds = %269, %70
  %72 = load i64, i64* %36, align 8
  %73 = load i64, i64* @MODE_COUNT, align 8
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %75, label %272

75:                                               ; preds = %71
  %76 = load i32, i32* %16, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = load i64, i64* %36, align 8
  %80 = load i64, i64* @MODE_MC, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  br label %269

83:                                               ; preds = %78, %75
  %84 = load i64, i64* %36, align 8
  %85 = load i64, i64* @MODE_V1_ONLY, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %105

87:                                               ; preds = %83
  %88 = load i32, i32* %29, align 4
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  store i32 %88, i32* %89, align 8
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %91 = load i32, i32* %15, align 4
  %92 = load i32**, i32*** %19, align 8
  %93 = load i32*, i32** %20, align 8
  %94 = load i32, i32* @ENC_UNCERTAIN, align 4
  %95 = call i8* @quantize(%struct.TYPE_14__* %90, i32 %91, i32** %92, i32* %93, i32 1, %struct.TYPE_13__* %27, i32 %94)
  %96 = ptrtoint i8* %95 to i32
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  store i32 %96, i32* %97, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %29, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %87
  store i32 1, i32* %28, align 4
  br label %103

103:                                              ; preds = %102, %87
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 1
  store i32 0, i32* %104, align 4
  br label %131

105:                                              ; preds = %83
  %106 = load i32, i32* %31, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %105
  br label %269

109:                                              ; preds = %105
  %110 = load i64, i64* %36, align 8
  %111 = load i64, i64* @MODE_V1_V4, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %130

113:                                              ; preds = %109
  %114 = load i32, i32* %31, align 4
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 1
  store i32 %114, i32* %115, align 4
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %117 = load i32, i32* %15, align 4
  %118 = load i32**, i32*** %19, align 8
  %119 = load i32*, i32** %20, align 8
  %120 = load i32, i32* @ENC_UNCERTAIN, align 4
  %121 = call i8* @quantize(%struct.TYPE_14__* %116, i32 %117, i32** %118, i32* %119, i32 0, %struct.TYPE_13__* %27, i32 %120)
  %122 = ptrtoint i8* %121 to i32
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 1
  store i32 %122, i32* %123, align 4
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %31, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %113
  store i32 1, i32* %30, align 4
  br label %129

129:                                              ; preds = %128, %113
  br label %130

130:                                              ; preds = %129, %109
  br label %131

131:                                              ; preds = %130, %103
  %132 = load i64, i64* %36, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 2
  store i64 %132, i64* %133, align 8
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %135 = load i32, i32* %15, align 4
  %136 = call i64 @calculate_mode_score(%struct.TYPE_14__* %134, i32 %135, %struct.TYPE_13__* %27, i32 0, i32* %34, i32* %35)
  store i64 %136, i64* %25, align 8
  %137 = load i64, i64* %36, align 8
  %138 = load i64, i64* @MODE_V1_ONLY, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %236

140:                                              ; preds = %131
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  store i32 %143, i32* %37, align 4
  %144 = load i32, i32* %29, align 4
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  store i32 %144, i32* %145, align 8
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %147 = load i32, i32* %15, align 4
  %148 = load i32**, i32*** %19, align 8
  %149 = load i32*, i32** %20, align 8
  %150 = load i32, i32* @ENC_V1, align 4
  %151 = call i8* @quantize(%struct.TYPE_14__* %146, i32 %147, i32** %148, i32* %149, i32 1, %struct.TYPE_13__* %27, i32 %150)
  %152 = ptrtoint i8* %151 to i32
  store i32 %152, i32* %32, align 4
  %153 = load i32, i32* %32, align 4
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp slt i32 %153, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %140
  %158 = load i32, i32* %32, align 4
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  store i32 %158, i32* %159, align 8
  br label %160

160:                                              ; preds = %157, %140
  %161 = load i32, i32* %31, align 4
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 1
  store i32 %161, i32* %162, align 4
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %164 = load i32, i32* %15, align 4
  %165 = load i32**, i32*** %19, align 8
  %166 = load i32*, i32** %20, align 8
  %167 = load i32, i32* @ENC_V4, align 4
  %168 = call i8* @quantize(%struct.TYPE_14__* %163, i32 %164, i32** %165, i32* %166, i32 0, %struct.TYPE_13__* %27, i32 %167)
  %169 = ptrtoint i8* %168 to i32
  store i32 %169, i32* %33, align 4
  %170 = load i32, i32* %33, align 4
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = icmp slt i32 %170, %172
  br i1 %173, label %174, label %177

174:                                              ; preds = %160
  %175 = load i32, i32* %33, align 4
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 1
  store i32 %175, i32* %176, align 4
  br label %177

177:                                              ; preds = %174, %160
  br label %178

178:                                              ; preds = %234, %177
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %180 = load i32, i32* %15, align 4
  %181 = call i64 @calculate_mode_score(%struct.TYPE_14__* %179, i32 %180, %struct.TYPE_13__* %27, i32 1, i32* %34, i32* %35)
  store i64 %181, i64* %25, align 8
  %182 = load i32, i32* %34, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %187, label %184

184:                                              ; preds = %178
  %185 = load i32, i32* %35, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %184, %178
  %188 = load i32, i32* %37, align 4
  %189 = add nsw i32 %188, -1
  store i32 %189, i32* %37, align 4
  %190 = icmp ne i32 %188, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %187, %184
  br label %235

192:                                              ; preds = %187
  %193 = load i32, i32* %34, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %213

195:                                              ; preds = %192
  %196 = load i32, i32* %29, align 4
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  store i32 %196, i32* %197, align 8
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %199 = load i32, i32* %15, align 4
  %200 = load i32**, i32*** %19, align 8
  %201 = load i32*, i32** %20, align 8
  %202 = load i32, i32* @ENC_V1, align 4
  %203 = call i8* @quantize(%struct.TYPE_14__* %198, i32 %199, i32** %200, i32* %201, i32 1, %struct.TYPE_13__* %27, i32 %202)
  %204 = ptrtoint i8* %203 to i32
  store i32 %204, i32* %32, align 4
  %205 = load i32, i32* %32, align 4
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = icmp slt i32 %205, %207
  br i1 %208, label %209, label %212

209:                                              ; preds = %195
  %210 = load i32, i32* %32, align 4
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  store i32 %210, i32* %211, align 8
  br label %212

212:                                              ; preds = %209, %195
  br label %213

213:                                              ; preds = %212, %192
  %214 = load i32, i32* %35, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %234

216:                                              ; preds = %213
  %217 = load i32, i32* %31, align 4
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 1
  store i32 %217, i32* %218, align 4
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %220 = load i32, i32* %15, align 4
  %221 = load i32**, i32*** %19, align 8
  %222 = load i32*, i32** %20, align 8
  %223 = load i32, i32* @ENC_V4, align 4
  %224 = call i8* @quantize(%struct.TYPE_14__* %219, i32 %220, i32** %221, i32* %222, i32 0, %struct.TYPE_13__* %27, i32 %223)
  %225 = ptrtoint i8* %224 to i32
  store i32 %225, i32* %33, align 4
  %226 = load i32, i32* %33, align 4
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = icmp slt i32 %226, %228
  br i1 %229, label %230, label %233

230:                                              ; preds = %216
  %231 = load i32, i32* %33, align 4
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 1
  store i32 %231, i32* %232, align 4
  br label %233

233:                                              ; preds = %230, %216
  br label %234

234:                                              ; preds = %233, %213
  br label %178

235:                                              ; preds = %191
  br label %236

236:                                              ; preds = %235, %131
  %237 = load i32, i32* %26, align 4
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %244, label %239

239:                                              ; preds = %236
  %240 = load i64, i64* %25, align 8
  %241 = load i64*, i64** %24, align 8
  %242 = load i64, i64* %241, align 8
  %243 = icmp slt i64 %240, %242
  br i1 %243, label %244, label %268

244:                                              ; preds = %239, %236
  %245 = load i64, i64* %25, align 8
  %246 = load i64*, i64** %24, align 8
  store i64 %245, i64* %246, align 8
  %247 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %248 = load i32, i32* %15, align 4
  %249 = load i32**, i32*** %21, align 8
  %250 = load i32*, i32** %22, align 8
  %251 = load i32**, i32*** %17, align 8
  %252 = load i32*, i32** %18, align 8
  %253 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %254 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %253, i32 0, i32 1
  %255 = load i64, i64* %254, align 8
  %256 = load i64, i64* @STRIP_HEADER_SIZE, align 8
  %257 = add nsw i64 %255, %256
  %258 = call i32 @encode_mode(%struct.TYPE_14__* %247, i32 %248, i32** %249, i32* %250, i32** %251, i32* %252, %struct.TYPE_13__* %27, i64 %257)
  store i32 %258, i32* %26, align 4
  %259 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %260 = load i32, i32* %14, align 4
  %261 = load i32, i32* %15, align 4
  %262 = load i32, i32* %16, align 4
  %263 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %264 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %263, i32 0, i32 1
  %265 = load i64, i64* %264, align 8
  %266 = load i32, i32* %26, align 4
  %267 = call i32 @write_strip_header(%struct.TYPE_14__* %259, i32 %260, i32 %261, i32 %262, i64 %265, i32 %266)
  br label %268

268:                                              ; preds = %244, %239
  br label %269

269:                                              ; preds = %268, %108, %82
  %270 = load i64, i64* %36, align 8
  %271 = add nsw i64 %270, 1
  store i64 %271, i64* %36, align 8
  br label %71

272:                                              ; preds = %71
  br label %273

273:                                              ; preds = %272
  %274 = load i32, i32* %31, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %279

276:                                              ; preds = %273
  %277 = load i32, i32* %31, align 4
  %278 = shl i32 %277, 2
  br label %288

279:                                              ; preds = %273
  %280 = load i32, i32* %29, align 4
  %281 = icmp sge i32 %280, 4
  br i1 %281, label %282, label %285

282:                                              ; preds = %279
  %283 = load i32, i32* %29, align 4
  %284 = ashr i32 %283, 2
  br label %286

285:                                              ; preds = %279
  br label %286

286:                                              ; preds = %285, %282
  %287 = phi i32 [ %284, %282 ], [ 1, %285 ]
  br label %288

288:                                              ; preds = %286, %276
  %289 = phi i32 [ %278, %276 ], [ %287, %286 ]
  store i32 %289, i32* %31, align 4
  br label %60

290:                                              ; preds = %68
  br label %291

291:                                              ; preds = %290
  %292 = load i32, i32* %29, align 4
  %293 = shl i32 %292, 2
  store i32 %293, i32* %29, align 4
  br label %49

294:                                              ; preds = %57
  %295 = load i64, i64* @STRIP_HEADER_SIZE, align 8
  %296 = load i32, i32* %26, align 4
  %297 = sext i32 %296 to i64
  %298 = add nsw i64 %297, %295
  %299 = trunc i64 %298 to i32
  store i32 %299, i32* %26, align 4
  %300 = load i8*, i8** %23, align 8
  %301 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %302 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %301, i32 0, i32 1
  %303 = load i64, i64* %302, align 8
  %304 = load i32, i32* %26, align 4
  %305 = call i32 @memcpy(i8* %300, i64 %303, i32 %304)
  %306 = load i32, i32* %26, align 4
  ret i32 %306
}

declare dso_local i32 @calculate_skip_errors(%struct.TYPE_14__*, i32, i32**, i32*, i32**, i32*, %struct.TYPE_13__*) #1

declare dso_local i8* @quantize(%struct.TYPE_14__*, i32, i32**, i32*, i32, %struct.TYPE_13__*, i32) #1

declare dso_local i64 @calculate_mode_score(%struct.TYPE_14__*, i32, %struct.TYPE_13__*, i32, i32*, i32*) #1

declare dso_local i32 @encode_mode(%struct.TYPE_14__*, i32, i32**, i32*, i32**, i32*, %struct.TYPE_13__*, i64) #1

declare dso_local i32 @write_strip_header(%struct.TYPE_14__*, i32, i32, i32, i64, i32) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
