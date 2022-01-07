; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ilbcdec.c_ilbc_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ilbcdec.c_ilbc_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32*, i32, i32*, i32*, i32, i32, i32*, i32*, i32, i32, i32, i64, i32, %struct.TYPE_19__, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32* }
%struct.TYPE_17__ = type { i32, i32** }

@LPC_FILTERORDER = common dso_local global i64 0, align 8
@ENH_BLOCKL = common dso_local global i64 0, align 8
@SUBL = common dso_local global i32 0, align 4
@hp_out_coeffs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, i8*, i32*, %struct.TYPE_16__*)* @ilbc_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ilbc_decode_frame(%struct.TYPE_18__* %0, i8* %1, i32* %2, %struct.TYPE_16__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_16__* %3, %struct.TYPE_16__** %9, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %10, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %22, %struct.TYPE_17__** %11, align 8
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  store %struct.TYPE_15__* %25, %struct.TYPE_15__** %12, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %13, align 4
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* @LPC_FILTERORDER, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  store i32* %33, i32** %15, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 18
  %36 = load i32*, i32** %10, align 8
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @init_get_bits8(i32* %35, i32* %36, i32 %39)
  store i32 %40, i32* %14, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %4
  %43 = load i32, i32* %14, align 4
  store i32 %43, i32* %5, align 4
  br label %350

44:                                               ; preds = %4
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 14
  %47 = call i32 @memset(%struct.TYPE_19__* %46, i32 0, i32 4)
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %55 = call i32 @ff_get_buffer(%struct.TYPE_18__* %53, %struct.TYPE_17__* %54, i32 0)
  store i32 %55, i32* %14, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %44
  %58 = load i32, i32* %14, align 4
  store i32 %58, i32* %5, align 4
  br label %350

59:                                               ; preds = %44
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %61 = call i64 @unpack_frame(%struct.TYPE_15__* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  store i32 0, i32* %13, align 4
  br label %64

64:                                               ; preds = %63, %59
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 14
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %68, 1
  br i1 %69, label %76, label %70

70:                                               ; preds = %64
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 14
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp sgt i32 %74, 5
  br i1 %75, label %76, label %77

76:                                               ; preds = %70, %64
  store i32 0, i32* %13, align 4
  br label %77

77:                                               ; preds = %76, %70
  %78 = load i32, i32* %13, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %165

80:                                               ; preds = %77
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 14
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @index_conv(i32 %84)
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 15
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 14
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 17
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @lsf_dequantization(i32 %88, i32 %92, i32 %95)
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 15
  %99 = load i32, i32* %98, align 8
  %100 = load i64, i64* @LPC_FILTERORDER, align 8
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 17
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @lsf_check_stability(i32 %99, i64 %100, i32 %103)
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 3
  %107 = load i32*, i32** %106, align 8
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 16
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 15
  %113 = load i32, i32* %112, align 8
  %114 = load i64, i64* @LPC_FILTERORDER, align 8
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %116 = call i32 @lsp_interpolate(i32* %107, i32 %110, i32 %113, i64 %114, %struct.TYPE_15__* %115)
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 14
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 4
  %122 = load i32*, i32** %121, align 8
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 3
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 @decode_residual(%struct.TYPE_15__* %117, %struct.TYPE_19__* %119, i32* %122, i32* %125)
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 13
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 4
  %135 = load i32*, i32** %134, align 8
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 3
  %138 = load i32*, i32** %137, align 8
  %139 = load i64, i64* @LPC_FILTERORDER, align 8
  %140 = add i64 %139, 1
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 8
  %144 = sub nsw i32 %143, 1
  %145 = sext i32 %144 to i64
  %146 = mul i64 %140, %145
  %147 = getelementptr inbounds i32, i32* %138, i64 %146
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 6
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %152 = call i32 @do_plc(i32* %129, i32 %132, i32 0, i32* %135, i32* %147, i32 %150, %struct.TYPE_15__* %151)
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 4
  %155 = load i32*, i32** %154, align 8
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = mul nsw i32 %161, 2
  %163 = sext i32 %162 to i64
  %164 = call i32 @memcpy(i32* %155, i32* %158, i64 %163)
  br label %165

165:                                              ; preds = %80, %77
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 12
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %165
  br label %294

171:                                              ; preds = %165
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = icmp eq i32 %174, 20
  br i1 %175, label %176, label %196

176:                                              ; preds = %171
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 4
  %179 = load i32*, i32** %178, align 8
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = sub nsw i32 %182, 60
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %179, i64 %184
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 4
  %188 = load i32*, i32** %187, align 8
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = sub nsw i32 %191, 80
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %188, i64 %193
  %195 = call i32 @xcorr_coeff(i32* %185, i32* %194, i64 60, i32 80, i32 20, i32 -1)
  store i32 %195, i32* %16, align 4
  br label %220

196:                                              ; preds = %171
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 4
  %199 = load i32*, i32** %198, align 8
  %200 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = sext i32 %202 to i64
  %204 = load i64, i64* @ENH_BLOCKL, align 8
  %205 = sub i64 %203, %204
  %206 = getelementptr inbounds i32, i32* %199, i64 %205
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 4
  %209 = load i32*, i32** %208, align 8
  %210 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = sext i32 %212 to i64
  %214 = load i64, i64* @ENH_BLOCKL, align 8
  %215 = sub i64 %213, %214
  %216 = sub i64 %215, 20
  %217 = getelementptr inbounds i32, i32* %209, i64 %216
  %218 = load i64, i64* @ENH_BLOCKL, align 8
  %219 = call i32 @xcorr_coeff(i32* %206, i32* %217, i64 %218, i32 100, i32 20, i32 -1)
  store i32 %219, i32* %16, align 4
  br label %220

220:                                              ; preds = %196, %176
  %221 = load i32, i32* %16, align 4
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 6
  store i32 %221, i32* %223, align 4
  %224 = load i32*, i32** %15, align 8
  %225 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %226 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %225, i32 0, i32 4
  %227 = load i32*, i32** %226, align 8
  %228 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = mul nsw i32 %230, 2
  %232 = sext i32 %231 to i64
  %233 = call i32 @memcpy(i32* %224, i32* %227, i64 %232)
  %234 = load i32*, i32** %15, align 8
  %235 = load i64, i64* @LPC_FILTERORDER, align 8
  %236 = sub i64 0, %235
  %237 = getelementptr inbounds i32, i32* %234, i64 %236
  %238 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %239 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %238, i32 0, i32 7
  %240 = load i32*, i32** %239, align 8
  %241 = load i64, i64* @LPC_FILTERORDER, align 8
  %242 = mul i64 %241, 2
  %243 = call i32 @memcpy(i32* %237, i32* %240, i64 %242)
  store i32 0, i32* %17, align 4
  br label %244

244:                                              ; preds = %276, %220
  %245 = load i32, i32* %17, align 4
  %246 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %247 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %246, i32 0, i32 5
  %248 = load i32, i32* %247, align 8
  %249 = icmp slt i32 %245, %248
  br i1 %249, label %250, label %279

250:                                              ; preds = %244
  %251 = load i32*, i32** %15, align 8
  %252 = load i32, i32* %17, align 4
  %253 = load i32, i32* @SUBL, align 4
  %254 = mul nsw i32 %252, %253
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %251, i64 %255
  %257 = load i32*, i32** %15, align 8
  %258 = load i32, i32* %17, align 4
  %259 = load i32, i32* @SUBL, align 4
  %260 = mul nsw i32 %258, %259
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %257, i64 %261
  %263 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %264 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %263, i32 0, i32 3
  %265 = load i32*, i32** %264, align 8
  %266 = load i32, i32* %17, align 4
  %267 = sext i32 %266 to i64
  %268 = load i64, i64* @LPC_FILTERORDER, align 8
  %269 = add i64 %268, 1
  %270 = mul i64 %267, %269
  %271 = getelementptr inbounds i32, i32* %265, i64 %270
  %272 = load i64, i64* @LPC_FILTERORDER, align 8
  %273 = add i64 %272, 1
  %274 = load i32, i32* @SUBL, align 4
  %275 = call i32 @filter_arfq12(i32* %256, i32* %262, i32* %271, i64 %273, i32 %274)
  br label %276

276:                                              ; preds = %250
  %277 = load i32, i32* %17, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %17, align 4
  br label %244

279:                                              ; preds = %244
  %280 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %281 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %280, i32 0, i32 7
  %282 = load i32*, i32** %281, align 8
  %283 = load i32*, i32** %15, align 8
  %284 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %285 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 8
  %287 = sext i32 %286 to i64
  %288 = load i64, i64* @LPC_FILTERORDER, align 8
  %289 = sub i64 %287, %288
  %290 = getelementptr inbounds i32, i32* %283, i64 %289
  %291 = load i64, i64* @LPC_FILTERORDER, align 8
  %292 = mul i64 %291, 2
  %293 = call i32 @memcpy(i32* %282, i32* %290, i64 %292)
  br label %294

294:                                              ; preds = %279, %170
  %295 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %296 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %295, i32 0, i32 1
  %297 = load i32**, i32*** %296, align 8
  %298 = getelementptr inbounds i32*, i32** %297, i64 0
  %299 = load i32*, i32** %298, align 8
  %300 = load i32*, i32** %15, align 8
  %301 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %302 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 8
  %304 = mul nsw i32 %303, 2
  %305 = sext i32 %304 to i64
  %306 = call i32 @memcpy(i32* %299, i32* %300, i64 %305)
  %307 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %308 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %307, i32 0, i32 1
  %309 = load i32**, i32*** %308, align 8
  %310 = getelementptr inbounds i32*, i32** %309, i64 0
  %311 = load i32*, i32** %310, align 8
  %312 = load i32, i32* @hp_out_coeffs, align 4
  %313 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %314 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %313, i32 0, i32 11
  %315 = load i32, i32* %314, align 8
  %316 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %317 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %316, i32 0, i32 10
  %318 = load i32, i32* %317, align 4
  %319 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %320 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %319, i32 0, i32 2
  %321 = load i32, i32* %320, align 8
  %322 = call i32 @hp_output(i32* %311, i32 %312, i32 %315, i32 %318, i32 %321)
  %323 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %324 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %323, i32 0, i32 8
  %325 = load i32*, i32** %324, align 8
  %326 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %327 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %326, i32 0, i32 3
  %328 = load i32*, i32** %327, align 8
  %329 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %330 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %329, i32 0, i32 5
  %331 = load i32, i32* %330, align 8
  %332 = sext i32 %331 to i64
  %333 = load i64, i64* @LPC_FILTERORDER, align 8
  %334 = add i64 %333, 1
  %335 = mul i64 %332, %334
  %336 = mul i64 %335, 2
  %337 = call i32 @memcpy(i32* %325, i32* %328, i64 %336)
  %338 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %339 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %338, i32 0, i32 9
  store i32 0, i32* %339, align 8
  %340 = load i32, i32* %13, align 4
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %342, label %345

342:                                              ; preds = %294
  %343 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %344 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %343, i32 0, i32 9
  store i32 1, i32* %344, align 8
  br label %345

345:                                              ; preds = %342, %294
  %346 = load i32*, i32** %8, align 8
  store i32 1, i32* %346, align 4
  %347 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %348 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  store i32 %349, i32* %5, align 4
  br label %350

350:                                              ; preds = %345, %57, %42
  %351 = load i32, i32* %5, align 4
  ret i32 %351
}

declare dso_local i32 @init_get_bits8(i32*, i32*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_18__*, %struct.TYPE_17__*, i32) #1

declare dso_local i64 @unpack_frame(%struct.TYPE_15__*) #1

declare dso_local i32 @index_conv(i32) #1

declare dso_local i32 @lsf_dequantization(i32, i32, i32) #1

declare dso_local i32 @lsf_check_stability(i32, i64, i32) #1

declare dso_local i32 @lsp_interpolate(i32*, i32, i32, i64, %struct.TYPE_15__*) #1

declare dso_local i32 @decode_residual(%struct.TYPE_15__*, %struct.TYPE_19__*, i32*, i32*) #1

declare dso_local i32 @do_plc(i32*, i32, i32, i32*, i32*, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @xcorr_coeff(i32*, i32*, i64, i32, i32, i32) #1

declare dso_local i32 @filter_arfq12(i32*, i32*, i32*, i64, i32) #1

declare dso_local i32 @hp_output(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
