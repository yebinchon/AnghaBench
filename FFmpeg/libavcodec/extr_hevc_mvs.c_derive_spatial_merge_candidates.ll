; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_mvs.c_derive_spatial_merge_candidates.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_mvs.c_derive_spatial_merge_candidates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_14__, %struct.TYPE_17__, %struct.TYPE_15__*, %struct.TYPE_20__* }
%struct.TYPE_14__ = type { i64, i32*, i32, i64 }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { %struct.MvField*, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64* }
%struct.TYPE_20__ = type { %struct.TYPE_13__, %struct.TYPE_18__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32 }
%struct.MvField = type { i32, i64*, i8** }

@HEVC_SLICE_P = common dso_local global i64 0, align 8
@PART_Nx2N = common dso_local global i64 0, align 8
@PART_nLx2N = common dso_local global i64 0, align 8
@PART_nRx2N = common dso_local global i64 0, align 8
@A1 = common dso_local global i32 0, align 4
@PART_2NxN = common dso_local global i64 0, align 8
@PART_2NxnU = common dso_local global i64 0, align 8
@PART_2NxnD = common dso_local global i64 0, align 8
@B1 = common dso_local global i32 0, align 4
@B0 = common dso_local global i32 0, align 4
@A0 = common dso_local global i32 0, align 4
@B2 = common dso_local global i32 0, align 4
@HEVC_SLICE_B = common dso_local global i64 0, align 8
@l0_l1_cand_idx = common dso_local global i32** null, align 8
@PF_L0 = common dso_local global i32 0, align 4
@PF_L1 = common dso_local global i32 0, align 4
@PF_BI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.MvField*)* @derive_spatial_merge_candidates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @derive_spatial_merge_candidates(%struct.TYPE_21__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, %struct.MvField* %9) #0 {
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.MvField*, align 8
  %21 = alloca %struct.TYPE_20__*, align 8
  %22 = alloca %struct.TYPE_19__*, align 8
  %23 = alloca %struct.MvField*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca %struct.MvField, align 8
  %50 = alloca %struct.MvField, align 8
  %51 = alloca %struct.MvField, align 8
  %52 = alloca %struct.MvField, align 8
  %53 = alloca %struct.MvField, align 8
  %54 = alloca i8*, align 8
  %55 = alloca i8*, align 8
  %56 = alloca i32, align 4
  %57 = alloca i32, align 4
  %58 = alloca i32, align 4
  %59 = alloca i32, align 4
  %60 = alloca i32, align 4
  %61 = alloca %struct.MvField, align 8
  %62 = alloca %struct.MvField, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store %struct.MvField* %9, %struct.MvField** %20, align 8
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 3
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %64, align 8
  store %struct.TYPE_20__* %65, %struct.TYPE_20__** %21, align 8
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %69, align 8
  store %struct.TYPE_19__* %70, %struct.TYPE_19__** %22, align 8
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = load %struct.MvField*, %struct.MvField** %74, align 8
  store %struct.MvField* %75, %struct.MvField** %23, align 8
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %24, align 4
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %25, align 4
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %26, align 4
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  store i32 %93, i32* %27, align 4
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %28, align 4
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  store i32 %101, i32* %29, align 4
  %102 = load i32, i32* %12, align 4
  %103 = sub nsw i32 %102, 1
  store i32 %103, i32* %30, align 4
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* %15, align 4
  %106 = add nsw i32 %104, %105
  %107 = sub nsw i32 %106, 1
  store i32 %107, i32* %31, align 4
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* %14, align 4
  %110 = add nsw i32 %108, %109
  %111 = sub nsw i32 %110, 1
  store i32 %111, i32* %32, align 4
  %112 = load i32, i32* %13, align 4
  %113 = sub nsw i32 %112, 1
  store i32 %113, i32* %33, align 4
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* %14, align 4
  %116 = add nsw i32 %114, %115
  store i32 %116, i32* %34, align 4
  %117 = load i32, i32* %13, align 4
  %118 = sub nsw i32 %117, 1
  store i32 %118, i32* %35, align 4
  %119 = load i32, i32* %12, align 4
  %120 = sub nsw i32 %119, 1
  store i32 %120, i32* %36, align 4
  %121 = load i32, i32* %13, align 4
  %122 = load i32, i32* %15, align 4
  %123 = add nsw i32 %121, %122
  store i32 %123, i32* %37, align 4
  %124 = load i32, i32* %12, align 4
  %125 = sub nsw i32 %124, 1
  store i32 %125, i32* %38, align 4
  %126 = load i32, i32* %13, align 4
  %127 = sub nsw i32 %126, 1
  store i32 %127, i32* %39, align 4
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @HEVC_SLICE_P, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %141

134:                                              ; preds = %10
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  %140 = load i32, i32* %139, align 4
  br label %155

141:                                              ; preds = %10
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 1
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @FFMIN(i32 %147, i32 %153)
  br label %155

