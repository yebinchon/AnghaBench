; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevcdec.c_hls_decode_entry_wpp.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevcdec.c_hls_decode_entry_wpp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i32*, i32, i32, %struct.TYPE_19__, %struct.TYPE_16__, i64, %struct.TYPE_20__*, %struct.TYPE_21__** }
%struct.TYPE_19__ = type { %struct.TYPE_18__*, %struct.TYPE_17__* }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32*, i32* }
%struct.TYPE_16__ = type { i32, i32, i32*, i64* }
%struct.TYPE_20__ = type { i32, i32 }

@SHIFT_CTB_WPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, i8*, i32, i32)* @hls_decode_entry_wpp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hls_decode_entry_wpp(%struct.TYPE_22__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %24, align 8
  store %struct.TYPE_21__* %25, %struct.TYPE_21__** %10, align 8
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 1, %31
  store i32 %32, i32* %13, align 4
  store i32 1, i32* %14, align 4
  %33 = load i8*, i8** %7, align 8
  %34 = bitcast i8* %33 to i32*
  store i32* %34, i32** %15, align 8
  %35 = load i32*, i32** %15, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %16, align 4
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 5
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %16, align 4
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %13, align 4
  %52 = add nsw i32 %50, %51
  %53 = sub nsw i32 %52, 1
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = ashr i32 %53, %59
  %61 = mul nsw i32 %44, %60
  %62 = add nsw i32 %43, %61
  store i32 %62, i32* %17, align 4
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %17, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %18, align 4
  %73 = load i32, i32* %16, align 4
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = srem i32 %73, %76
  store i32 %77, i32* %19, align 4
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 8
  %80 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %80, i64 %82
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %83, align 8
  store %struct.TYPE_21__* %84, %struct.TYPE_21__** %11, align 8
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 7
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %86, align 8
  store %struct.TYPE_20__* %87, %struct.TYPE_20__** %12, align 8
  %88 = load i32, i32* %16, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %145

90:                                               ; preds = %4
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 6
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 5
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 3
  %99 = load i64*, i64** %98, align 8
  %100 = load i32, i32* %16, align 4
  %101 = sub nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %99, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %95, %104
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i32 0, i32 5
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %16, align 4
  %111 = sub nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %109, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @init_get_bits8(i32* %92, i64 %105, i32 %114)
  store i32 %115, i32* %20, align 4
  %116 = load i32, i32* %20, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %90
  br label %371

119:                                              ; preds = %90
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 6
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 5
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 3
  %128 = load i64*, i64** %127, align 8
  %129 = load i32, i32* %16, align 4
  %130 = sub nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i64, i64* %128, i64 %131
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %124, %133
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 5
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 2
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %16, align 4
  %140 = sub nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %138, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @ff_init_cabac_decoder(i32* %121, i64 %134, i32 %143)
  br label %145

145:                                              ; preds = %119, %4
  br label %146

146:                                              ; preds = %362, %145
  %147 = load i32, i32* %14, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %158

149:                                              ; preds = %146
  %150 = load i32, i32* %18, align 4
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 4
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = icmp slt i32 %150, %156
  br label %158

158:                                              ; preds = %149, %146
  %159 = phi i1 [ false, %146 ], [ %157, %149 ]
  br i1 %159, label %160, label %363

160:                                              ; preds = %158
  %161 = load i32, i32* %17, align 4
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i32 0, i32 4
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = srem i32 %161, %167
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 4
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = shl i32 %168, %174
  store i32 %175, i32* %21, align 4
  %176 = load i32, i32* %17, align 4
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %178 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %177, i32 0, i32 4
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = sdiv i32 %176, %182
  %184 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %185 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %184, i32 0, i32 4
  %186 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = shl i32 %183, %189
  store i32 %190, i32* %22, align 4
  %191 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %192 = load i32, i32* %21, align 4
  %193 = load i32, i32* %22, align 4
  %194 = load i32, i32* %18, align 4
  %195 = call i32 @hls_decode_neighbour(%struct.TYPE_21__* %191, i32 %192, i32 %193, i32 %194)
  %196 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %197 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* %16, align 4
  %200 = load i32, i32* %19, align 4
  %201 = load i32, i32* @SHIFT_CTB_WPP, align 4
  %202 = call i32 @ff_thread_await_progress2(i32 %198, i32 %199, i32 %200, i32 %201)
  %203 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %204 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %203, i32 0, i32 3
  %205 = call i64 @atomic_load(i32* %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %215

207:                                              ; preds = %160
  %208 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %209 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* %16, align 4
  %212 = load i32, i32* %19, align 4
  %213 = load i32, i32* @SHIFT_CTB_WPP, align 4
  %214 = call i32 @ff_thread_report_progress2(i32 %210, i32 %211, i32 %212, i32 %213)
  store i32 0, i32* %5, align 4
  br label %389

215:                                              ; preds = %160
  %216 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %217 = load i32, i32* %18, align 4
  %218 = call i32 @ff_hevc_cabac_init(%struct.TYPE_21__* %216, i32 %217)
  store i32 %218, i32* %20, align 4
  %219 = load i32, i32* %20, align 4
  %220 = icmp slt i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %215
  br label %371

222:                                              ; preds = %215
  %223 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %224 = load i32, i32* %21, align 4
  %225 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %226 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %225, i32 0, i32 4
  %227 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %226, i32 0, i32 0
  %228 = load %struct.TYPE_18__*, %struct.TYPE_18__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = ashr i32 %224, %230
  %232 = load i32, i32* %22, align 4
  %233 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %234 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %233, i32 0, i32 4
  %235 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %234, i32 0, i32 0
  %236 = load %struct.TYPE_18__*, %struct.TYPE_18__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = ashr i32 %232, %238
  %240 = call i32 @hls_sao_param(%struct.TYPE_21__* %223, i32 %231, i32 %239)
  %241 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %242 = load i32, i32* %21, align 4
  %243 = load i32, i32* %22, align 4
  %244 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %245 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %244, i32 0, i32 4
  %246 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %245, i32 0, i32 0
  %247 = load %struct.TYPE_18__*, %struct.TYPE_18__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @hls_coding_quadtree(%struct.TYPE_21__* %241, i32 %242, i32 %243, i32 %249, i32 0)
  store i32 %250, i32* %14, align 4
  %251 = load i32, i32* %14, align 4
  %252 = icmp slt i32 %251, 0
  br i1 %252, label %253, label %255

253:                                              ; preds = %222
  %254 = load i32, i32* %14, align 4
  store i32 %254, i32* %20, align 4
  br label %371

255:                                              ; preds = %222
  %256 = load i32, i32* %18, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %18, align 4
  %258 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %259 = load i32, i32* %18, align 4
  %260 = call i32 @ff_hevc_save_states(%struct.TYPE_21__* %258, i32 %259)
  %261 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %262 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* %16, align 4
  %265 = load i32, i32* %19, align 4
  %266 = call i32 @ff_thread_report_progress2(i32 %263, i32 %264, i32 %265, i32 1)
  %267 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %268 = load i32, i32* %21, align 4
  %269 = load i32, i32* %22, align 4
  %270 = load i32, i32* %13, align 4
  %271 = call i32 @ff_hevc_hls_filters(%struct.TYPE_21__* %267, i32 %268, i32 %269, i32 %270)
  %272 = load i32, i32* %14, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %303, label %274

274:                                              ; preds = %255
  %275 = load i32, i32* %21, align 4
  %276 = load i32, i32* %13, align 4
  %277 = add nsw i32 %275, %276
  %278 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %279 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %278, i32 0, i32 4
  %280 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %279, i32 0, i32 0
  %281 = load %struct.TYPE_18__*, %struct.TYPE_18__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = icmp slt i32 %277, %283
  br i1 %284, label %285, label %303

285:                                              ; preds = %274
  %286 = load i32, i32* %16, align 4
  %287 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %288 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %287, i32 0, i32 5
  %289 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = icmp ne i32 %286, %290
  br i1 %291, label %292, label %303

292:                                              ; preds = %285
  %293 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %294 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %293, i32 0, i32 3
  %295 = call i32 @atomic_store(i32* %294, i32 1)
  %296 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %297 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 8
  %299 = load i32, i32* %16, align 4
  %300 = load i32, i32* %19, align 4
  %301 = load i32, i32* @SHIFT_CTB_WPP, align 4
  %302 = call i32 @ff_thread_report_progress2(i32 %298, i32 %299, i32 %300, i32 %301)
  store i32 0, i32* %5, align 4
  br label %389

303:                                              ; preds = %285, %274, %255
  %304 = load i32, i32* %21, align 4
  %305 = load i32, i32* %13, align 4
  %306 = add nsw i32 %304, %305
  %307 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %308 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %307, i32 0, i32 4
  %309 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %308, i32 0, i32 0
  %310 = load %struct.TYPE_18__*, %struct.TYPE_18__** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 4
  %313 = icmp sge i32 %306, %312
  br i1 %313, label %314, label %339

314:                                              ; preds = %303
  %315 = load i32, i32* %22, align 4
  %316 = load i32, i32* %13, align 4
  %317 = add nsw i32 %315, %316
  %318 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %319 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %318, i32 0, i32 4
  %320 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %319, i32 0, i32 0
  %321 = load %struct.TYPE_18__*, %struct.TYPE_18__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %321, i32 0, i32 4
  %323 = load i32, i32* %322, align 4
  %324 = icmp sge i32 %317, %323
  br i1 %324, label %325, label %339

325:                                              ; preds = %314
  %326 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %327 = load i32, i32* %21, align 4
  %328 = load i32, i32* %22, align 4
  %329 = load i32, i32* %13, align 4
  %330 = call i32 @ff_hevc_hls_filter(%struct.TYPE_21__* %326, i32 %327, i32 %328, i32 %329)
  %331 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %332 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %331, i32 0, i32 2
  %333 = load i32, i32* %332, align 8
  %334 = load i32, i32* %16, align 4
  %335 = load i32, i32* %19, align 4
  %336 = load i32, i32* @SHIFT_CTB_WPP, align 4
  %337 = call i32 @ff_thread_report_progress2(i32 %333, i32 %334, i32 %335, i32 %336)
  %338 = load i32, i32* %18, align 4
  store i32 %338, i32* %5, align 4
  br label %389

339:                                              ; preds = %314, %303
  %340 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %341 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %340, i32 0, i32 4
  %342 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %341, i32 0, i32 1
  %343 = load %struct.TYPE_17__*, %struct.TYPE_17__** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %343, i32 0, i32 1
  %345 = load i32*, i32** %344, align 8
  %346 = load i32, i32* %18, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i32, i32* %345, i64 %347
  %349 = load i32, i32* %348, align 4
  store i32 %349, i32* %17, align 4
  %350 = load i32, i32* %13, align 4
  %351 = load i32, i32* %21, align 4
  %352 = add nsw i32 %351, %350
  store i32 %352, i32* %21, align 4
  %353 = load i32, i32* %21, align 4
  %354 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %355 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %354, i32 0, i32 4
  %356 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %355, i32 0, i32 0
  %357 = load %struct.TYPE_18__*, %struct.TYPE_18__** %356, align 8
  %358 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %357, i32 0, i32 1
  %359 = load i32, i32* %358, align 4
  %360 = icmp sge i32 %353, %359
  br i1 %360, label %361, label %362

361:                                              ; preds = %339
  br label %363

362:                                              ; preds = %339
  br label %146

363:                                              ; preds = %361, %158
  %364 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %365 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %364, i32 0, i32 2
  %366 = load i32, i32* %365, align 8
  %367 = load i32, i32* %16, align 4
  %368 = load i32, i32* %19, align 4
  %369 = load i32, i32* @SHIFT_CTB_WPP, align 4
  %370 = call i32 @ff_thread_report_progress2(i32 %366, i32 %367, i32 %368, i32 %369)
  store i32 0, i32* %5, align 4
  br label %389

371:                                              ; preds = %253, %221, %118
  %372 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %373 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %372, i32 0, i32 1
  %374 = load i32*, i32** %373, align 8
  %375 = load i32, i32* %17, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i32, i32* %374, i64 %376
  store i32 -1, i32* %377, align 4
  %378 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %379 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %378, i32 0, i32 3
  %380 = call i32 @atomic_store(i32* %379, i32 1)
  %381 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %382 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %381, i32 0, i32 2
  %383 = load i32, i32* %382, align 8
  %384 = load i32, i32* %16, align 4
  %385 = load i32, i32* %19, align 4
  %386 = load i32, i32* @SHIFT_CTB_WPP, align 4
  %387 = call i32 @ff_thread_report_progress2(i32 %383, i32 %384, i32 %385, i32 %386)
  %388 = load i32, i32* %20, align 4
  store i32 %388, i32* %5, align 4
  br label %389

389:                                              ; preds = %371, %363, %325, %292, %207
  %390 = load i32, i32* %5, align 4
  ret i32 %390
}

declare dso_local i32 @init_get_bits8(i32*, i64, i32) #1

declare dso_local i32 @ff_init_cabac_decoder(i32*, i64, i32) #1

declare dso_local i32 @hls_decode_neighbour(%struct.TYPE_21__*, i32, i32, i32) #1

declare dso_local i32 @ff_thread_await_progress2(i32, i32, i32, i32) #1

declare dso_local i64 @atomic_load(i32*) #1

declare dso_local i32 @ff_thread_report_progress2(i32, i32, i32, i32) #1

declare dso_local i32 @ff_hevc_cabac_init(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @hls_sao_param(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @hls_coding_quadtree(%struct.TYPE_21__*, i32, i32, i32, i32) #1

declare dso_local i32 @ff_hevc_save_states(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @ff_hevc_hls_filters(%struct.TYPE_21__*, i32, i32, i32) #1

declare dso_local i32 @atomic_store(i32*, i32) #1

declare dso_local i32 @ff_hevc_hls_filter(%struct.TYPE_21__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
