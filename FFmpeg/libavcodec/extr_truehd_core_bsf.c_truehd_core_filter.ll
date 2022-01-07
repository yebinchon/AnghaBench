; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_truehd_core_bsf.c_truehd_core_filter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_truehd_core_bsf.c_truehd_core_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32* }
%struct.TYPE_14__ = type { i32*, i32, i32 }

@MAX_SUBSTREAMS = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_15__*)* @truehd_core_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @truehd_core_filter(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca [28 x i32], align 16
  %26 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  store %struct.TYPE_13__* %29, %struct.TYPE_13__** %6, align 8
  %30 = load i32, i32* @MAX_SUBSTREAMS, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %8, align 8
  %33 = alloca %struct.TYPE_14__, i64 %31, align 16
  store i64 %31, i64* %9, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %36 = call i32 @ff_bsf_get_packet_ref(%struct.TYPE_16__* %34, %struct.TYPE_15__* %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %2
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %416

41:                                               ; preds = %2
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %44, 4
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %47, i32* %10, align 4
  br label %408

48:                                               ; preds = %41
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @AV_RB16(i32* %51)
  %53 = and i32 %52, 4095
  %54 = mul nsw i32 %53, 2
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp slt i32 %55, 4
  br i1 %56, label %63, label %57

57:                                               ; preds = %48
  %58 = load i32, i32* %13, align 4
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp sgt i32 %58, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %57, %48
  %64 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %64, i32* %10, align 4
  br label %408

65:                                               ; preds = %57
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 4
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sub nsw i32 %72, 4
  %74 = call i32 @init_get_bits8(i32* %7, i32* %69, i32 %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %65
  br label %408

78:                                               ; preds = %65
  %79 = call i32 @show_bits_long(i32* %7, i32 32)
  %80 = icmp eq i32 %79, -126718022
  br i1 %80, label %81, label %89

81:                                               ; preds = %78
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = call i32 @ff_mlp_read_major_sync(%struct.TYPE_16__* %82, %struct.TYPE_17__* %84, i32* %7)
  store i32 %85, i32* %10, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %408

88:                                               ; preds = %81
  store i32 1, i32* %15, align 4
  br label %89

89:                                               ; preds = %88, %78
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @MAX_SUBSTREAMS, align 4
  %95 = icmp sgt i32 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %89
  %97 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %97, i32* %10, align 4
  br label %408

98:                                               ; preds = %89
  store i32 0, i32* %11, align 4
  br label %99

99:                                               ; preds = %164, %98
  %100 = load i32, i32* %11, align 4
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp slt i32 %100, %104
  br i1 %105, label %106, label %167

106:                                              ; preds = %99
  store i32 0, i32* %19, align 4
  br label %107

107:                                              ; preds = %120, %106
  %108 = load i32, i32* %19, align 4
  %109 = icmp slt i32 %108, 4
  br i1 %109, label %110, label %123

110:                                              ; preds = %107
  %111 = call i32 @get_bits1(i32* %7)
  %112 = load i32, i32* %11, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 16
  %117 = load i32, i32* %19, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  store i32 %111, i32* %119, align 4
  br label %120

120:                                              ; preds = %110
  %121 = load i32, i32* %19, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %19, align 4
  br label %107

123:                                              ; preds = %107
  %124 = call i8* @get_bits(i32* %7, i32 12)
  %125 = ptrtoint i8* %124 to i32
  %126 = load i32, i32* %11, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 1
  store i32 %125, i32* %129, align 8
  %130 = load i32, i32* %11, align 4
  %131 = icmp slt i32 %130, 3
  br i1 %131, label %132, label %141

132:                                              ; preds = %123
  %133 = load i32, i32* %11, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = mul nsw i32 %137, 2
  store i32 %138, i32* %12, align 4
  %139 = load i32, i32* %16, align 4
  %140 = add nsw i32 %139, 2
  store i32 %140, i32* %16, align 4
  br label %141

141:                                              ; preds = %132, %123
  %142 = load i32, i32* %11, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 16
  %147 = getelementptr inbounds i32, i32* %146, i64 0
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %163

150:                                              ; preds = %141
  %151 = call i8* @get_bits(i32* %7, i32 16)
  %152 = ptrtoint i8* %151 to i32
  %153 = load i32, i32* %11, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 2
  store i32 %152, i32* %156, align 4
  %157 = load i32, i32* %11, align 4
  %158 = icmp slt i32 %157, 3
  br i1 %158, label %159, label %162

159:                                              ; preds = %150
  %160 = load i32, i32* %16, align 4
  %161 = add nsw i32 %160, 2
  store i32 %161, i32* %16, align 4
  br label %162

162:                                              ; preds = %159, %150
  br label %163

163:                                              ; preds = %162, %141
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %11, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %11, align 4
  br label %99

167:                                              ; preds = %99
  %168 = call i32 @get_bits_count(i32* %7)
  %169 = ashr i32 %168, 3
  store i32 %169, i32* %17, align 4
  %170 = load i32, i32* %17, align 4
  %171 = add nsw i32 %170, 4
  %172 = load i32, i32* %12, align 4
  %173 = add nsw i32 %171, %172
  store i32 %173, i32* %14, align 4
  %174 = load i32, i32* %14, align 4
  %175 = load i32, i32* %13, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %407

177:                                              ; preds = %167
  store i32 0, i32* %20, align 4
  %178 = load i32, i32* %17, align 4
  %179 = load i32, i32* %15, align 4
  %180 = mul nsw i32 %179, 28
  %181 = sub nsw i32 %178, %180
  %182 = load i32, i32* %16, align 4
  %183 = sub nsw i32 %181, %182
  store i32 %183, i32* %21, align 4
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 1
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 2
  %188 = call i32 @AV_RB16(i32* %187)
  store i32 %188, i32* %23, align 4
  %189 = load i32, i32* %21, align 4
  %190 = icmp sge i32 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %177
  %192 = load i32, i32* %21, align 4
  %193 = srem i32 %192, 2
  %194 = icmp eq i32 %193, 0
  br label %195

195:                                              ; preds = %191, %177
  %196 = phi i1 [ false, %177 ], [ %194, %191 ]
  %197 = zext i1 %196 to i32
  %198 = call i32 @av_assert1(i32 %197)
  %199 = load i32, i32* %15, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %230

201:                                              ; preds = %195
  %202 = getelementptr inbounds [28 x i32], [28 x i32]* %25, i64 0, i64 0
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i32 0, i32 1
  %205 = load i32*, i32** %204, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 4
  %207 = call i32 @memcpy(i32* %202, i32* %206, i32 28)
  %208 = getelementptr inbounds [28 x i32], [28 x i32]* %25, i64 0, i64 16
  %209 = load i32, i32* %208, align 16
  %210 = and i32 %209, 12
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @FFMIN(i32 %214, i32 3)
  %216 = shl i32 %215, 4
  %217 = or i32 %210, %216
  %218 = getelementptr inbounds [28 x i32], [28 x i32]* %25, i64 0, i64 16
  store i32 %217, i32* %218, align 16
  %219 = getelementptr inbounds [28 x i32], [28 x i32]* %25, i64 0, i64 17
  %220 = load i32, i32* %219, align 4
  %221 = and i32 %220, 127
  store i32 %221, i32* %219, align 4
  %222 = getelementptr inbounds [28 x i32], [28 x i32]* %25, i64 0, i64 25
  %223 = load i32, i32* %222, align 4
  %224 = and i32 %223, 254
  store i32 %224, i32* %222, align 4
  %225 = getelementptr inbounds [28 x i32], [28 x i32]* %25, i64 0, i64 0
  %226 = getelementptr inbounds i32, i32* %225, i64 26
  %227 = getelementptr inbounds [28 x i32], [28 x i32]* %25, i64 0, i64 0
  %228 = call i32 @ff_mlp_checksum16(i32* %227, i32 26)
  %229 = call i32 @AV_WL16(i32* %226, i32 %228)
  br label %230

230:                                              ; preds = %201, %195
  %231 = load i32, i32* %21, align 4
  %232 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %232, i32 0, i32 1
  %234 = load i32*, i32** %233, align 8
  %235 = sext i32 %231 to i64
  %236 = getelementptr inbounds i32, i32* %234, i64 %235
  store i32* %236, i32** %233, align 8
  %237 = load i32, i32* %21, align 4
  %238 = load i32, i32* %14, align 4
  %239 = sub nsw i32 %238, %237
  store i32 %239, i32* %14, align 4
  %240 = load i32, i32* %14, align 4
  %241 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %241, i32 0, i32 0
  store i32 %240, i32* %242, align 8
  %243 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %244 = call i32 @av_packet_make_writable(%struct.TYPE_15__* %243)
  store i32 %244, i32* %10, align 4
  %245 = load i32, i32* %10, align 4
  %246 = icmp slt i32 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %230
  br label %408

248:                                              ; preds = %230
  %249 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %249, i32 0, i32 1
  %251 = load i32*, i32** %250, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 2
  %253 = load i32, i32* %23, align 4
  %254 = call i32 @AV_WB16(i32* %252, i32 %253)
  %255 = load i32, i32* %23, align 4
  store i32 %255, i32* %22, align 4
  %256 = load i32, i32* %14, align 4
  %257 = sdiv i32 %256, 2
  %258 = load i32, i32* %22, align 4
  %259 = xor i32 %258, %257
  store i32 %259, i32* %22, align 4
  store i32 0, i32* %11, align 4
  br label %260

260:                                              ; preds = %370, %248
  %261 = load i32, i32* %11, align 4
  %262 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %263 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = call i32 @FFMIN(i32 %265, i32 3)
  %267 = icmp slt i32 %261, %266
  br i1 %267, label %268, label %373

268:                                              ; preds = %260
  store i32 0, i32* %26, align 4
  %269 = load i32, i32* %11, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %271, i32 0, i32 0
  %273 = load i32*, i32** %272, align 16
  %274 = getelementptr inbounds i32, i32* %273, i64 0
  %275 = load i32, i32* %274, align 4
  %276 = shl i32 %275, 15
  %277 = load i32, i32* %26, align 4
  %278 = or i32 %277, %276
  store i32 %278, i32* %26, align 4
  %279 = load i32, i32* %11, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %281, i32 0, i32 0
  %283 = load i32*, i32** %282, align 16
  %284 = getelementptr inbounds i32, i32* %283, i64 1
  %285 = load i32, i32* %284, align 4
  %286 = shl i32 %285, 14
  %287 = load i32, i32* %26, align 4
  %288 = or i32 %287, %286
  store i32 %288, i32* %26, align 4
  %289 = load i32, i32* %11, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i64 %290
  %292 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %291, i32 0, i32 0
  %293 = load i32*, i32** %292, align 16
  %294 = getelementptr inbounds i32, i32* %293, i64 2
  %295 = load i32, i32* %294, align 4
  %296 = shl i32 %295, 13
  %297 = load i32, i32* %26, align 4
  %298 = or i32 %297, %296
  store i32 %298, i32* %26, align 4
  %299 = load i32, i32* %11, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i64 %300
  %302 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %301, i32 0, i32 0
  %303 = load i32*, i32** %302, align 16
  %304 = getelementptr inbounds i32, i32* %303, i64 3
  %305 = load i32, i32* %304, align 4
  %306 = shl i32 %305, 12
  %307 = load i32, i32* %26, align 4
  %308 = or i32 %307, %306
  store i32 %308, i32* %26, align 4
  %309 = load i32, i32* %11, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i64 %310
  %312 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 8
  %314 = load i32, i32* %26, align 4
  %315 = or i32 %314, %313
  store i32 %315, i32* %26, align 4
  %316 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %317 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %316, i32 0, i32 1
  %318 = load i32*, i32** %317, align 8
  %319 = load i32, i32* %15, align 4
  %320 = mul nsw i32 %319, 28
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i32, i32* %318, i64 %321
  %323 = getelementptr inbounds i32, i32* %322, i64 4
  %324 = load i32, i32* %20, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32, i32* %323, i64 %325
  %327 = load i32, i32* %26, align 4
  %328 = call i32 @AV_WB16(i32* %326, i32 %327)
  %329 = load i32, i32* %26, align 4
  %330 = load i32, i32* %22, align 4
  %331 = xor i32 %330, %329
  store i32 %331, i32* %22, align 4
  %332 = load i32, i32* %20, align 4
  %333 = add nsw i32 %332, 2
  store i32 %333, i32* %20, align 4
  %334 = load i32, i32* %11, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i64 %335
  %337 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %336, i32 0, i32 0
  %338 = load i32*, i32** %337, align 16
  %339 = getelementptr inbounds i32, i32* %338, i64 0
  %340 = load i32, i32* %339, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %369

342:                                              ; preds = %268
  %343 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %344 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %343, i32 0, i32 1
  %345 = load i32*, i32** %344, align 8
  %346 = load i32, i32* %15, align 4
  %347 = mul nsw i32 %346, 28
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i32, i32* %345, i64 %348
  %350 = getelementptr inbounds i32, i32* %349, i64 4
  %351 = load i32, i32* %20, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i32, i32* %350, i64 %352
  %354 = load i32, i32* %11, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i64 %355
  %357 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %356, i32 0, i32 2
  %358 = load i32, i32* %357, align 4
  %359 = call i32 @AV_WB16(i32* %353, i32 %358)
  %360 = load i32, i32* %11, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i64 %361
  %363 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %362, i32 0, i32 2
  %364 = load i32, i32* %363, align 4
  %365 = load i32, i32* %22, align 4
  %366 = xor i32 %365, %364
  store i32 %366, i32* %22, align 4
  %367 = load i32, i32* %20, align 4
  %368 = add nsw i32 %367, 2
  store i32 %368, i32* %20, align 4
  br label %369

369:                                              ; preds = %342, %268
  br label %370

370:                                              ; preds = %369
  %371 = load i32, i32* %11, align 4
  %372 = add nsw i32 %371, 1
  store i32 %372, i32* %11, align 4
  br label %260

373:                                              ; preds = %260
  %374 = load i32, i32* %22, align 4
  %375 = ashr i32 %374, 8
  %376 = load i32, i32* %22, align 4
  %377 = xor i32 %376, %375
  store i32 %377, i32* %22, align 4
  %378 = load i32, i32* %22, align 4
  %379 = ashr i32 %378, 4
  %380 = load i32, i32* %22, align 4
  %381 = xor i32 %380, %379
  store i32 %381, i32* %22, align 4
  %382 = load i32, i32* %22, align 4
  %383 = and i32 %382, 15
  store i32 %383, i32* %22, align 4
  %384 = load i32, i32* %22, align 4
  %385 = xor i32 %384, 15
  %386 = shl i32 %385, 12
  store i32 %386, i32* %24, align 4
  %387 = load i32, i32* %14, align 4
  %388 = sdiv i32 %387, 2
  %389 = and i32 %388, 4095
  %390 = load i32, i32* %24, align 4
  %391 = or i32 %390, %389
  store i32 %391, i32* %24, align 4
  %392 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %393 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %392, i32 0, i32 1
  %394 = load i32*, i32** %393, align 8
  %395 = load i32, i32* %24, align 4
  %396 = call i32 @AV_WB16(i32* %394, i32 %395)
  %397 = load i32, i32* %15, align 4
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %406

399:                                              ; preds = %373
  %400 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %401 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %400, i32 0, i32 1
  %402 = load i32*, i32** %401, align 8
  %403 = getelementptr inbounds i32, i32* %402, i64 4
  %404 = getelementptr inbounds [28 x i32], [28 x i32]* %25, i64 0, i64 0
  %405 = call i32 @memcpy(i32* %403, i32* %404, i32 28)
  br label %406

406:                                              ; preds = %399, %373
  br label %407

407:                                              ; preds = %406, %167
  br label %408

408:                                              ; preds = %407, %247, %96, %87, %77, %63, %46
  %409 = load i32, i32* %10, align 4
  %410 = icmp slt i32 %409, 0
  br i1 %410, label %411, label %414

411:                                              ; preds = %408
  %412 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %413 = call i32 @av_packet_unref(%struct.TYPE_15__* %412)
  br label %414

414:                                              ; preds = %411, %408
  %415 = load i32, i32* %10, align 4
  store i32 %415, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %416

416:                                              ; preds = %414, %39
  %417 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %417)
  %418 = load i32, i32* %3, align 4
  ret i32 %418
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ff_bsf_get_packet_ref(%struct.TYPE_16__*, %struct.TYPE_15__*) #2

declare dso_local i32 @AV_RB16(i32*) #2

declare dso_local i32 @init_get_bits8(i32*, i32*, i32) #2

declare dso_local i32 @show_bits_long(i32*, i32) #2

declare dso_local i32 @ff_mlp_read_major_sync(%struct.TYPE_16__*, %struct.TYPE_17__*, i32*) #2

declare dso_local i32 @get_bits1(i32*) #2

declare dso_local i8* @get_bits(i32*, i32) #2

declare dso_local i32 @get_bits_count(i32*) #2

declare dso_local i32 @av_assert1(i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @FFMIN(i32, i32) #2

declare dso_local i32 @AV_WL16(i32*, i32) #2

declare dso_local i32 @ff_mlp_checksum16(i32*, i32) #2

declare dso_local i32 @av_packet_make_writable(%struct.TYPE_15__*) #2

declare dso_local i32 @AV_WB16(i32*, i32) #2

declare dso_local i32 @av_packet_unref(%struct.TYPE_15__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