155:                                              ; preds = %141, %134
  %156 = phi i32 [ %140, %134 ], [ %154, %141 ]
  store i32 %156, i32* %40, align 4
  store i32 0, i32* %41, align 4
  store i32 0, i32* %42, align 4
  store i32 0, i32* %43, align 4
  %157 = load i32, i32* %17, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %183, label %159

159:                                              ; preds = %155
  %160 = load i32, i32* %18, align 4
  %161 = icmp eq i32 %160, 1
  br i1 %161, label %162, label %183

162:                                              ; preds = %159
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @PART_Nx2N, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %191, label %169

169:                                              ; preds = %162
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @PART_nLx2N, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %191, label %176

176:                                              ; preds = %169
  %177 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @PART_nRx2N, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %191, label %183

183:                                              ; preds = %176, %159, %155
  %184 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %185 = load i32, i32* %30, align 4
  %186 = load i32, i32* %31, align 4
  %187 = load i32, i32* %12, align 4
  %188 = load i32, i32* %13, align 4
  %189 = call i64 @is_diff_mer(%struct.TYPE_21__* %184, i32 %185, i32 %186, i32 %187, i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %183, %176, %169, %162
  store i32 0, i32* %45, align 4
  br label %213

192:                                              ; preds = %183
  %193 = load i32, i32* %26, align 4
  %194 = load i32, i32* @A1, align 4
  %195 = call i32 @AVAILABLE(i32 %193, i32 %194)
  store i32 %195, i32* %45, align 4
  %196 = load i32, i32* %45, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %212

198:                                              ; preds = %192
  %199 = load %struct.MvField*, %struct.MvField** %20, align 8
  %200 = load i32, i32* %42, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.MvField, %struct.MvField* %199, i64 %201
  %203 = load i32, i32* @A1, align 4
  call void @TAB_MVF_PU(%struct.MvField* sret %49, i32 %203)
  %204 = bitcast %struct.MvField* %202 to i8*
  %205 = bitcast %struct.MvField* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %204, i8* align 8 %205, i64 24, i1 false)
  %206 = load i32, i32* %19, align 4
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %198
  br label %773

209:                                              ; preds = %198
  %210 = load i32, i32* %42, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %42, align 4
  br label %212

212:                                              ; preds = %209, %192
  br label %213

213:                                              ; preds = %212, %191
  %214 = load i32, i32* %17, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %240, label %216

216:                                              ; preds = %213
  %217 = load i32, i32* %18, align 4
  %218 = icmp eq i32 %217, 1
  br i1 %218, label %219, label %240

219:                                              ; preds = %216
  %220 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %221 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @PART_2NxN, align 8
  %225 = icmp eq i64 %223, %224
  br i1 %225, label %248, label %226

226:                                              ; preds = %219
  %227 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %228 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @PART_2NxnU, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %248, label %233

233:                                              ; preds = %226
  %234 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %235 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* @PART_2NxnD, align 8
  %239 = icmp eq i64 %237, %238
  br i1 %239, label %248, label %240

