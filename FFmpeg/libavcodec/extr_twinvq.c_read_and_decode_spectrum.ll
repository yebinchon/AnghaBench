; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_twinvq.c_read_and_decode_spectrum.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_twinvq.c_read_and_decode_spectrum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i32*, i32, %struct.TYPE_16__*, i32*, i32 (%struct.TYPE_19__*, i32, i32, float*, float*)*, i32 (%struct.TYPE_19__*, i32, i32, i32, i32, float, i32)*, %struct.TYPE_14__*, %struct.TYPE_18__*, %struct.TYPE_17__* }
%struct.TYPE_16__ = type { i32 (float*, float*, i32, i32)* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_18__ = type { i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_15__*, i64 }
%struct.TYPE_15__ = type { i32, i32, i64, i64 }

@TWINVQ_CHANNELS_MAX = common dso_local global i32 0, align 4
@TWINVQ_SUBBLOCKS_MAX = common dso_local global i32 0, align 4
@TWINVQ_PPC_SHAPE_LEN_MAX = common dso_local global i32 0, align 4
@TWINVQ_FT_LONG = common dso_local global i32 0, align 4
@TWINVQ_FT_PPC = common dso_local global i32 0, align 4
@TWINVQ_PPC_SHAPE_CB_SIZE = common dso_local global i32 0, align 4
@TWINVQ_LSP_COEFS_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*, float*, i32)* @read_and_decode_spectrum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_and_decode_spectrum(%struct.TYPE_19__* %0, float* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca float*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store float* %1, float** %5, align 8
  store i32 %2, i32* %6, align 4
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 9
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  store %struct.TYPE_17__* %23, %struct.TYPE_17__** %7, align 8
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 8
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i64 %29
  store %struct.TYPE_18__* %30, %struct.TYPE_18__** %8, align 8
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 7
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %9, align 4
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %10, align 4
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sdiv i32 %46, %47
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* @TWINVQ_CHANNELS_MAX, align 4
  %50 = load i32, i32* @TWINVQ_SUBBLOCKS_MAX, align 4
  %51 = mul nsw i32 %49, %50
  %52 = zext i32 %51 to i64
  %53 = call i8* @llvm.stacksave()
  store i8* %53, i8** %12, align 8
  %54 = alloca float, i64 %52, align 16
  store i64 %52, i64* %13, align 8
  %55 = load i32, i32* @TWINVQ_PPC_SHAPE_LEN_MAX, align 4
  %56 = load i32, i32* @TWINVQ_CHANNELS_MAX, align 4
  %57 = mul nsw i32 %55, %56
  %58 = mul nsw i32 %57, 4
  %59 = zext i32 %58 to i64
  %60 = alloca float, i64 %59, align 16
  store i64 %59, i64* %14, align 8
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 8
  %64 = load i32, i32* %63, align 4
  %65 = load float*, float** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @dequant(%struct.TYPE_19__* %61, i32 %64, float* %65, i32 %66, i64 %74, i64 %82, i32 %90)
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @dec_gain(%struct.TYPE_19__* %92, i32 %93, float* %54)
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @TWINVQ_FT_LONG, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %135

98:                                               ; preds = %3
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 3
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %9, align 4
  %108 = mul nsw i32 %106, %107
  %109 = add nsw i32 %103, %108
  %110 = sub nsw i32 %109, 1
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 3
  %115 = load i32, i32* %114, align 4
  %116 = sdiv i32 %110, %115
  store i32 %116, i32* %17, align 4
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 7
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @TWINVQ_FT_PPC, align 4
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = load i32, i32* %17, align 4
  %129 = load i32, i32* @TWINVQ_PPC_SHAPE_CB_SIZE, align 4
  %130 = mul nsw i32 %128, %129
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %127, %131
  %133 = load i32, i32* %17, align 4
  %134 = call i32 @dequant(%struct.TYPE_19__* %117, i32 %120, float* %60, i32 %121, i64 %124, i64 %132, i32 %133)
  br label %135

135:                                              ; preds = %98, %3
  store i32 0, i32* %15, align 4
  br label %136

136:                                              ; preds = %325, %135
  %137 = load i32, i32* %15, align 4
  %138 = load i32, i32* %9, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %328

140:                                              ; preds = %136
  %141 = load float*, float** %5, align 8
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* %15, align 4
  %146 = mul nsw i32 %144, %145
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds float, float* %141, i64 %147
  store float* %148, float** %18, align 8
  %149 = load i32, i32* @TWINVQ_LSP_COEFS_MAX, align 4
  %150 = zext i32 %149 to i64
  %151 = call i8* @llvm.stacksave()
  store i8* %151, i8** %19, align 8
  %152 = alloca float, i64 %150, align 16
  store i64 %150, i64* %20, align 8
  store i32 0, i32* %16, align 4
  br label %153

153:                                              ; preds = %220, %140
  %154 = load i32, i32* %16, align 4
  %155 = load i32, i32* %10, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %223

157:                                              ; preds = %153
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i32 0, i32 6
  %160 = load i32 (%struct.TYPE_19__*, i32, i32, i32, i32, float, i32)*, i32 (%struct.TYPE_19__*, i32, i32, i32, i32, float, i32)** %159, align 8
  %161 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 6
  %164 = load i32**, i32*** %163, align 8
  %165 = load i32, i32* %15, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32*, i32** %164, i64 %166
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %16, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i32 0, i32 5
  %175 = load i32**, i32*** %174, align 8
  %176 = load i32, i32* %15, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32*, i32** %175, i64 %177
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %16, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %15, align 4
  %185 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* %10, align 4
  %189 = load i32, i32* %15, align 4
  %190 = mul nsw i32 %188, %189
  %191 = load i32, i32* %16, align 4
  %192 = add nsw i32 %190, %191
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds float, float* %54, i64 %193
  %195 = load float, float* %194, align 4
  %196 = load i32, i32* %6, align 4
  %197 = call i32 %160(%struct.TYPE_19__* %161, i32 %172, i32 %183, i32 %184, i32 %187, float %195, i32 %196)
  %198 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %198, i32 0, i32 3
  %200 = load %struct.TYPE_16__*, %struct.TYPE_16__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %200, i32 0, i32 0
  %202 = load i32 (float*, float*, i32, i32)*, i32 (float*, float*, i32, i32)** %201, align 8
  %203 = load float*, float** %18, align 8
  %204 = load i32, i32* %11, align 4
  %205 = load i32, i32* %16, align 4
  %206 = mul nsw i32 %204, %205
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds float, float* %203, i64 %207
  %209 = load float*, float** %18, align 8
  %210 = load i32, i32* %11, align 4
  %211 = load i32, i32* %16, align 4
  %212 = mul nsw i32 %210, %211
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds float, float* %209, i64 %213
  %215 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* %11, align 4
  %219 = call i32 %202(float* %208, float* %214, i32 %217, i32 %218)
  br label %220

220:                                              ; preds = %157
  %221 = load i32, i32* %16, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %16, align 4
  br label %153

223:                                              ; preds = %153
  %224 = load i32, i32* %6, align 4
  %225 = load i32, i32* @TWINVQ_FT_LONG, align 4
  %226 = icmp eq i32 %224, %225
  br i1 %226, label %227, label %255

227:                                              ; preds = %223
  %228 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %228, i32 0, i32 5
  %230 = load i32 (%struct.TYPE_19__*, i32, i32, float*, float*)*, i32 (%struct.TYPE_19__*, i32, i32, float*, float*)** %229, align 8
  %231 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %232 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %232, i32 0, i32 4
  %234 = load i32*, i32** %233, align 8
  %235 = load i32, i32* %15, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %234, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %240 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %239, i32 0, i32 3
  %241 = load i32*, i32** %240, align 8
  %242 = load i32, i32* %15, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %241, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* %15, align 4
  %247 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %248 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = mul nsw i32 %246, %249
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds float, float* %60, i64 %251
  %253 = load float*, float** %18, align 8
  %254 = call i32 %230(%struct.TYPE_19__* %231, i32 %238, i32 %245, float* %252, float* %253)
  br label %255

255:                                              ; preds = %227, %223
  %256 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %257 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %258 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %257, i32 0, i32 2
  %259 = load i32*, i32** %258, align 8
  %260 = load i32, i32* %15, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %259, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %265 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %264, i32 0, i32 1
  %266 = load i32*, i32** %265, align 8
  %267 = load i32, i32* %15, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %266, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %272 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %271, i32 0, i32 0
  %273 = load i32*, i32** %272, align 8
  %274 = load i32, i32* %15, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %273, i64 %275
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %279 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %278, i32 0, i32 4
  %280 = load i32*, i32** %279, align 8
  %281 = load i32, i32* %15, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %280, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = call i32 @decode_lsp(%struct.TYPE_19__* %256, i32 %263, i32 %270, i32 %277, float* %152, i32 %284)
  %286 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %287 = load i32, i32* %6, align 4
  %288 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %289 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 8
  %291 = call i32 @dec_lpc_spectrum_inv(%struct.TYPE_19__* %286, float* %152, i32 %287, i32 %290)
  store i32 0, i32* %16, align 4
  br label %292

292:                                              ; preds = %320, %255
  %293 = load i32, i32* %16, align 4
  %294 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %295 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %294, i32 0, i32 2
  %296 = load %struct.TYPE_15__*, %struct.TYPE_15__** %295, align 8
  %297 = load i32, i32* %6, align 4
  %298 = zext i32 %297 to i64
  %299 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %296, i64 %298
  %300 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = icmp slt i32 %293, %301
  br i1 %302, label %303, label %323

303:                                              ; preds = %292
  %304 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %305 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %304, i32 0, i32 3
  %306 = load %struct.TYPE_16__*, %struct.TYPE_16__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %306, i32 0, i32 0
  %308 = load i32 (float*, float*, i32, i32)*, i32 (float*, float*, i32, i32)** %307, align 8
  %309 = load float*, float** %18, align 8
  %310 = load float*, float** %18, align 8
  %311 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %312 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %311, i32 0, i32 2
  %313 = load i32, i32* %312, align 8
  %314 = load i32, i32* %11, align 4
  %315 = call i32 %308(float* %309, float* %310, i32 %313, i32 %314)
  %316 = load i32, i32* %11, align 4
  %317 = load float*, float** %18, align 8
  %318 = sext i32 %316 to i64
  %319 = getelementptr inbounds float, float* %317, i64 %318
  store float* %319, float** %18, align 8
  br label %320

320:                                              ; preds = %303
  %321 = load i32, i32* %16, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %16, align 4
  br label %292

323:                                              ; preds = %292
  %324 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %324)
  br label %325

325:                                              ; preds = %323
  %326 = load i32, i32* %15, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %15, align 4
  br label %136

328:                                              ; preds = %136
  %329 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %329)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dequant(%struct.TYPE_19__*, i32, float*, i32, i64, i64, i32) #2

declare dso_local i32 @dec_gain(%struct.TYPE_19__*, i32, float*) #2

declare dso_local i32 @decode_lsp(%struct.TYPE_19__*, i32, i32, i32, float*, i32) #2

declare dso_local i32 @dec_lpc_spectrum_inv(%struct.TYPE_19__*, float*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
