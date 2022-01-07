; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g723_1dec.c_g723_1_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g723_1dec.c_g723_1_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32*, i64, i64, i32, i32*, i32*, i32*, i32, i32, i32, i32*, i32*, i32, %struct.TYPE_27__*, i32, i32, i32, i32, i32* }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_24__ = type { i32*, i32 }
%struct.TYPE_25__ = type { i32, i32**, i64* }
%struct.TYPE_21__ = type { i32, i32, i32 }

@SUBFRAMES = common dso_local global i32 0, align 4
@LPC_ORDER = common dso_local global i32 0, align 4
@SUBFRAME_LEN = common dso_local global i32 0, align 4
@frame_size = common dso_local global i32* null, align 8
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Expected %d bytes, got %d - skipping packet\0A\00", align 1
@FRAME_LEN = common dso_local global i32 0, align 4
@ACTIVE_FRAME = common dso_local global i64 0, align 8
@UNTRANSMITTED_FRAME = common dso_local global i64 0, align 8
@PITCH_MAX = common dso_local global i32 0, align 4
@fixed_cb_gain = common dso_local global i32* null, align 8
@CNG_RANDOM_SEED = common dso_local global i32 0, align 4
@SID_FRAME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_26__*, i8*, i32*, %struct.TYPE_24__*)* @g723_1_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g723_1_decode_frame(%struct.TYPE_26__* %0, i8* %1, i32* %2, %struct.TYPE_24__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca %struct.TYPE_25__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_23__*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_24__* %3, %struct.TYPE_24__** %9, align 8
  %32 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %33, align 8
  store %struct.TYPE_22__* %34, %struct.TYPE_22__** %10, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = bitcast i8* %35 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %36, %struct.TYPE_25__** %11, align 8
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %12, align 8
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %13, align 4
  %43 = load i32*, i32** %12, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 3
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* @SUBFRAMES, align 4
  %48 = zext i32 %47 to i64
  %49 = call i8* @llvm.stacksave()
  store i8* %49, i8** %15, align 8
  %50 = alloca %struct.TYPE_21__, i64 %48, align 16
  store i64 %48, i64* %16, align 8
  %51 = load i32, i32* @LPC_ORDER, align 4
  %52 = zext i32 %51 to i64
  %53 = alloca i32, i64 %52, align 16
  store i64 %52, i64* %17, align 8
  %54 = load i32, i32* @SUBFRAMES, align 4
  %55 = load i32, i32* @LPC_ORDER, align 4
  %56 = mul nsw i32 %54, %55
  %57 = zext i32 %56 to i64
  %58 = alloca i32, i64 %57, align 16
  store i64 %57, i64* %18, align 8
  %59 = load i32, i32* @SUBFRAME_LEN, align 4
  %60 = zext i32 %59 to i64
  %61 = alloca i32, i64 %60, align 16
  store i64 %60, i64* %19, align 8
  store i32 0, i32* %21, align 4
  %62 = load i32, i32* %13, align 4
  %63 = load i32*, i32** @frame_size, align 8
  %64 = load i32, i32* %14, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = mul nsw i32 %67, %70
  %72 = icmp slt i32 %62, %71
  br i1 %72, label %73, label %89

73:                                               ; preds = %4
  %74 = load i32, i32* %13, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %73
  %77 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %78 = load i32, i32* @AV_LOG_WARNING, align 4
  %79 = load i32*, i32** @frame_size, align 8
  %80 = load i32, i32* %14, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @av_log(%struct.TYPE_26__* %77, i32 %78, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %76, %73
  %87 = load i32*, i32** %8, align 8
  store i32 0, i32* %87, align 4
  %88 = load i32, i32* %13, align 4
  store i32 %88, i32* %5, align 4
  store i32 1, i32* %25, align 4
  br label %731

89:                                               ; preds = %4
  %90 = load i32, i32* @FRAME_LEN, align 4
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %94 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %95 = call i32 @ff_get_buffer(%struct.TYPE_26__* %93, %struct.TYPE_25__* %94, i32 0)
  store i32 %95, i32* %24, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %89
  %98 = load i32, i32* %24, align 4
  store i32 %98, i32* %5, align 4
  store i32 1, i32* %25, align 4
  br label %731

99:                                               ; preds = %89
  store i32 0, i32* %26, align 4
  br label %100

100:                                              ; preds = %717, %99
  %101 = load i32, i32* %26, align 4
  %102 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp slt i32 %101, %104
  br i1 %105, label %106, label %720

106:                                              ; preds = %100
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %108, align 8
  %110 = load i32, i32* %26, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i64 %111
  store %struct.TYPE_23__* %112, %struct.TYPE_23__** %27, align 8
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  store i32* %115, i32** %28, align 8
  %116 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %117 = load i32*, i32** %12, align 8
  %118 = load i32, i32* %26, align 4
  %119 = load i32, i32* %13, align 4
  %120 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = sdiv i32 %119, %122
  %124 = mul nsw i32 %118, %123
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %117, i64 %125
  %127 = load i32, i32* %13, align 4
  %128 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = sdiv i32 %127, %130
  %132 = call i64 @unpack_bitstream(%struct.TYPE_23__* %116, i32* %126, i32 %131)
  %133 = icmp slt i64 %132, 0
  br i1 %133, label %134, label %149

134:                                              ; preds = %106
  store i32 1, i32* %21, align 4
  %135 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %136 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @ACTIVE_FRAME, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %144

140:                                              ; preds = %134
  %141 = load i64, i64* @ACTIVE_FRAME, align 8
  %142 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %143 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %142, i32 0, i32 2
  store i64 %141, i64* %143, align 8
  br label %148

144:                                              ; preds = %134
  %145 = load i64, i64* @UNTRANSMITTED_FRAME, align 8
  %146 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %147 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %146, i32 0, i32 2
  store i64 %145, i64* %147, align 8
  br label %148

148:                                              ; preds = %144, %140
  br label %149

149:                                              ; preds = %148, %106
  %150 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %151 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %150, i32 0, i32 2
  %152 = load i64*, i64** %151, align 8
  %153 = load i32, i32* %26, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i64, i64* %152, i64 %154
  %156 = load i64, i64* %155, align 8
  %157 = inttoptr i64 %156 to i32*
  store i32* %157, i32** %20, align 8
  %158 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %159 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @ACTIVE_FRAME, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %535

163:                                              ; preds = %149
  %164 = load i32, i32* %21, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %169, label %166

166:                                              ; preds = %163
  %167 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %168 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %167, i32 0, i32 3
  store i32 0, i32* %168, align 8
  br label %180

169:                                              ; preds = %163
  %170 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %171 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 8
  %173 = icmp ne i32 %172, 3
  br i1 %173, label %174, label %179

174:                                              ; preds = %169
  %175 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %176 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 8
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %176, align 8
  br label %179

179:                                              ; preds = %174, %169
  br label %180

180:                                              ; preds = %179, %166
  %181 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %182 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %181, i32 0, i32 4
  %183 = load i32*, i32** %182, align 8
  %184 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %185 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %184, i32 0, i32 12
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* %21, align 4
  %188 = call i32 @ff_g723_1_inverse_quant(i32* %53, i32* %183, i32 %186, i32 %187)
  %189 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %190 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %189, i32 0, i32 4
  %191 = load i32*, i32** %190, align 8
  %192 = call i32 @ff_g723_1_lsp_interpolate(i32* %58, i32* %53, i32* %191)
  %193 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %194 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %193, i32 0, i32 4
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* @LPC_ORDER, align 4
  %197 = sext i32 %196 to i64
  %198 = mul i64 %197, 4
  %199 = trunc i64 %198 to i32
  %200 = call i32 @memcpy(i32* %195, i32* %53, i32 %199)
  %201 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %202 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %201, i32 0, i32 5
  %203 = load i32*, i32** %202, align 8
  %204 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %205 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %204, i32 0, i32 6
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* @PITCH_MAX, align 4
  %208 = sext i32 %207 to i64
  %209 = mul i64 %208, 4
  %210 = trunc i64 %209 to i32
  %211 = call i32 @memcpy(i32* %203, i32* %206, i32 %210)
  %212 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %213 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 8
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %452, label %216

216:                                              ; preds = %180
  %217 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %218 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %217, i32 0, i32 5
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* @PITCH_MAX, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  store i32* %222, i32** %29, align 8
  %223 = load i32*, i32** @fixed_cb_gain, align 8
  %224 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %225 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %224, i32 0, i32 13
  %226 = load %struct.TYPE_27__*, %struct.TYPE_27__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %226, i64 2
  %228 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %231 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %230, i32 0, i32 13
  %232 = load %struct.TYPE_27__*, %struct.TYPE_27__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %232, i64 3
  %234 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = add nsw i32 %229, %235
  %237 = ashr i32 %236, 1
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %223, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %242 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %241, i32 0, i32 7
  store i32 %240, i32* %242, align 8
  store i32 0, i32* %22, align 4
  br label %243

243:                                              ; preds = %325, %216
  %244 = load i32, i32* %22, align 4
  %245 = load i32, i32* @SUBFRAMES, align 4
  %246 = icmp slt i32 %244, %245
  br i1 %246, label %247, label %328

247:                                              ; preds = %243
  %248 = load i32*, i32** %29, align 8
  %249 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %250 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %249, i32 0, i32 13
  %251 = load %struct.TYPE_27__*, %struct.TYPE_27__** %250, align 8
  %252 = load i32, i32* %22, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %251, i64 %253
  %255 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %256 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %255, i32 0, i32 17
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %259 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %258, i32 0, i32 18
  %260 = load i32*, i32** %259, align 8
  %261 = load i32, i32* %22, align 4
  %262 = ashr i32 %261, 1
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %260, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* %22, align 4
  %267 = call i32 @gen_fcb_excitation(i32* %248, %struct.TYPE_27__* %254, i32 %257, i32 %265, i32 %266)
  %268 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %269 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %268, i32 0, i32 5
  %270 = load i32*, i32** %269, align 8
  %271 = load i32, i32* @SUBFRAME_LEN, align 4
  %272 = load i32, i32* %22, align 4
  %273 = mul nsw i32 %271, %272
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %270, i64 %274
  %276 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %277 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %276, i32 0, i32 18
  %278 = load i32*, i32** %277, align 8
  %279 = load i32, i32* %22, align 4
  %280 = ashr i32 %279, 1
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %278, i64 %281
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %285 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %284, i32 0, i32 13
  %286 = load %struct.TYPE_27__*, %struct.TYPE_27__** %285, align 8
  %287 = load i32, i32* %22, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %286, i64 %288
  %290 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %291 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %290, i32 0, i32 17
  %292 = load i32, i32* %291, align 4
  %293 = call i32 @ff_g723_1_gen_acb_excitation(i32* %61, i32* %275, i32 %283, %struct.TYPE_27__* %289, i32 %292)
  store i32 0, i32* %23, align 4
  br label %294

294:                                              ; preds = %317, %247
  %295 = load i32, i32* %23, align 4
  %296 = load i32, i32* @SUBFRAME_LEN, align 4
  %297 = icmp slt i32 %295, %296
  br i1 %297, label %298, label %320

298:                                              ; preds = %294
  %299 = load i32*, i32** %29, align 8
  %300 = load i32, i32* %23, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %299, i64 %301
  %303 = load i32, i32* %302, align 4
  %304 = mul nsw i32 %303, 2
  %305 = call i32 @av_clip_int16(i32 %304)
  store i32 %305, i32* %30, align 4
  %306 = load i32, i32* %30, align 4
  %307 = load i32, i32* %23, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i32, i32* %61, i64 %308
  %310 = load i32, i32* %309, align 4
  %311 = add nsw i32 %306, %310
  %312 = call i32 @av_clip_int16(i32 %311)
  %313 = load i32*, i32** %29, align 8
  %314 = load i32, i32* %23, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i32, i32* %313, i64 %315
  store i32 %312, i32* %316, align 4
  br label %317

317:                                              ; preds = %298
  %318 = load i32, i32* %23, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %23, align 4
  br label %294

320:                                              ; preds = %294
  %321 = load i32, i32* @SUBFRAME_LEN, align 4
  %322 = load i32*, i32** %29, align 8
  %323 = sext i32 %321 to i64
  %324 = getelementptr inbounds i32, i32* %322, i64 %323
  store i32* %324, i32** %29, align 8
  br label %325

325:                                              ; preds = %320
  %326 = load i32, i32* %22, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %22, align 4
  br label %243

328:                                              ; preds = %243
  %329 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %330 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %329, i32 0, i32 5
  %331 = load i32*, i32** %330, align 8
  %332 = load i32, i32* @PITCH_MAX, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32, i32* %331, i64 %333
  store i32* %334, i32** %29, align 8
  %335 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %336 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %337 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %336, i32 0, i32 18
  %338 = load i32*, i32** %337, align 8
  %339 = getelementptr inbounds i32, i32* %338, i64 1
  %340 = load i32, i32* %339, align 4
  %341 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %342 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %341, i32 0, i32 8
  %343 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %344 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %343, i32 0, i32 9
  %345 = call i32 @comp_interp_index(%struct.TYPE_23__* %335, i32 %340, i32* %342, i32* %344)
  %346 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %347 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %346, i32 0, i32 16
  store i32 %345, i32* %347, align 8
  %348 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %349 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %348, i32 0, i32 0
  %350 = load i64, i64* %349, align 8
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %431

352:                                              ; preds = %328
  %353 = load i32, i32* @PITCH_MAX, align 4
  store i32 %353, i32* %22, align 4
  store i32 0, i32* %23, align 4
  br label %354

354:                                              ; preds = %376, %352
  %355 = load i32, i32* %23, align 4
  %356 = load i32, i32* @SUBFRAMES, align 4
  %357 = icmp slt i32 %355, %356
  br i1 %357, label %358, label %382

358:                                              ; preds = %354
  %359 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %360 = load i32, i32* %22, align 4
  %361 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %362 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %361, i32 0, i32 18
  %363 = load i32*, i32** %362, align 8
  %364 = load i32, i32* %23, align 4
  %365 = ashr i32 %364, 1
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i32, i32* %363, i64 %366
  %368 = load i32, i32* %367, align 4
  %369 = load i32, i32* %23, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i64 %370
  %372 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %373 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %372, i32 0, i32 17
  %374 = load i32, i32* %373, align 4
  %375 = call i32 @comp_ppf_coeff(%struct.TYPE_23__* %359, i32 %360, i32 %368, %struct.TYPE_21__* %371, i32 %374)
  br label %376

376:                                              ; preds = %358
  %377 = load i32, i32* @SUBFRAME_LEN, align 4
  %378 = load i32, i32* %22, align 4
  %379 = add nsw i32 %378, %377
  store i32 %379, i32* %22, align 4
  %380 = load i32, i32* %23, align 4
  %381 = add nsw i32 %380, 1
  store i32 %381, i32* %23, align 4
  br label %354

382:                                              ; preds = %354
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  br label %383

383:                                              ; preds = %424, %382
  %384 = load i32, i32* %23, align 4
  %385 = load i32, i32* @SUBFRAMES, align 4
  %386 = icmp slt i32 %384, %385
  br i1 %386, label %387, label %430

387:                                              ; preds = %383
  %388 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %389 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %388, i32 0, i32 0
  %390 = load i32*, i32** %389, align 8
  %391 = load i32, i32* @LPC_ORDER, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i32, i32* %390, i64 %392
  %394 = load i32, i32* %22, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds i32, i32* %393, i64 %395
  %397 = load i32*, i32** %29, align 8
  %398 = load i32, i32* %22, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i32, i32* %397, i64 %399
  %401 = load i32*, i32** %29, align 8
  %402 = load i32, i32* %22, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i32, i32* %401, i64 %403
  %405 = load i32, i32* %23, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i64 %406
  %408 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %407, i32 0, i32 0
  %409 = load i32, i32* %408, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds i32, i32* %404, i64 %410
  %412 = load i32, i32* %23, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i64 %413
  %415 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %414, i32 0, i32 2
  %416 = load i32, i32* %415, align 4
  %417 = load i32, i32* %23, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i64 %418
  %420 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %419, i32 0, i32 1
  %421 = load i32, i32* %420, align 4
  %422 = load i32, i32* @SUBFRAME_LEN, align 4
  %423 = call i32 @ff_acelp_weighted_vector_sum(i32* %396, i32* %400, i32* %411, i32 %416, i32 %421, i32 16384, i32 15, i32 %422)
  br label %424

424:                                              ; preds = %387
  %425 = load i32, i32* @SUBFRAME_LEN, align 4
  %426 = load i32, i32* %22, align 4
  %427 = add nsw i32 %426, %425
  store i32 %427, i32* %22, align 4
  %428 = load i32, i32* %23, align 4
  %429 = add nsw i32 %428, 1
  store i32 %429, i32* %23, align 4
  br label %383

430:                                              ; preds = %383
  br label %437

431:                                              ; preds = %328
  %432 = load i32*, i32** %29, align 8
  %433 = load i32, i32* @LPC_ORDER, align 4
  %434 = sext i32 %433 to i64
  %435 = sub i64 0, %434
  %436 = getelementptr inbounds i32, i32* %432, i64 %435
  store i32* %436, i32** %28, align 8
  br label %437

437:                                              ; preds = %431, %430
  %438 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %439 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %438, i32 0, i32 6
  %440 = load i32*, i32** %439, align 8
  %441 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %442 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %441, i32 0, i32 5
  %443 = load i32*, i32** %442, align 8
  %444 = load i32, i32* @FRAME_LEN, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds i32, i32* %443, i64 %445
  %447 = load i32, i32* @PITCH_MAX, align 4
  %448 = sext i32 %447 to i64
  %449 = mul i64 %448, 4
  %450 = trunc i64 %449 to i32
  %451 = call i32 @memcpy(i32* %440, i32* %446, i32 %450)
  br label %531

452:                                              ; preds = %180
  %453 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %454 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %453, i32 0, i32 7
  %455 = load i32, i32* %454, align 8
  %456 = mul nsw i32 %455, 3
  %457 = add nsw i32 %456, 2
  %458 = ashr i32 %457, 2
  %459 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %460 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %459, i32 0, i32 7
  store i32 %458, i32* %460, align 8
  %461 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %462 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %461, i32 0, i32 3
  %463 = load i32, i32* %462, align 8
  %464 = icmp eq i32 %463, 3
  br i1 %464, label %465, label %496

465:                                              ; preds = %452
  %466 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %467 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %466, i32 0, i32 5
  %468 = load i32*, i32** %467, align 8
  %469 = load i32, i32* @FRAME_LEN, align 4
  %470 = load i32, i32* @PITCH_MAX, align 4
  %471 = add nsw i32 %469, %470
  %472 = sext i32 %471 to i64
  %473 = mul i64 %472, 4
  %474 = trunc i64 %473 to i32
  %475 = call i32 @memset(i32* %468, i32 0, i32 %474)
  %476 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %477 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %476, i32 0, i32 6
  %478 = load i32*, i32** %477, align 8
  %479 = load i32, i32* @PITCH_MAX, align 4
  %480 = sext i32 %479 to i64
  %481 = mul i64 %480, 4
  %482 = trunc i64 %481 to i32
  %483 = call i32 @memset(i32* %478, i32 0, i32 %482)
  %484 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %485 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %484, i32 0, i32 1
  %486 = load i32**, i32*** %485, align 8
  %487 = getelementptr inbounds i32*, i32** %486, i64 0
  %488 = load i32*, i32** %487, align 8
  %489 = load i32, i32* @FRAME_LEN, align 4
  %490 = load i32, i32* @LPC_ORDER, align 4
  %491 = add nsw i32 %489, %490
  %492 = sext i32 %491 to i64
  %493 = mul i64 %492, 4
  %494 = trunc i64 %493 to i32
  %495 = call i32 @memset(i32* %488, i32 0, i32 %494)
  br label %530

496:                                              ; preds = %452
  %497 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %498 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %497, i32 0, i32 0
  %499 = load i32*, i32** %498, align 8
  %500 = load i32, i32* @LPC_ORDER, align 4
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds i32, i32* %499, i64 %501
  store i32* %502, i32** %31, align 8
  %503 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %504 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %503, i32 0, i32 5
  %505 = load i32*, i32** %504, align 8
  %506 = load i32*, i32** %31, align 8
  %507 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %508 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %507, i32 0, i32 16
  %509 = load i32, i32* %508, align 8
  %510 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %511 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %510, i32 0, i32 7
  %512 = load i32, i32* %511, align 8
  %513 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %514 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %513, i32 0, i32 15
  %515 = call i32 @residual_interp(i32* %505, i32* %506, i32 %509, i32 %512, i32* %514)
  %516 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %517 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %516, i32 0, i32 6
  %518 = load i32*, i32** %517, align 8
  %519 = load i32*, i32** %31, align 8
  %520 = load i32, i32* @FRAME_LEN, align 4
  %521 = load i32, i32* @PITCH_MAX, align 4
  %522 = sub nsw i32 %520, %521
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds i32, i32* %519, i64 %523
  %525 = load i32, i32* @PITCH_MAX, align 4
  %526 = sext i32 %525 to i64
  %527 = mul i64 %526, 4
  %528 = trunc i64 %527 to i32
  %529 = call i32 @memcpy(i32* %518, i32* %524, i32 %528)
  br label %530

530:                                              ; preds = %496, %465
  br label %531

531:                                              ; preds = %530, %437
  %532 = load i32, i32* @CNG_RANDOM_SEED, align 4
  %533 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %534 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %533, i32 0, i32 14
  store i32 %532, i32* %534, align 8
  br label %618

535:                                              ; preds = %149
  %536 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %537 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %536, i32 0, i32 2
  %538 = load i64, i64* %537, align 8
  %539 = load i64, i64* @SID_FRAME, align 8
  %540 = icmp eq i64 %538, %539
  br i1 %540, label %541, label %561

541:                                              ; preds = %535
  %542 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %543 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %542, i32 0, i32 13
  %544 = load %struct.TYPE_27__*, %struct.TYPE_27__** %543, align 8
  %545 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %544, i64 0
  %546 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %545, i32 0, i32 0
  %547 = load i32, i32* %546, align 4
  %548 = call i32 @sid_gain_to_lsp_index(i32 %547)
  %549 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %550 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %549, i32 0, i32 8
  store i32 %548, i32* %550, align 4
  %551 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %552 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %551, i32 0, i32 10
  %553 = load i32*, i32** %552, align 8
  %554 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %555 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %554, i32 0, i32 4
  %556 = load i32*, i32** %555, align 8
  %557 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %558 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %557, i32 0, i32 12
  %559 = load i32, i32* %558, align 8
  %560 = call i32 @ff_g723_1_inverse_quant(i32* %553, i32* %556, i32 %559, i32 0)
  br label %573

561:                                              ; preds = %535
  %562 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %563 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %562, i32 0, i32 1
  %564 = load i64, i64* %563, align 8
  %565 = load i64, i64* @ACTIVE_FRAME, align 8
  %566 = icmp eq i64 %564, %565
  br i1 %566, label %567, label %572

567:                                              ; preds = %561
  %568 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %569 = call i32 @estimate_sid_gain(%struct.TYPE_23__* %568)
  %570 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %571 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %570, i32 0, i32 8
  store i32 %569, i32* %571, align 4
  br label %572

572:                                              ; preds = %567, %561
  br label %573

573:                                              ; preds = %572, %541
  %574 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %575 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %574, i32 0, i32 1
  %576 = load i64, i64* %575, align 8
  %577 = load i64, i64* @ACTIVE_FRAME, align 8
  %578 = icmp eq i64 %576, %577
  br i1 %578, label %579, label %585

579:                                              ; preds = %573
  %580 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %581 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %580, i32 0, i32 8
  %582 = load i32, i32* %581, align 4
  %583 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %584 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %583, i32 0, i32 9
  store i32 %582, i32* %584, align 8
  br label %597

585:                                              ; preds = %573
  %586 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %587 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %586, i32 0, i32 9
  %588 = load i32, i32* %587, align 8
  %589 = mul nsw i32 %588, 7
  %590 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %591 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %590, i32 0, i32 8
  %592 = load i32, i32* %591, align 4
  %593 = add nsw i32 %589, %592
  %594 = ashr i32 %593, 3
  %595 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %596 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %595, i32 0, i32 9
  store i32 %594, i32* %596, align 8
  br label %597

597:                                              ; preds = %585, %579
  %598 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %599 = call i32 @generate_noise(%struct.TYPE_23__* %598)
  %600 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %601 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %600, i32 0, i32 10
  %602 = load i32*, i32** %601, align 8
  %603 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %604 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %603, i32 0, i32 4
  %605 = load i32*, i32** %604, align 8
  %606 = call i32 @ff_g723_1_lsp_interpolate(i32* %58, i32* %602, i32* %605)
  %607 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %608 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %607, i32 0, i32 4
  %609 = load i32*, i32** %608, align 8
  %610 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %611 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %610, i32 0, i32 10
  %612 = load i32*, i32** %611, align 8
  %613 = load i32, i32* @LPC_ORDER, align 4
  %614 = sext i32 %613 to i64
  %615 = mul i64 %614, 4
  %616 = trunc i64 %615 to i32
  %617 = call i32 @memcpy(i32* %609, i32* %612, i32 %616)
  br label %618

618:                                              ; preds = %597, %531
  %619 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %620 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %619, i32 0, i32 2
  %621 = load i64, i64* %620, align 8
  %622 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %623 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %622, i32 0, i32 1
  store i64 %621, i64* %623, align 8
  %624 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %625 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %624, i32 0, i32 0
  %626 = load i32*, i32** %625, align 8
  %627 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %628 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %627, i32 0, i32 11
  %629 = load i32*, i32** %628, align 8
  %630 = load i32, i32* @LPC_ORDER, align 4
  %631 = sext i32 %630 to i64
  %632 = mul i64 %631, 4
  %633 = trunc i64 %632 to i32
  %634 = call i32 @memcpy(i32* %626, i32* %629, i32 %633)
  %635 = load i32, i32* @LPC_ORDER, align 4
  store i32 %635, i32* %22, align 4
  store i32 0, i32* %23, align 4
  br label %636

636:                                              ; preds = %659, %618
  %637 = load i32, i32* %23, align 4
  %638 = load i32, i32* @SUBFRAMES, align 4
  %639 = icmp slt i32 %637, %638
  br i1 %639, label %640, label %665

640:                                              ; preds = %636
  %641 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %642 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %641, i32 0, i32 0
  %643 = load i32*, i32** %642, align 8
  %644 = load i32, i32* %22, align 4
  %645 = sext i32 %644 to i64
  %646 = getelementptr inbounds i32, i32* %643, i64 %645
  %647 = load i32, i32* %23, align 4
  %648 = load i32, i32* @LPC_ORDER, align 4
  %649 = mul nsw i32 %647, %648
  %650 = sext i32 %649 to i64
  %651 = getelementptr inbounds i32, i32* %58, i64 %650
  %652 = load i32*, i32** %28, align 8
  %653 = load i32, i32* %22, align 4
  %654 = sext i32 %653 to i64
  %655 = getelementptr inbounds i32, i32* %652, i64 %654
  %656 = load i32, i32* @SUBFRAME_LEN, align 4
  %657 = load i32, i32* @LPC_ORDER, align 4
  %658 = call i32 @ff_celp_lp_synthesis_filter(i32* %646, i32* %651, i32* %655, i32 %656, i32 %657, i32 0, i32 1, i32 4096)
  br label %659

659:                                              ; preds = %640
  %660 = load i32, i32* @SUBFRAME_LEN, align 4
  %661 = load i32, i32* %22, align 4
  %662 = add nsw i32 %661, %660
  store i32 %662, i32* %22, align 4
  %663 = load i32, i32* %23, align 4
  %664 = add nsw i32 %663, 1
  store i32 %664, i32* %23, align 4
  br label %636

665:                                              ; preds = %636
  %666 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %667 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %666, i32 0, i32 11
  %668 = load i32*, i32** %667, align 8
  %669 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %670 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %669, i32 0, i32 0
  %671 = load i32*, i32** %670, align 8
  %672 = load i32, i32* @FRAME_LEN, align 4
  %673 = sext i32 %672 to i64
  %674 = getelementptr inbounds i32, i32* %671, i64 %673
  %675 = load i32, i32* @LPC_ORDER, align 4
  %676 = sext i32 %675 to i64
  %677 = mul i64 %676, 4
  %678 = trunc i64 %677 to i32
  %679 = call i32 @memcpy(i32* %668, i32* %674, i32 %678)
  %680 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %681 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %680, i32 0, i32 0
  %682 = load i64, i64* %681, align 8
  %683 = icmp ne i64 %682, 0
  br i1 %683, label %684, label %691

684:                                              ; preds = %665
  %685 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %686 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %687 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %686, i32 0, i32 0
  %688 = load i32*, i32** %687, align 8
  %689 = load i32*, i32** %20, align 8
  %690 = call i32 @formant_postfilter(%struct.TYPE_23__* %685, i32* %58, i32* %688, i32* %689)
  br label %716

691:                                              ; preds = %665
  store i32 0, i32* %22, align 4
  br label %692

692:                                              ; preds = %712, %691
  %693 = load i32, i32* %22, align 4
  %694 = load i32, i32* @FRAME_LEN, align 4
  %695 = icmp slt i32 %693, %694
  br i1 %695, label %696, label %715

696:                                              ; preds = %692
  %697 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %698 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %697, i32 0, i32 0
  %699 = load i32*, i32** %698, align 8
  %700 = load i32, i32* @LPC_ORDER, align 4
  %701 = load i32, i32* %22, align 4
  %702 = add nsw i32 %700, %701
  %703 = sext i32 %702 to i64
  %704 = getelementptr inbounds i32, i32* %699, i64 %703
  %705 = load i32, i32* %704, align 4
  %706 = mul nsw i32 2, %705
  %707 = call i32 @av_clip_int16(i32 %706)
  %708 = load i32*, i32** %20, align 8
  %709 = load i32, i32* %22, align 4
  %710 = sext i32 %709 to i64
  %711 = getelementptr inbounds i32, i32* %708, i64 %710
  store i32 %707, i32* %711, align 4
  br label %712

712:                                              ; preds = %696
  %713 = load i32, i32* %22, align 4
  %714 = add nsw i32 %713, 1
  store i32 %714, i32* %22, align 4
  br label %692

715:                                              ; preds = %692
  br label %716

716:                                              ; preds = %715, %684
  br label %717

717:                                              ; preds = %716
  %718 = load i32, i32* %26, align 4
  %719 = add nsw i32 %718, 1
  store i32 %719, i32* %26, align 4
  br label %100

720:                                              ; preds = %100
  %721 = load i32*, i32** %8, align 8
  store i32 1, i32* %721, align 4
  %722 = load i32*, i32** @frame_size, align 8
  %723 = load i32, i32* %14, align 4
  %724 = sext i32 %723 to i64
  %725 = getelementptr inbounds i32, i32* %722, i64 %724
  %726 = load i32, i32* %725, align 4
  %727 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %728 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %727, i32 0, i32 0
  %729 = load i32, i32* %728, align 8
  %730 = mul nsw i32 %726, %729
  store i32 %730, i32* %5, align 4
  store i32 1, i32* %25, align 4
  br label %731

731:                                              ; preds = %720, %97, %86
  %732 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %732)
  %733 = load i32, i32* %5, align 4
  ret i32 %733
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @av_log(%struct.TYPE_26__*, i32, i8*, i32, i32) #2

declare dso_local i32 @ff_get_buffer(%struct.TYPE_26__*, %struct.TYPE_25__*, i32) #2

declare dso_local i64 @unpack_bitstream(%struct.TYPE_23__*, i32*, i32) #2

declare dso_local i32 @ff_g723_1_inverse_quant(i32*, i32*, i32, i32) #2

declare dso_local i32 @ff_g723_1_lsp_interpolate(i32*, i32*, i32*) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @gen_fcb_excitation(i32*, %struct.TYPE_27__*, i32, i32, i32) #2

declare dso_local i32 @ff_g723_1_gen_acb_excitation(i32*, i32*, i32, %struct.TYPE_27__*, i32) #2

declare dso_local i32 @av_clip_int16(i32) #2

declare dso_local i32 @comp_interp_index(%struct.TYPE_23__*, i32, i32*, i32*) #2

declare dso_local i32 @comp_ppf_coeff(%struct.TYPE_23__*, i32, i32, %struct.TYPE_21__*, i32) #2

declare dso_local i32 @ff_acelp_weighted_vector_sum(i32*, i32*, i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @residual_interp(i32*, i32*, i32, i32, i32*) #2

declare dso_local i32 @sid_gain_to_lsp_index(i32) #2

declare dso_local i32 @estimate_sid_gain(%struct.TYPE_23__*) #2

declare dso_local i32 @generate_noise(%struct.TYPE_23__*) #2

declare dso_local i32 @ff_celp_lp_synthesis_filter(i32*, i32*, i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @formant_postfilter(%struct.TYPE_23__*, i32*, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