240:                                              ; preds = %233, %216, %213
  %241 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %242 = load i32, i32* %32, align 4
  %243 = load i32, i32* %33, align 4
  %244 = load i32, i32* %12, align 4
  %245 = load i32, i32* %13, align 4
  %246 = call i64 @is_diff_mer(%struct.TYPE_21__* %241, i32 %242, i32 %243, i32 %244, i32 %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %240, %233, %226, %219
  store i32 0, i32* %47, align 4
  br label %279

249:                                              ; preds = %240
  %250 = load i32, i32* %28, align 4
  %251 = load i32, i32* @B1, align 4
  %252 = call i32 @AVAILABLE(i32 %250, i32 %251)
  store i32 %252, i32* %47, align 4
  %253 = load i32, i32* %47, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %278

255:                                              ; preds = %249
  %256 = load i32, i32* %45, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %263

258:                                              ; preds = %255
  %259 = load i32, i32* @B1, align 4
  %260 = load i32, i32* @A1, align 4
  %261 = call i64 @COMPARE_MV_REFIDX(i32 %259, i32 %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %278, label %263

263:                                              ; preds = %258, %255
  %264 = load %struct.MvField*, %struct.MvField** %20, align 8
  %265 = load i32, i32* %42, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.MvField, %struct.MvField* %264, i64 %266
  %268 = load i32, i32* @B1, align 4
  call void @TAB_MVF_PU(%struct.MvField* sret %50, i32 %268)
  %269 = bitcast %struct.MvField* %267 to i8*
  %270 = bitcast %struct.MvField* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %269, i8* align 8 %270, i64 24, i1 false)
  %271 = load i32, i32* %19, align 4
  %272 = load i32, i32* %42, align 4
  %273 = icmp eq i32 %271, %272
  br i1 %273, label %274, label %275

274:                                              ; preds = %263
  br label %773

275:                                              ; preds = %263
  %276 = load i32, i32* %42, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %42, align 4
  br label %278

278:                                              ; preds = %275, %258, %249
  br label %279

279:                                              ; preds = %278, %248
  %280 = load i32, i32* %29, align 4
  %281 = load i32, i32* @B0, align 4
  %282 = call i32 @AVAILABLE(i32 %280, i32 %281)
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %306

284:                                              ; preds = %279
  %285 = load i32, i32* %34, align 4
  %286 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %287 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %286, i32 0, i32 1
  %288 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %287, i32 0, i32 0
  %289 = load %struct.TYPE_16__*, %struct.TYPE_16__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = icmp slt i32 %285, %291
  br i1 %292, label %293, label %306

293:                                              ; preds = %284
  %294 = load i32, i32* @B0, align 4
  %295 = call i64 @PRED_BLOCK_AVAILABLE(i32 %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %306

297:                                              ; preds = %293
  %298 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %299 = load i32, i32* %34, align 4
  %300 = load i32, i32* %35, align 4
  %301 = load i32, i32* %12, align 4
  %302 = load i32, i32* %13, align 4
  %303 = call i64 @is_diff_mer(%struct.TYPE_21__* %298, i32 %299, i32 %300, i32 %301, i32 %302)
  %304 = icmp ne i64 %303, 0
  %305 = xor i1 %304, true
  br label %306

306:                                              ; preds = %297, %293, %284, %279
  %307 = phi i1 [ false, %293 ], [ false, %284 ], [ false, %279 ], [ %305, %297 ]
  %308 = zext i1 %307 to i32
  store i32 %308, i32* %46, align 4
  %309 = load i32, i32* %46, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %334

311:                                              ; preds = %306
  %312 = load i32, i32* %47, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %319

314:                                              ; preds = %311
  %315 = load i32, i32* @B0, align 4
  %316 = load i32, i32* @B1, align 4
  %317 = call i64 @COMPARE_MV_REFIDX(i32 %315, i32 %316)
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %334, label %319

319:                                              ; preds = %314, %311
  %320 = load %struct.MvField*, %struct.MvField** %20, align 8
  %321 = load i32, i32* %42, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds %struct.MvField, %struct.MvField* %320, i64 %322
  %324 = load i32, i32* @B0, align 4
  call void @TAB_MVF_PU(%struct.MvField* sret %51, i32 %324)
  %325 = bitcast %struct.MvField* %323 to i8*
  %326 = bitcast %struct.MvField* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %325, i8* align 8 %326, i64 24, i1 false)
  %327 = load i32, i32* %19, align 4
  %328 = load i32, i32* %42, align 4
  %329 = icmp eq i32 %327, %328
  br i1 %329, label %330, label %331

330:                                              ; preds = %319
  br label %773

331:                                              ; preds = %319
  %332 = load i32, i32* %42, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %42, align 4
  br label %334

334:                                              ; preds = %331, %314, %306
  %335 = load i32, i32* %25, align 4
  %336 = load i32, i32* @A0, align 4
  %337 = call i32 @AVAILABLE(i32 %335, i32 %336)
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %361

339:                                              ; preds = %334
  %340 = load i32, i32* %37, align 4
  %341 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %342 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %341, i32 0, i32 1
  %343 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %342, i32 0, i32 0
  %344 = load %struct.TYPE_16__*, %struct.TYPE_16__** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %344, i32 0, i32 2
  %346 = load i32, i32* %345, align 4
  %347 = icmp slt i32 %340, %346
  br i1 %347, label %348, label %361

348:                                              ; preds = %339
  %349 = load i32, i32* @A0, align 4
  %350 = call i64 @PRED_BLOCK_AVAILABLE(i32 %349)
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %361

352:                                              ; preds = %348
  %353 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %354 = load i32, i32* %36, align 4
  %355 = load i32, i32* %37, align 4
  %356 = load i32, i32* %12, align 4
  %357 = load i32, i32* %13, align 4
  %358 = call i64 @is_diff_mer(%struct.TYPE_21__* %353, i32 %354, i32 %355, i32 %356, i32 %357)
  %359 = icmp ne i64 %358, 0
  %360 = xor i1 %359, true
  br label %361

361:                                              ; preds = %352, %348, %339, %334
  %362 = phi i1 [ false, %348 ], [ false, %339 ], [ false, %334 ], [ %360, %352 ]
  %363 = zext i1 %362 to i32
  store i32 %363, i32* %44, align 4
  %364 = load i32, i32* %44, align 4
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %389

366:                                              ; preds = %361
  %367 = load i32, i32* %45, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %374

369:                                              ; preds = %366
  %370 = load i32, i32* @A0, align 4
  %371 = load i32, i32* @A1, align 4
  %372 = call i64 @COMPARE_MV_REFIDX(i32 %370, i32 %371)
  %373 = icmp ne i64 %372, 0
  br i1 %373, label %389, label %374

374:                                              ; preds = %369, %366
  %375 = load %struct.MvField*, %struct.MvField** %20, align 8
  %376 = load i32, i32* %42, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds %struct.MvField, %struct.MvField* %375, i64 %377
  %379 = load i32, i32* @A0, align 4
  call void @TAB_MVF_PU(%struct.MvField* sret %52, i32 %379)
  %380 = bitcast %struct.MvField* %378 to i8*
  %381 = bitcast %struct.MvField* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %380, i8* align 8 %381, i64 24, i1 false)
  %382 = load i32, i32* %19, align 4
  %383 = load i32, i32* %42, align 4
  %384 = icmp eq i32 %382, %383
  br i1 %384, label %385, label %386

