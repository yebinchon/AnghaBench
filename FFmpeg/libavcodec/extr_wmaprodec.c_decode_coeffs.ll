; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmaprodec.c_decode_coeffs.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmaprodec.c_decode_coeffs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i64* }

@decode_coeffs.fval_tab = internal constant [16 x i32] [i32 0, i32 1065353216, i32 1073741824, i32 1077936128, i32 1082130432, i32 1084227584, i32 1086324736, i32 1088421888, i32 1090519040, i32 1091567616, i32 1092616192, i32 1093664768, i32 1094713344, i32 1095761920, i32 1096810496, i32 1097859072], align 16
@.str = private unnamed_addr constant [36 x i8] c"decode coefficients for channel %i\0A\00", align 1
@coef_vlc = common dso_local global i32* null, align 8
@coef1_run = common dso_local global i32* null, align 8
@coef1_level = common dso_local global float* null, align 8
@coef0_run = common dso_local global i32* null, align 8
@coef0_level = common dso_local global float* null, align 8
@vec4_vlc = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@VLCBITS = common dso_local global i32 0, align 4
@VEC4MAXDEPTH = common dso_local global i32 0, align 4
@HUFF_VEC4_SIZE = common dso_local global i32 0, align 4
@vec2_vlc = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@VEC2MAXDEPTH = common dso_local global i32 0, align 4
@HUFF_VEC2_SIZE = common dso_local global i32 0, align 4
@vec1_vlc = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@VEC1MAXDEPTH = common dso_local global i32 0, align 4
@HUFF_VEC1_SIZE = common dso_local global i32 0, align 4
@symbol_to_vec2 = common dso_local global i32* null, align 8
@symbol_to_vec4 = common dso_local global i32* null, align 8
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32)* @decode_coeffs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_coeffs(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca float*, align 8
  %14 = alloca [4 x i32], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 5
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i64 %24
  store %struct.TYPE_8__* %25, %struct.TYPE_8__** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @ff_dlog(i32 %28, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 2
  %33 = call i32 @get_bits1(i32* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32*, i32** @coef_vlc, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32* %37, i32** %7, align 8
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %2
  %41 = load i32*, i32** @coef1_run, align 8
  store i32* %41, i32** %12, align 8
  %42 = load float*, float** @coef1_level, align 8
  store float* %42, float** %13, align 8
  br label %46

43:                                               ; preds = %2
  %44 = load i32*, i32** @coef0_run, align 8
  store i32* %44, i32** %12, align 8
  %45 = load float*, float** @coef0_level, align 8
  store float* %45, float** %13, align 8
  br label %46

46:                                               ; preds = %43, %40
  br label %47

47:                                               ; preds = %270, %46
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %52, %47
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, 3
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br label %62

62:                                               ; preds = %55, %52
  %63 = phi i1 [ false, %52 ], [ %61, %55 ]
  br i1 %63, label %64, label %271

64:                                               ; preds = %62
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 2
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @vec4_vlc, i32 0, i32 0), align 4
  %68 = load i32, i32* @VLCBITS, align 4
  %69 = load i32, i32* @VEC4MAXDEPTH, align 4
  %70 = call i8* @get_vlc2(i32* %66, i32 %67, i32 %68, i32 %69)
  %71 = ptrtoint i8* %70 to i32
  store i32 %71, i32* %16, align 4
  %72 = load i32, i32* %16, align 4
  %73 = load i32, i32* @HUFF_VEC4_SIZE, align 4
  %74 = sub nsw i32 %73, 1
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %76, label %175

76:                                               ; preds = %64
  store i32 0, i32* %15, align 4
  br label %77

77:                                               ; preds = %171, %76
  %78 = load i32, i32* %15, align 4
  %79 = icmp slt i32 %78, 4
  br i1 %79, label %80, label %174

80:                                               ; preds = %77
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 2
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @vec2_vlc, i32 0, i32 0), align 4
  %84 = load i32, i32* @VLCBITS, align 4
  %85 = load i32, i32* @VEC2MAXDEPTH, align 4
  %86 = call i8* @get_vlc2(i32* %82, i32 %83, i32 %84, i32 %85)
  %87 = ptrtoint i8* %86 to i32
  store i32 %87, i32* %16, align 4
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* @HUFF_VEC2_SIZE, align 4
  %90 = sub nsw i32 %89, 1
  %91 = icmp eq i32 %88, %90
  br i1 %91, label %92, label %144

92:                                               ; preds = %80
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 2
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @vec1_vlc, i32 0, i32 0), align 4
  %96 = load i32, i32* @VLCBITS, align 4
  %97 = load i32, i32* @VEC1MAXDEPTH, align 4
  %98 = call i8* @get_vlc2(i32* %94, i32 %95, i32 %96, i32 %97)
  %99 = ptrtoint i8* %98 to i32
  store i32 %99, i32* %17, align 4
  %100 = load i32, i32* %17, align 4
  %101 = load i32, i32* @HUFF_VEC1_SIZE, align 4
  %102 = sub nsw i32 %101, 1
  %103 = icmp eq i32 %100, %102
  br i1 %103, label %104, label %112

