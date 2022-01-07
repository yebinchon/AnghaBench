; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mlpdec.c_read_decoding_params.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mlpdec.c_read_decoding_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_15__*, %struct.TYPE_11__, %struct.TYPE_12__* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_11__ = type { i32 (i32, i64*, i32, i32)*, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i64*, i32, i64*, i32, %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i64, i64, i32 }

@PARAM_PRESENCE = common dso_local global i32 0, align 4
@PARAM_BLOCKSIZE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Invalid blocksize.\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@PARAM_MATRIX = common dso_local global i32 0, align 4
@PARAM_OUTSHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Negative output_shift\00", align 1
@AV_SAMPLE_FMT_S32 = common dso_local global i64 0, align 8
@PARAM_QUANTSTEP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"quant_step_size larger than huff_lsbs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32*, i32)* @read_decoding_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_decoding_params(%struct.TYPE_13__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 4
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i64 %17
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @PARAM_PRESENCE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %3
  %26 = load i32*, i32** %6, align 8
  %27 = call i64 @get_bits1(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i32*, i32** %6, align 8
  %31 = call i8* @get_bits(i32* %30, i32 8)
  %32 = ptrtoint i8* %31 to i32
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  br label %35

35:                                               ; preds = %29, %25
  br label %36

36:                                               ; preds = %35, %3
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @PARAM_BLOCKSIZE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %76

43:                                               ; preds = %36
  %44 = load i32*, i32** %6, align 8
  %45 = call i64 @get_bits1(i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %75

47:                                               ; preds = %43
  %48 = load i32*, i32** %6, align 8
  %49 = call i8* @get_bits(i32* %48, i32 9)
  %50 = ptrtoint i8* %49 to i32
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %55, 8
  br i1 %56, label %65, label %57

57:                                               ; preds = %47
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp sgt i32 %60, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %57, %47
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %67, align 8
  %69 = load i32, i32* @AV_LOG_ERROR, align 4
  %70 = call i32 @av_log(%struct.TYPE_15__* %68, i32 %69, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 1
  store i32 0, i32* %72, align 4
  %73 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %73, i32* %4, align 4
  br label %316

74:                                               ; preds = %57
  br label %75

75:                                               ; preds = %74, %43
  br label %76

76:                                               ; preds = %75, %36
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @PARAM_MATRIX, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %97

83:                                               ; preds = %76
  %84 = load i32*, i32** %6, align 8
  %85 = call i64 @get_bits1(i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %83
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load i32*, i32** %6, align 8
  %91 = call i32 @read_matrix_params(%struct.TYPE_13__* %88, i32 %89, i32* %90)
  store i32 %91, i32* %10, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = load i32, i32* %10, align 4
  store i32 %94, i32* %4, align 4
  br label %316

95:                                               ; preds = %87
  br label %96

96:                                               ; preds = %95, %83
  br label %97

97:                                               ; preds = %96, %76
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @PARAM_OUTSHIFT, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %181

104:                                              ; preds = %97
  %105 = load i32*, i32** %6, align 8
  %106 = call i64 @get_bits1(i32* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %180

108:                                              ; preds = %104
  store i32 0, i32* %9, align 4
  br label %109

109:                                              ; preds = %144, %108
  %110 = load i32, i32* %9, align 4
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = icmp ule i32 %110, %113
  br i1 %114, label %115, label %147

115:                                              ; preds = %109
  %116 = load i32*, i32** %6, align 8
  %117 = call i64 @get_sbits(i32* %116, i32 4)
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 3
  %120 = load i64*, i64** %119, align 8
  %121 = load i32, i32* %9, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %120, i64 %122
  store i64 %117, i64* %123, align 8
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 3
  %126 = load i64*, i64** %125, align 8
  %127 = load i32, i32* %9, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %126, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = icmp slt i64 %130, 0
  br i1 %131, label %132, label %143

132:                                              ; preds = %115
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 2
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %134, align 8
  %136 = call i32 @avpriv_request_sample(%struct.TYPE_15__* %135, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 3
  %139 = load i64*, i64** %138, align 8
  %140 = load i32, i32* %9, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds i64, i64* %139, i64 %141
  store i64 0, i64* %142, align 8
  br label %143

143:                                              ; preds = %132, %115
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %9, align 4
  %146 = add i32 %145, 1
  store i32 %146, i32* %9, align 4
  br label %109

147:                                              ; preds = %109
  %148 = load i32, i32* %7, align 4
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = icmp eq i32 %148, %151
  br i1 %152, label %153, label %179

153:                                              ; preds = %147
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 0
  %157 = load i32 (i32, i64*, i32, i32)*, i32 (i32, i64*, i32, i32)** %156, align 8
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 8
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 3
  %163 = load i64*, i64** %162, align 8
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 2
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @AV_SAMPLE_FMT_S32, align 8
  %173 = icmp eq i64 %171, %172
  %174 = zext i1 %173 to i32
  %175 = call i32 %157(i32 %160, i64* %163, i32 %166, i32 %174)
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 3
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 1
  store i32 %175, i32* %178, align 8
  br label %179

179:                                              ; preds = %153, %147
  br label %180

180:                                              ; preds = %179, %104
  br label %181

181:                                              ; preds = %180, %97
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @PARAM_QUANTSTEP, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %218

188:                                              ; preds = %181
  %189 = load i32*, i32** %6, align 8
  %190 = call i64 @get_bits1(i32* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %217

192:                                              ; preds = %188
  store i32 0, i32* %9, align 4
  br label %193

193:                                              ; preds = %213, %192
  %194 = load i32, i32* %9, align 4
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 8
  %198 = icmp ule i32 %194, %197
  br i1 %198, label %199, label %216

199:                                              ; preds = %193
  %200 = load i32*, i32** %6, align 8
  %201 = call i8* @get_bits(i32* %200, i32 4)
  %202 = ptrtoint i8* %201 to i64
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 5
  %205 = load i64*, i64** %204, align 8
  %206 = load i32, i32* %9, align 4
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds i64, i64* %205, i64 %207
  store i64 %202, i64* %208, align 8
  %209 = load i32, i32* %9, align 4
  %210 = shl i32 1, %209
  %211 = load i32, i32* %11, align 4
  %212 = or i32 %211, %210
  store i32 %212, i32* %11, align 4
  br label %213

213:                                              ; preds = %199
  %214 = load i32, i32* %9, align 4
  %215 = add i32 %214, 1
  store i32 %215, i32* %9, align 4
  br label %193

216:                                              ; preds = %193
  br label %217

217:                                              ; preds = %216, %188
  br label %218

218:                                              ; preds = %217, %181
  %219 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i32 0, i32 6
  %221 = load i32, i32* %220, align 8
  store i32 %221, i32* %9, align 4
  br label %222

222:                                              ; preds = %246, %218
  %223 = load i32, i32* %9, align 4
  %224 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i32 0, i32 4
  %226 = load i32, i32* %225, align 8
  %227 = icmp ule i32 %223, %226
  br i1 %227, label %228, label %249

228:                                              ; preds = %222
  %229 = load i32*, i32** %6, align 8
  %230 = call i64 @get_bits1(i32* %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %245

232:                                              ; preds = %228
  %233 = load i32, i32* %9, align 4
  %234 = shl i32 1, %233
  %235 = load i32, i32* %11, align 4
  %236 = or i32 %235, %234
  store i32 %236, i32* %11, align 4
  %237 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %238 = load i32, i32* %7, align 4
  %239 = load i32*, i32** %6, align 8
  %240 = load i32, i32* %9, align 4
  %241 = call i32 @read_channel_params(%struct.TYPE_13__* %237, i32 %238, i32* %239, i32 %240)
  store i32 %241, i32* %10, align 4
  %242 = icmp slt i32 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %232
  br label %250

244:                                              ; preds = %232
  br label %245

245:                                              ; preds = %244, %228
  br label %246

246:                                              ; preds = %245
  %247 = load i32, i32* %9, align 4
  %248 = add i32 %247, 1
  store i32 %248, i32* %9, align 4
  br label %222

249:                                              ; preds = %222
  br label %250

250:                                              ; preds = %249, %243
  store i32 0, i32* %9, align 4
  br label %251

251:                                              ; preds = %311, %250
  %252 = load i32, i32* %9, align 4
  %253 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 4
  %255 = load i32, i32* %254, align 8
  %256 = icmp ule i32 %252, %255
  br i1 %256, label %257, label %314

257:                                              ; preds = %251
  %258 = load i32, i32* %11, align 4
  %259 = load i32, i32* %9, align 4
  %260 = shl i32 1, %259
  %261 = and i32 %258, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %310

263:                                              ; preds = %257
  %264 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %265 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %264, i32 0, i32 7
  %266 = load %struct.TYPE_14__*, %struct.TYPE_14__** %265, align 8
  %267 = load i32, i32* %9, align 4
  %268 = zext i32 %267 to i64
  %269 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %266, i64 %268
  store %struct.TYPE_14__* %269, %struct.TYPE_14__** %12, align 8
  %270 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %271 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = icmp sgt i64 %272, 0
  br i1 %273, label %274, label %303

274:                                              ; preds = %263
  %275 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %276 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %275, i32 0, i32 1
  %277 = load i64, i64* %276, align 8
  %278 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %279 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %278, i32 0, i32 5
  %280 = load i64*, i64** %279, align 8
  %281 = load i32, i32* %9, align 4
  %282 = zext i32 %281 to i64
  %283 = getelementptr inbounds i64, i64* %280, i64 %282
  %284 = load i64, i64* %283, align 8
  %285 = icmp slt i64 %277, %284
  br i1 %285, label %286, label %303

286:                                              ; preds = %274
  %287 = load i32, i32* %10, align 4
  %288 = icmp sge i32 %287, 0
  br i1 %288, label %289, label %296

289:                                              ; preds = %286
  %290 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %290, i32 0, i32 2
  %292 = load %struct.TYPE_15__*, %struct.TYPE_15__** %291, align 8
  %293 = load i32, i32* @AV_LOG_ERROR, align 4
  %294 = call i32 @av_log(%struct.TYPE_15__* %292, i32 %293, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %295 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %295, i32* %10, align 4
  br label %296

296:                                              ; preds = %289, %286
  %297 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %298 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %297, i32 0, i32 5
  %299 = load i64*, i64** %298, align 8
  %300 = load i32, i32* %9, align 4
  %301 = zext i32 %300 to i64
  %302 = getelementptr inbounds i64, i64* %299, i64 %301
  store i64 0, i64* %302, align 8
  br label %303

303:                                              ; preds = %296, %274, %263
  %304 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %305 = load i32, i32* %7, align 4
  %306 = load i32, i32* %9, align 4
  %307 = call i32 @calculate_sign_huff(%struct.TYPE_13__* %304, i32 %305, i32 %306)
  %308 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %309 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %308, i32 0, i32 2
  store i32 %307, i32* %309, align 8
  br label %310

310:                                              ; preds = %303, %257
  br label %311

311:                                              ; preds = %310
  %312 = load i32, i32* %9, align 4
  %313 = add i32 %312, 1
  store i32 %313, i32* %9, align 4
  br label %251

314:                                              ; preds = %251
  %315 = load i32, i32* %10, align 4
  store i32 %315, i32* %4, align 4
  br label %316

316:                                              ; preds = %314, %93, %65
  %317 = load i32, i32* %4, align 4
  ret i32 %317
}

declare dso_local i64 @get_bits1(i32*) #1

declare dso_local i8* @get_bits(i32*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_15__*, i32, i8*) #1

declare dso_local i32 @read_matrix_params(%struct.TYPE_13__*, i32, i32*) #1

declare dso_local i64 @get_sbits(i32*, i32) #1

declare dso_local i32 @avpriv_request_sample(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @read_channel_params(%struct.TYPE_13__*, i32, i32*, i32) #1

declare dso_local i32 @calculate_sign_huff(%struct.TYPE_13__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