385:                                              ; preds = %374
  br label %773

386:                                              ; preds = %374
  %387 = load i32, i32* %42, align 4
  %388 = add nsw i32 %387, 1
  store i32 %388, i32* %42, align 4
  br label %389

389:                                              ; preds = %386, %369, %361
  %390 = load i32, i32* %27, align 4
  %391 = load i32, i32* @B2, align 4
  %392 = call i32 @AVAILABLE(i32 %390, i32 %391)
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %403

394:                                              ; preds = %389
  %395 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %396 = load i32, i32* %38, align 4
  %397 = load i32, i32* %39, align 4
  %398 = load i32, i32* %12, align 4
  %399 = load i32, i32* %13, align 4
  %400 = call i64 @is_diff_mer(%struct.TYPE_21__* %395, i32 %396, i32 %397, i32 %398, i32 %399)
  %401 = icmp ne i64 %400, 0
  %402 = xor i1 %401, true
  br label %403

403:                                              ; preds = %394, %389
  %404 = phi i1 [ false, %389 ], [ %402, %394 ]
  %405 = zext i1 %404 to i32
  store i32 %405, i32* %48, align 4
  %406 = load i32, i32* %48, align 4
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %442

408:                                              ; preds = %403
  %409 = load i32, i32* %45, align 4
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %416

411:                                              ; preds = %408
  %412 = load i32, i32* @B2, align 4
  %413 = load i32, i32* @A1, align 4
  %414 = call i64 @COMPARE_MV_REFIDX(i32 %412, i32 %413)
  %415 = icmp ne i64 %414, 0
  br i1 %415, label %442, label %416

416:                                              ; preds = %411, %408
  %417 = load i32, i32* %47, align 4
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %424

419:                                              ; preds = %416
  %420 = load i32, i32* @B2, align 4
  %421 = load i32, i32* @B1, align 4
  %422 = call i64 @COMPARE_MV_REFIDX(i32 %420, i32 %421)
  %423 = icmp ne i64 %422, 0
  br i1 %423, label %442, label %424

424:                                              ; preds = %419, %416
  %425 = load i32, i32* %42, align 4
  %426 = icmp ne i32 %425, 4
  br i1 %426, label %427, label %442

427:                                              ; preds = %424
  %428 = load %struct.MvField*, %struct.MvField** %20, align 8
  %429 = load i32, i32* %42, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds %struct.MvField, %struct.MvField* %428, i64 %430
  %432 = load i32, i32* @B2, align 4
  call void @TAB_MVF_PU(%struct.MvField* sret %53, i32 %432)
  %433 = bitcast %struct.MvField* %431 to i8*
  %434 = bitcast %struct.MvField* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %433, i8* align 8 %434, i64 24, i1 false)
  %435 = load i32, i32* %19, align 4
  %436 = load i32, i32* %42, align 4
  %437 = icmp eq i32 %435, %436
  br i1 %437, label %438, label %439

438:                                              ; preds = %427
  br label %773

439:                                              ; preds = %427
  %440 = load i32, i32* %42, align 4
  %441 = add nsw i32 %440, 1
  store i32 %441, i32* %42, align 4
  br label %442

442:                                              ; preds = %439, %424, %419, %411, %403
  %443 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %444 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %443, i32 0, i32 0
  %445 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %444, i32 0, i32 3
  %446 = load i64, i64* %445, align 8
  %447 = icmp ne i64 %446, 0
  br i1 %447, label %448, label %524

448:                                              ; preds = %442
  %449 = load i32, i32* %42, align 4
  %450 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %451 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %450, i32 0, i32 0
  %452 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %451, i32 0, i32 2
  %453 = load i32, i32* %452, align 8
  %454 = icmp slt i32 %449, %453
  br i1 %454, label %455, label %524

455:                                              ; preds = %448
  store i8* null, i8** %54, align 8
  store i8* null, i8** %55, align 8
  %456 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %457 = load i32, i32* %12, align 4
  %458 = load i32, i32* %13, align 4
  %459 = load i32, i32* %14, align 4
  %460 = load i32, i32* %15, align 4
  %461 = call i32 @temporal_luma_motion_vector(%struct.TYPE_21__* %456, i32 %457, i32 %458, i32 %459, i32 %460, i32 0, i8** %54, i32 0)
  store i32 %461, i32* %56, align 4
  %462 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %463 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %462, i32 0, i32 0
  %464 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %463, i32 0, i32 0
  %465 = load i64, i64* %464, align 8
  %466 = load i64, i64* @HEVC_SLICE_B, align 8
  %467 = icmp eq i64 %465, %466
  br i1 %467, label %468, label %475