104:                                              ; preds = %92
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 2
  %107 = call i64 @ff_wma_get_large_val(i32* %106)
  %108 = load i32, i32* %17, align 4
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %109, %107
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %17, align 4
  br label %112

112:                                              ; preds = %104, %92
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 2
  %115 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @vec1_vlc, i32 0, i32 0), align 4
  %116 = load i32, i32* @VLCBITS, align 4
  %117 = load i32, i32* @VEC1MAXDEPTH, align 4
  %118 = call i8* @get_vlc2(i32* %114, i32 %115, i32 %116, i32 %117)
  %119 = ptrtoint i8* %118 to i32
  store i32 %119, i32* %18, align 4
  %120 = load i32, i32* %18, align 4
  %121 = load i32, i32* @HUFF_VEC1_SIZE, align 4
  %122 = sub nsw i32 %121, 1
  %123 = icmp eq i32 %120, %122
  br i1 %123, label %124, label %132

124:                                              ; preds = %112
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 2
  %127 = call i64 @ff_wma_get_large_val(i32* %126)
  %128 = load i32, i32* %18, align 4
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %129, %127
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %18, align 4
  br label %132

132:                                              ; preds = %124, %112
  %133 = load i32, i32* %17, align 4
  %134 = call i32 @av_float2int(i32 %133)
  %135 = load i32, i32* %15, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %136
  store i32 %134, i32* %137, align 4
  %138 = load i32, i32* %18, align 4
  %139 = call i32 @av_float2int(i32 %138)
  %140 = load i32, i32* %15, align 4
  %141 = add nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %142
  store i32 %139, i32* %143, align 4
  br label %170

144:                                              ; preds = %80
  %145 = load i32*, i32** @symbol_to_vec2, align 8
  %146 = load i32, i32* %16, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = ashr i32 %149, 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [16 x i32], [16 x i32]* @decode_coeffs.fval_tab, i64 0, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %15, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %155
  store i32 %153, i32* %156, align 4
  %157 = load i32*, i32** @symbol_to_vec2, align 8
  %158 = load i32, i32* %16, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = and i32 %161, 15
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [16 x i32], [16 x i32]* @decode_coeffs.fval_tab, i64 0, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %15, align 4
  %167 = add nsw i32 %166, 1
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %168
  store i32 %165, i32* %169, align 4
  br label %170

170:                                              ; preds = %144, %132
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %15, align 4
  %173 = add nsw i32 %172, 2
  store i32 %173, i32* %15, align 4
  br label %77

174:                                              ; preds = %77
  br label %218

175:                                              ; preds = %64
  %176 = load i32*, i32** @symbol_to_vec4, align 8
  %177 = load i32, i32* %16, align 4
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = ashr i32 %180, 12
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [16 x i32], [16 x i32]* @decode_coeffs.fval_tab, i64 0, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  store i32 %184, i32* %185, align 16
  %186 = load i32*, i32** @symbol_to_vec4, align 8
  %187 = load i32, i32* %16, align 4
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = ashr i32 %190, 8
  %192 = and i32 %191, 15
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [16 x i32], [16 x i32]* @decode_coeffs.fval_tab, i64 0, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 1
  store i32 %195, i32* %196, align 4
  %197 = load i32*, i32** @symbol_to_vec4, align 8
  %198 = load i32, i32* %16, align 4
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = ashr i32 %201, 4
  %203 = and i32 %202, 15
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [16 x i32], [16 x i32]* @decode_coeffs.fval_tab, i64 0, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 2
  store i32 %206, i32* %207, align 8
  %208 = load i32*, i32** @symbol_to_vec4, align 8
  %209 = load i32, i32* %16, align 4
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = and i32 %212, 15
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds [16 x i32], [16 x i32]* @decode_coeffs.fval_tab, i64 0, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 3
  store i32 %216, i32* %217, align 4
  br label %218

