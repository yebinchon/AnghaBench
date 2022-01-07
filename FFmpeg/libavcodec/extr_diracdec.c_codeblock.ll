; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_diracdec.c_codeblock.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_diracdec.c_codeblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i64, i64 }
%struct.TYPE_13__ = type { i32, i32, i64, i32* }
%struct.TYPE_15__ = type { i32 }

@CTX_ZERO_BLOCK = common dso_local global i32 0, align 4
@CTX_DELTA_Q_F = common dso_local global i32 0, align 4
@CTX_DELTA_Q_DATA = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Invalid quant\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@DIRAC_MAX_QUANT_INDEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Unsupported quant %d\0A\00", align 1
@ff_dirac_qscale_tab = common dso_local global i32* null, align 8
@ff_dirac_qoffset_intra_tab = common dso_local global i32* null, align 8
@ff_dirac_qoffset_inter_tab = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_13__*, i32*, %struct.TYPE_15__*, i32, i32, i32, i32, i32, i32)* @codeblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @codeblock(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1, i32* %2, %struct.TYPE_15__* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_15__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %12, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %13, align 8
  store i32* %2, i32** %14, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %15, align 8
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  %30 = load i32, i32* %20, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %47, label %32

32:                                               ; preds = %10
  %33 = load i32, i32* %21, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %37 = load i32, i32* @CTX_ZERO_BLOCK, align 4
  %38 = call i32 @dirac_get_arith_bit(%struct.TYPE_15__* %36, i32 %37)
  store i32 %38, i32* %24, align 4
  br label %42

39:                                               ; preds = %32
  %40 = load i32*, i32** %14, align 8
  %41 = call i32 @get_bits1(i32* %40)
  store i32 %41, i32* %24, align 4
  br label %42

42:                                               ; preds = %39, %35
  %43 = load i32, i32* %24, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 0, i32* %11, align 4
  br label %285

46:                                               ; preds = %42
  br label %47

47:                                               ; preds = %46, %10
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %99

52:                                               ; preds = %47
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* %20, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %99, label %60

60:                                               ; preds = %57, %52
  %61 = load i32, i32* %21, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %65 = load i32, i32* @CTX_DELTA_Q_F, align 4
  %66 = load i32, i32* @CTX_DELTA_Q_DATA, align 4
  %67 = call i32 @dirac_get_arith_int(%struct.TYPE_15__* %64, i32 %65, i32 %66)
  store i32 %67, i32* %28, align 4
  br label %71

68:                                               ; preds = %60
  %69 = load i32*, i32** %14, align 8
  %70 = call i32 @dirac_get_se_golomb(i32* %69)
  store i32 %70, i32* %28, align 4
  br label %71

71:                                               ; preds = %68, %63
  %72 = load i32, i32* %28, align 4
  %73 = load i32, i32* @INT_MAX, align 4
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sub nsw i32 %73, %76
  %78 = icmp sgt i32 %72, %77
  br i1 %78, label %86, label %79

79:                                               ; preds = %71
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %28, align 4
  %84 = add nsw i32 %82, %83
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %79, %71
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @AV_LOG_ERROR, align 4
  %91 = call i32 (i32, i32, i8*, ...) @av_log(i32 %89, i32 %90, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %92 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %92, i32* %11, align 4
  br label %285

93:                                               ; preds = %79
  %94 = load i32, i32* %28, align 4
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, %94
  store i32 %98, i32* %96, align 8
  br label %99

99:                                               ; preds = %93, %57, %47
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @DIRAC_MAX_QUANT_INDEX, align 4
  %104 = sub nsw i32 %103, 1
  %105 = icmp sgt i32 %102, %104
  br i1 %105, label %106, label %118

106:                                              ; preds = %99
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @AV_LOG_ERROR, align 4
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 (i32, i32, i8*, ...) @av_log(i32 %109, i32 %110, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %113)
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  store i32 0, i32* %116, align 8
  %117 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %117, i32* %11, align 4
  br label %285

118:                                              ; preds = %99
  %119 = load i32*, i32** @ff_dirac_qscale_tab, align 8
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %119, i64 %123
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %26, align 4
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %139, label %130

130:                                              ; preds = %118
  %131 = load i32*, i32** @ff_dirac_qoffset_intra_tab, align 8
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %131, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, 2
  store i32 %138, i32* %25, align 4
  br label %148

139:                                              ; preds = %118
  %140 = load i32*, i32** @ff_dirac_qoffset_inter_tab, align 8
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %140, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %146, 2
  store i32 %147, i32* %25, align 4
  br label %148

148:                                              ; preds = %139, %130
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 3
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %18, align 4
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = mul nsw i32 %152, %155
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %151, i64 %157
  store i32* %158, i32** %27, align 8
  %159 = load i32, i32* %21, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %226

161:                                              ; preds = %148
  %162 = load i32, i32* %18, align 4
  store i32 %162, i32* %23, align 4
  br label %163

163:                                              ; preds = %222, %161
  %164 = load i32, i32* %23, align 4
  %165 = load i32, i32* %19, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %167, label %225

167:                                              ; preds = %163
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %167
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  store i32 %175, i32* %11, align 4
  br label %285

176:                                              ; preds = %167
  %177 = load i32, i32* %16, align 4
  store i32 %177, i32* %22, align 4
  br label %178

178:                                              ; preds = %212, %176
  %179 = load i32, i32* %22, align 4
  %180 = load i32, i32* %17, align 4
  %181 = icmp slt i32 %179, %180
  br i1 %181, label %182, label %215

182:                                              ; preds = %178
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %199

187:                                              ; preds = %182
  %188 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %189 = load i32, i32* %26, align 4
  %190 = load i32, i32* %25, align 4
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %192 = load i32*, i32** %27, align 8
  %193 = load i32, i32* %22, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %22, align 4
  %197 = load i32, i32* %23, align 4
  %198 = call i32 @coeff_unpack_arith_10(%struct.TYPE_15__* %188, i32 %189, i32 %190, %struct.TYPE_13__* %191, i32* %195, i32 %196, i32 %197)
  br label %211

199:                                              ; preds = %182
  %200 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %201 = load i32, i32* %26, align 4
  %202 = load i32, i32* %25, align 4
  %203 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %204 = load i32*, i32** %27, align 8
  %205 = load i32, i32* %22, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = load i32, i32* %22, align 4
  %209 = load i32, i32* %23, align 4
  %210 = call i32 @coeff_unpack_arith_8(%struct.TYPE_15__* %200, i32 %201, i32 %202, %struct.TYPE_13__* %203, i32* %207, i32 %208, i32 %209)
  br label %211

211:                                              ; preds = %199, %187
  br label %212

212:                                              ; preds = %211
  %213 = load i32, i32* %22, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %22, align 4
  br label %178

215:                                              ; preds = %178
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = load i32*, i32** %27, align 8
  %220 = sext i32 %218 to i64
  %221 = getelementptr inbounds i32, i32* %219, i64 %220
  store i32* %221, i32** %27, align 8
  br label %222

222:                                              ; preds = %215
  %223 = load i32, i32* %23, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %23, align 4
  br label %163

225:                                              ; preds = %163
  br label %284

226:                                              ; preds = %148
  %227 = load i32, i32* %18, align 4
  store i32 %227, i32* %23, align 4
  br label %228

228:                                              ; preds = %280, %226
  %229 = load i32, i32* %23, align 4
  %230 = load i32, i32* %19, align 4
  %231 = icmp slt i32 %229, %230
  br i1 %231, label %232, label %283

232:                                              ; preds = %228
  %233 = load i32*, i32** %14, align 8
  %234 = call i32 @get_bits_left(i32* %233)
  %235 = icmp slt i32 %234, 1
  br i1 %235, label %236, label %238

236:                                              ; preds = %232
  %237 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %237, i32* %11, align 4
  br label %285

238:                                              ; preds = %232
  %239 = load i32, i32* %16, align 4
  store i32 %239, i32* %22, align 4
  br label %240

240:                                              ; preds = %270, %238
  %241 = load i32, i32* %22, align 4
  %242 = load i32, i32* %17, align 4
  %243 = icmp slt i32 %241, %242
  br i1 %243, label %244, label %273

244:                                              ; preds = %240
  %245 = load i32*, i32** %14, align 8
  %246 = load i32, i32* %26, align 4
  %247 = load i32, i32* %25, align 4
  %248 = call i32 @coeff_unpack_golomb(i32* %245, i32 %246, i32 %247)
  store i32 %248, i32* %29, align 4
  %249 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %250 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %249, i32 0, i32 2
  %251 = load i64, i64* %250, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %261

253:                                              ; preds = %244
  %254 = load i32*, i32** %27, align 8
  %255 = load i32, i32* %22, align 4
  %256 = mul nsw i32 4, %255
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %254, i64 %257
  %259 = load i32, i32* %29, align 4
  %260 = call i32 @AV_WN32(i32* %258, i32 %259)
  br label %269

261:                                              ; preds = %244
  %262 = load i32*, i32** %27, align 8
  %263 = load i32, i32* %22, align 4
  %264 = mul nsw i32 2, %263
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %262, i64 %265
  %267 = load i32, i32* %29, align 4
  %268 = call i32 @AV_WN16(i32* %266, i32 %267)
  br label %269

269:                                              ; preds = %261, %253
  br label %270

270:                                              ; preds = %269
  %271 = load i32, i32* %22, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %22, align 4
  br label %240

273:                                              ; preds = %240
  %274 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %275 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = load i32*, i32** %27, align 8
  %278 = sext i32 %276 to i64
  %279 = getelementptr inbounds i32, i32* %277, i64 %278
  store i32* %279, i32** %27, align 8
  br label %280

280:                                              ; preds = %273
  %281 = load i32, i32* %23, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %23, align 4
  br label %228

283:                                              ; preds = %228
  br label %284

284:                                              ; preds = %283, %225
  store i32 0, i32* %11, align 4
  br label %285

285:                                              ; preds = %284, %236, %172, %106, %86, %45
  %286 = load i32, i32* %11, align 4
  ret i32 %286
}

declare dso_local i32 @dirac_get_arith_bit(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i32 @dirac_get_arith_int(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @dirac_get_se_golomb(i32*) #1

declare dso_local i32 @av_log(i32, i32, i8*, ...) #1

declare dso_local i32 @coeff_unpack_arith_10(%struct.TYPE_15__*, i32, i32, %struct.TYPE_13__*, i32*, i32, i32) #1

declare dso_local i32 @coeff_unpack_arith_8(%struct.TYPE_15__*, i32, i32, %struct.TYPE_13__*, i32*, i32, i32) #1

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local i32 @coeff_unpack_golomb(i32*, i32, i32) #1

declare dso_local i32 @AV_WN32(i32*, i32) #1

declare dso_local i32 @AV_WN16(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