468:                                              ; preds = %455
  %469 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %470 = load i32, i32* %12, align 4
  %471 = load i32, i32* %13, align 4
  %472 = load i32, i32* %14, align 4
  %473 = load i32, i32* %15, align 4
  %474 = call i32 @temporal_luma_motion_vector(%struct.TYPE_21__* %469, i32 %470, i32 %471, i32 %472, i32 %473, i32 0, i8** %55, i32 1)
  br label %476

475:                                              ; preds = %455
  br label %476

476:                                              ; preds = %475, %468
  %477 = phi i32 [ %474, %468 ], [ 0, %475 ]
  store i32 %477, i32* %57, align 4
  %478 = load i32, i32* %56, align 4
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %483, label %480

480:                                              ; preds = %476
  %481 = load i32, i32* %57, align 4
  %482 = icmp ne i32 %481, 0
  br i1 %482, label %483, label %523

483:                                              ; preds = %480, %476
  %484 = load i32, i32* %56, align 4
  %485 = load i32, i32* %57, align 4
  %486 = shl i32 %485, 1
  %487 = add nsw i32 %484, %486
  %488 = load %struct.MvField*, %struct.MvField** %20, align 8
  %489 = load i32, i32* %42, align 4
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds %struct.MvField, %struct.MvField* %488, i64 %490
  %492 = getelementptr inbounds %struct.MvField, %struct.MvField* %491, i32 0, i32 0
  store i32 %487, i32* %492, align 8
  %493 = load %struct.MvField*, %struct.MvField** %20, align 8
  %494 = load i32, i32* %42, align 4
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds %struct.MvField, %struct.MvField* %493, i64 %495
  %497 = getelementptr inbounds %struct.MvField, %struct.MvField* %496, i32 0, i32 1
  %498 = load i64*, i64** %497, align 8
  %499 = call i32 @AV_ZERO16(i64* %498)
  %500 = load i8*, i8** %54, align 8
  %501 = load %struct.MvField*, %struct.MvField** %20, align 8
  %502 = load i32, i32* %42, align 4
  %503 = sext i32 %502 to i64
  %504 = getelementptr inbounds %struct.MvField, %struct.MvField* %501, i64 %503
  %505 = getelementptr inbounds %struct.MvField, %struct.MvField* %504, i32 0, i32 2
  %506 = load i8**, i8*** %505, align 8
  %507 = getelementptr inbounds i8*, i8** %506, i64 0
  store i8* %500, i8** %507, align 8
  %508 = load i8*, i8** %55, align 8
  %509 = load %struct.MvField*, %struct.MvField** %20, align 8
  %510 = load i32, i32* %42, align 4
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds %struct.MvField, %struct.MvField* %509, i64 %511
  %513 = getelementptr inbounds %struct.MvField, %struct.MvField* %512, i32 0, i32 2
  %514 = load i8**, i8*** %513, align 8
  %515 = getelementptr inbounds i8*, i8** %514, i64 1
  store i8* %508, i8** %515, align 8
  %516 = load i32, i32* %19, align 4
  %517 = load i32, i32* %42, align 4
  %518 = icmp eq i32 %516, %517
  br i1 %518, label %519, label %520

519:                                              ; preds = %483
  br label %773

520:                                              ; preds = %483
  %521 = load i32, i32* %42, align 4
  %522 = add nsw i32 %521, 1
  store i32 %522, i32* %42, align 4
  br label %523

523:                                              ; preds = %520, %480
  br label %524

524:                                              ; preds = %523, %448, %442
  %525 = load i32, i32* %42, align 4
  store i32 %525, i32* %43, align 4
  %526 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %527 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %526, i32 0, i32 0
  %528 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %527, i32 0, i32 0
  %529 = load i64, i64* %528, align 8
  %530 = load i64, i64* @HEVC_SLICE_B, align 8
  %531 = icmp eq i64 %529, %530
  br i1 %531, label %532, label %692

532:                                              ; preds = %524
  %533 = load i32, i32* %43, align 4
  %534 = icmp sgt i32 %533, 1
  br i1 %534, label %535, label %692

535:                                              ; preds = %532
  %536 = load i32, i32* %43, align 4
  %537 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %538 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %537, i32 0, i32 0
  %539 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %538, i32 0, i32 2
  %540 = load i32, i32* %539, align 8
  %541 = icmp slt i32 %536, %540
  br i1 %541, label %542, label %692

542:                                              ; preds = %535
  store i32 0, i32* %58, align 4
  store i32 0, i32* %58, align 4
  br label %543

543:                                              ; preds = %688, %542
  %544 = load i32, i32* %42, align 4
  %545 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %546 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %545, i32 0, i32 0
  %547 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %546, i32 0, i32 2
  %548 = load i32, i32* %547, align 8
  %549 = icmp slt i32 %544, %548
  br i1 %549, label %550, label %557

550:                                              ; preds = %543
  %551 = load i32, i32* %58, align 4
  %552 = load i32, i32* %43, align 4
  %553 = load i32, i32* %43, align 4
  %554 = sub nsw i32 %553, 1
  %555 = mul nsw i32 %552, %554
  %556 = icmp slt i32 %551, %555
  br label %557