218:                                              ; preds = %175, %174
  store i32 0, i32* %15, align 4
  br label %219

219:                                              ; preds = %267, %218
  %220 = load i32, i32* %15, align 4
  %221 = icmp slt i32 %220, 4
  br i1 %221, label %222, label %270

222:                                              ; preds = %219
  %223 = load i32, i32* %15, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %247

228:                                              ; preds = %222
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 2
  %231 = call i32 @get_bits1(i32* %230)
  %232 = sub nsw i32 %231, 1
  store i32 %232, i32* %19, align 4
  %233 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 1
  %235 = load i64*, i64** %234, align 8
  %236 = load i32, i32* %10, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i64, i64* %235, i64 %237
  %239 = load i32, i32* %15, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* %19, align 4
  %244 = shl i32 %243, 31
  %245 = xor i32 %242, %244
  %246 = call i32 @AV_WN32A(i64* %238, i32 %245)
  store i32 0, i32* %11, align 4
  br label %264

247:                                              ; preds = %222
  %248 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 1
  %250 = load i64*, i64** %249, align 8
  %251 = load i32, i32* %10, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i64, i64* %250, i64 %252
  store i64 0, i64* %253, align 8
  %254 = load i32, i32* %11, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %11, align 4
  %256 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = ashr i32 %258, 8
  %260 = icmp sgt i32 %255, %259
  %261 = zext i1 %260 to i32
  %262 = load i32, i32* %9, align 4
  %263 = or i32 %262, %261
  store i32 %263, i32* %9, align 4
  br label %264

264:                                              ; preds = %247, %228
  %265 = load i32, i32* %10, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %10, align 4
  br label %267

267:                                              ; preds = %264
  %268 = load i32, i32* %15, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %15, align 4
  br label %219

270:                                              ; preds = %219
  br label %47

271:                                              ; preds = %62
  %272 = load i32, i32* %10, align 4
  %273 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = icmp slt i32 %272, %275
  br i1 %276, label %277, label %319

277:                                              ; preds = %271
  %278 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %279 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %278, i32 0, i32 1
  %280 = load i64*, i64** %279, align 8
  %281 = load i32, i32* %10, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i64, i64* %280, i64 %282
  %284 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %285 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = load i32, i32* %10, align 4
  %288 = sub nsw i32 %286, %287
  %289 = sext i32 %288 to i64
  %290 = mul i64 8, %289
  %291 = trunc i64 %290 to i32
  %292 = call i32 @memset(i64* %283, i32 0, i32 %291)
  %293 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %294 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %293, i32 0, i32 3
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %297 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %296, i32 0, i32 2
  %298 = load i32*, i32** %7, align 8
  %299 = load float*, float** %13, align 8
  %300 = load i32*, i32** %12, align 8
  %301 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %302 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %301, i32 0, i32 1
  %303 = load i64*, i64** %302, align 8
  %304 = load i32, i32* %10, align 4
  %305 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %306 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %309 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %312 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 4
  %314 = call i64 @ff_wma_run_level_decode(i32 %295, i32* %297, i32* %298, float* %299, i32* %300, i32 1, i64* %303, i32 %304, i32 %307, i32 %310, i32 %313, i32 0)
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %318

316:                                              ; preds = %277
  %317 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %317, i32* %3, align 4
  br label %320

318:                                              ; preds = %277
  br label %319

319:                                              ; preds = %318, %271
  store i32 0, i32* %3, align 4
  br label %320

320:                                              ; preds = %319, %316
  %321 = load i32, i32* %3, align 4
  ret i32 %321
}

declare dso_local i32 @ff_dlog(i32, i8*, i32) #1

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i8* @get_vlc2(i32*, i32, i32, i32) #1

declare dso_local i64 @ff_wma_get_large_val(i32*) #1

declare dso_local i32 @av_float2int(i32) #1

declare dso_local i32 @AV_WN32A(i64*, i32) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i64 @ff_wma_run_level_decode(i32, i32*, i32*, float*, i32*, i32, i64*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