557:                                              ; preds = %550, %543
  %558 = phi i1 [ false, %543 ], [ %556, %550 ]
  br i1 %558, label %559, label %691

559:                                              ; preds = %557
  %560 = load i32**, i32*** @l0_l1_cand_idx, align 8
  %561 = load i32, i32* %58, align 4
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds i32*, i32** %560, i64 %562
  %564 = load i32*, i32** %563, align 8
  %565 = getelementptr inbounds i32, i32* %564, i64 0
  %566 = load i32, i32* %565, align 4
  store i32 %566, i32* %59, align 4
  %567 = load i32**, i32*** @l0_l1_cand_idx, align 8
  %568 = load i32, i32* %58, align 4
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds i32*, i32** %567, i64 %569
  %571 = load i32*, i32** %570, align 8
  %572 = getelementptr inbounds i32, i32* %571, i64 1
  %573 = load i32, i32* %572, align 4
  store i32 %573, i32* %60, align 4
  %574 = load %struct.MvField*, %struct.MvField** %20, align 8
  %575 = load i32, i32* %59, align 4
  %576 = sext i32 %575 to i64
  %577 = getelementptr inbounds %struct.MvField, %struct.MvField* %574, i64 %576
  %578 = bitcast %struct.MvField* %61 to i8*
  %579 = bitcast %struct.MvField* %577 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %578, i8* align 8 %579, i64 24, i1 false)
  %580 = load %struct.MvField*, %struct.MvField** %20, align 8
  %581 = load i32, i32* %60, align 4
  %582 = sext i32 %581 to i64
  %583 = getelementptr inbounds %struct.MvField, %struct.MvField* %580, i64 %582
  %584 = bitcast %struct.MvField* %62 to i8*
  %585 = bitcast %struct.MvField* %583 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %584, i8* align 8 %585, i64 24, i1 false)
  %586 = getelementptr inbounds %struct.MvField, %struct.MvField* %61, i32 0, i32 0
  %587 = load i32, i32* %586, align 8
  %588 = load i32, i32* @PF_L0, align 4
  %589 = and i32 %587, %588
  %590 = icmp ne i32 %589, 0
  br i1 %590, label %591, label %687

591:                                              ; preds = %559
  %592 = getelementptr inbounds %struct.MvField, %struct.MvField* %62, i32 0, i32 0
  %593 = load i32, i32* %592, align 8
  %594 = load i32, i32* @PF_L1, align 4
  %595 = and i32 %593, %594
  %596 = icmp ne i32 %595, 0
  br i1 %596, label %597, label %687

597:                                              ; preds = %591
  %598 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %599 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %598, i64 0
  %600 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %599, i32 0, i32 0
  %601 = load i64*, i64** %600, align 8
  %602 = getelementptr inbounds %struct.MvField, %struct.MvField* %61, i32 0, i32 1
  %603 = load i64*, i64** %602, align 8
  %604 = getelementptr inbounds i64, i64* %603, i64 0
  %605 = load i64, i64* %604, align 8
  %606 = getelementptr inbounds i64, i64* %601, i64 %605
  %607 = load i64, i64* %606, align 8
  %608 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %609 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %608, i64 1
  %610 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %609, i32 0, i32 0
  %611 = load i64*, i64** %610, align 8
  %612 = getelementptr inbounds %struct.MvField, %struct.MvField* %62, i32 0, i32 1
  %613 = load i64*, i64** %612, align 8
  %614 = getelementptr inbounds i64, i64* %613, i64 1
  %615 = load i64, i64* %614, align 8
  %616 = getelementptr inbounds i64, i64* %611, i64 %615
  %617 = load i64, i64* %616, align 8
  %618 = icmp ne i64 %607, %617
  br i1 %618, label %629, label %619

619:                                              ; preds = %597
  %620 = getelementptr inbounds %struct.MvField, %struct.MvField* %61, i32 0, i32 2
  %621 = load i8**, i8*** %620, align 8
  %622 = getelementptr inbounds i8*, i8** %621, i64 0
  %623 = call i64 @AV_RN32A(i8** %622)
  %624 = getelementptr inbounds %struct.MvField, %struct.MvField* %62, i32 0, i32 2
  %625 = load i8**, i8*** %624, align 8
  %626 = getelementptr inbounds i8*, i8** %625, i64 1
  %627 = call i64 @AV_RN32A(i8** %626)
  %628 = icmp ne i64 %623, %627
  br i1 %628, label %629, label %687

629:                                              ; preds = %619, %597
  %630 = getelementptr inbounds %struct.MvField, %struct.MvField* %61, i32 0, i32 1
  %631 = load i64*, i64** %630, align 8
  %632 = getelementptr inbounds i64, i64* %631, i64 0
  %633 = load i64, i64* %632, align 8
  %634 = load %struct.MvField*, %struct.MvField** %20, align 8
  %635 = load i32, i32* %42, align 4
  %636 = sext i32 %635 to i64
  %637 = getelementptr inbounds %struct.MvField, %struct.MvField* %634, i64 %636
  %638 = getelementptr inbounds %struct.MvField, %struct.MvField* %637, i32 0, i32 1
  %639 = load i64*, i64** %638, align 8
  %640 = getelementptr inbounds i64, i64* %639, i64 0
  store i64 %633, i64* %640, align 8
  %641 = getelementptr inbounds %struct.MvField, %struct.MvField* %62, i32 0, i32 1
  %642 = load i64*, i64** %641, align 8
  %643 = getelementptr inbounds i64, i64* %642, i64 1
  %644 = load i64, i64* %643, align 8
  %645 = load %struct.MvField*, %struct.MvField** %20, align 8
  %646 = load i32, i32* %42, align 4
  %647 = sext i32 %646 to i64
  %648 = getelementptr inbounds %struct.MvField, %struct.MvField* %645, i64 %647
  %649 = getelementptr inbounds %struct.MvField, %struct.MvField* %648, i32 0, i32 1
  %650 = load i64*, i64** %649, align 8
  %651 = getelementptr inbounds i64, i64* %650, i64 1
  store i64 %644, i64* %651, align 8
  %652 = load i32, i32* @PF_BI, align 4
  %653 = load %struct.MvField*, %struct.MvField** %20, align 8
  %654 = load i32, i32* %42, align 4
  %655 = sext i32 %654 to i64
  %656 = getelementptr inbounds %struct.MvField, %struct.MvField* %653, i64 %655
  %657 = getelementptr inbounds %struct.MvField, %struct.MvField* %656, i32 0, i32 0
  store i32 %652, i32* %657, align 8
  %658 = load %struct.MvField*, %struct.MvField** %20, align 8
  %659 = load i32, i32* %42, align 4
  %660 = sext i32 %659 to i64
  %661 = getelementptr inbounds %struct.MvField, %struct.MvField* %658, i64 %660
  %662 = getelementptr inbounds %struct.MvField, %struct.MvField* %661, i32 0, i32 2
  %663 = load i8**, i8*** %662, align 8
  %664 = getelementptr inbounds i8*, i8** %663, i64 0
  %665 = getelementptr inbounds %struct.MvField, %struct.MvField* %61, i32 0, i32 2
  %666 = load i8**, i8*** %665, align 8
  %667 = getelementptr inbounds i8*, i8** %666, i64 0
  %668 = call i32 @AV_COPY32(i8** %664, i8** %667)
  %669 = load %struct.MvField*, %struct.MvField** %20, align 8
  %670 = load i32, i32* %42, align 4
  %671 = sext i32 %670 to i64
  %672 = getelementptr inbounds %struct.MvField, %struct.MvField* %669, i64 %671
  %673 = getelementptr inbounds %struct.MvField, %struct.MvField* %672, i32 0, i32 2
  %674 = load i8**, i8*** %673, align 8
  %675 = getelementptr inbounds i8*, i8** %674, i64 1
  %676 = getelementptr inbounds %struct.MvField, %struct.MvField* %62, i32 0, i32 2
  %677 = load i8**, i8*** %676, align 8
  %678 = getelementptr inbounds i8*, i8** %677, i64 1
  %679 = call i32 @AV_COPY32(i8** %675, i8** %678)
  %680 = load i32, i32* %19, align 4
  %681 = load i32, i32* %42, align 4
  %682 = icmp eq i32 %680, %681
  br i1 %682, label %683, label %684

683:                                              ; preds = %629
  br label %773

684:                                              ; preds = %629
  %685 = load i32, i32* %42, align 4
  %686 = add nsw i32 %685, 1
  store i32 %686, i32* %42, align 4
  br label %687

687:                                              ; preds = %684, %619, %591, %559
  br label %688

688:                                              ; preds = %687
  %689 = load i32, i32* %58, align 4
  %690 = add nsw i32 %689, 1
  store i32 %690, i32* %58, align 4
  br label %543

691:                                              ; preds = %557
  br label %692

692:                                              ; preds = %691, %535, %532, %524
  br label %693

693:                                              ; preds = %768, %692
  %694 = load i32, i32* %42, align 4
  %695 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %696 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %695, i32 0, i32 0
  %697 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %696, i32 0, i32 2
  %698 = load i32, i32* %697, align 8
  %699 = icmp slt i32 %694, %698
  br i1 %699, label %700, label %773

700:                                              ; preds = %693
  %701 = load i32, i32* @PF_L0, align 4
  %702 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %703 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %702, i32 0, i32 0
  %704 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %703, i32 0, i32 0
  %705 = load i64, i64* %704, align 8
  %706 = load i64, i64* @HEVC_SLICE_B, align 8
  %707 = icmp eq i64 %705, %706
  %708 = zext i1 %707 to i32
  %709 = shl i32 %708, 1
  %710 = add nsw i32 %701, %709
  %711 = load %struct.MvField*, %struct.MvField** %20, align 8
  %712 = load i32, i32* %42, align 4
  %713 = sext i32 %712 to i64
  %714 = getelementptr inbounds %struct.MvField, %struct.MvField* %711, i64 %713
  %715 = getelementptr inbounds %struct.MvField, %struct.MvField* %714, i32 0, i32 0
  store i32 %710, i32* %715, align 8
  %716 = load %struct.MvField*, %struct.MvField** %20, align 8
  %717 = load i32, i32* %42, align 4
  %718 = sext i32 %717 to i64
  %719 = getelementptr inbounds %struct.MvField, %struct.MvField* %716, i64 %718
  %720 = getelementptr inbounds %struct.MvField, %struct.MvField* %719, i32 0, i32 2
  %721 = load i8**, i8*** %720, align 8
  %722 = getelementptr inbounds i8*, i8** %721, i64 0
  %723 = call i32 @AV_ZERO32(i8** %722)
  %724 = load %struct.MvField*, %struct.MvField** %20, align 8
  %725 = load i32, i32* %42, align 4
  %726 = sext i32 %725 to i64
  %727 = getelementptr inbounds %struct.MvField, %struct.MvField* %724, i64 %726
  %728 = getelementptr inbounds %struct.MvField, %struct.MvField* %727, i32 0, i32 2
  %729 = load i8**, i8*** %728, align 8
  %730 = getelementptr inbounds i8*, i8** %729, i64 1
  %731 = call i32 @AV_ZERO32(i8** %730)
  %732 = load i32, i32* %41, align 4
  %733 = load i32, i32* %40, align 4
  %734 = icmp slt i32 %732, %733
  br i1 %734, label %735, label %737

735:                                              ; preds = %700
  %736 = load i32, i32* %41, align 4
  br label %738

737:                                              ; preds = %700
  br label %738

738:                                              ; preds = %737, %735
  %739 = phi i32 [ %736, %735 ], [ 0, %737 ]
  %740 = sext i32 %739 to i64
  %741 = load %struct.MvField*, %struct.MvField** %20, align 8
  %742 = load i32, i32* %42, align 4
  %743 = sext i32 %742 to i64
  %744 = getelementptr inbounds %struct.MvField, %struct.MvField* %741, i64 %743
  %745 = getelementptr inbounds %struct.MvField, %struct.MvField* %744, i32 0, i32 1
  %746 = load i64*, i64** %745, align 8
  %747 = getelementptr inbounds i64, i64* %746, i64 0
  store i64 %740, i64* %747, align 8
  %748 = load i32, i32* %41, align 4
  %749 = load i32, i32* %40, align 4
  %750 = icmp slt i32 %748, %749
  br i1 %750, label %751, label %753

751:                                              ; preds = %738
  %752 = load i32, i32* %41, align 4
  br label %754

753:                                              ; preds = %738
  br label %754

754:                                              ; preds = %753, %751
  %755 = phi i32 [ %752, %751 ], [ 0, %753 ]
  %756 = sext i32 %755 to i64
  %757 = load %struct.MvField*, %struct.MvField** %20, align 8
  %758 = load i32, i32* %42, align 4
  %759 = sext i32 %758 to i64
  %760 = getelementptr inbounds %struct.MvField, %struct.MvField* %757, i64 %759
  %761 = getelementptr inbounds %struct.MvField, %struct.MvField* %760, i32 0, i32 1
  %762 = load i64*, i64** %761, align 8
  %763 = getelementptr inbounds i64, i64* %762, i64 1
  store i64 %756, i64* %763, align 8
  %764 = load i32, i32* %19, align 4
  %765 = load i32, i32* %42, align 4
  %766 = icmp eq i32 %764, %765
  br i1 %766, label %767, label %768

767:                                              ; preds = %754
  br label %773

768:                                              ; preds = %754
  %769 = load i32, i32* %42, align 4
  %770 = add nsw i32 %769, 1
  store i32 %770, i32* %42, align 4
  %771 = load i32, i32* %41, align 4
  %772 = add nsw i32 %771, 1
  store i32 %772, i32* %41, align 4
  br label %693

773:                                              ; preds = %208, %274, %330, %385, %438, %519, %683, %767, %693
  ret void
}

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i64 @is_diff_mer(%struct.TYPE_21__*, i32, i32, i32, i32) #1

declare dso_local i32 @AVAILABLE(i32, i32) #1

declare dso_local void @TAB_MVF_PU(%struct.MvField* sret, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @COMPARE_MV_REFIDX(i32, i32) #1

declare dso_local i64 @PRED_BLOCK_AVAILABLE(i32) #1

declare dso_local i32 @temporal_luma_motion_vector(%struct.TYPE_21__*, i32, i32, i32, i32, i32, i8**, i32) #1

declare dso_local i32 @AV_ZERO16(i64*) #1

declare dso_local i64 @AV_RN32A(i8**) #1

declare dso_local i32 @AV_COPY32(i8**, i8**) #1

declare dso_local i32 @AV_ZERO32(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
