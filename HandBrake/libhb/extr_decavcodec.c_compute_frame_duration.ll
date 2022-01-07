; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_decavcodec.c_compute_frame_duration.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_decavcodec.c_compute_frame_duration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { double, double, %struct.TYPE_13__*, %struct.TYPE_10__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_17__ = type { %struct.TYPE_11__*, %struct.TYPE_15__** }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_16__, %struct.TYPE_16__, i64, i64 }
%struct.TYPE_16__ = type { i64, i64 }

@AV_CODEC_ID_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*)* @compute_frame_duration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_frame_duration(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  store double 0.000000e+00, double* %3, align 8
  store i32 64, i32* %4, align 4
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %4, align 4
  %21 = mul nsw i32 %20, %19
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %14, %1
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %225

29:                                               ; preds = %22
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 3
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %35, %struct.TYPE_17__** %5, align 8
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %37, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 3
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %38, i64 %43
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %44, align 8
  store %struct.TYPE_15__* %45, %struct.TYPE_15__** %6, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %77

50:                                               ; preds = %29
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %77

55:                                               ; preds = %50
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = sitofp i64 %58 to double
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = sitofp i64 %63 to double
  %65 = fmul double %59, %64
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = sitofp i64 %68 to double
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = sitofp i64 %73 to double
  %75 = fmul double %69, %74
  %76 = fdiv double %65, %75
  store double %76, double* %3, align 8
  br label %156

77:                                               ; preds = %50, %29
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @AV_CODEC_ID_NONE, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %155

85:                                               ; preds = %77
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %7, align 8
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = mul nsw i64 %89, 64
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp sgt i64 %90, %94
  br i1 %95, label %96, label %119

96:                                               ; preds = %85
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = mul nsw i64 %104, 8
  %106 = icmp sgt i64 %100, %105
  br i1 %106, label %107, label %119

107:                                              ; preds = %96
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 1
  store %struct.TYPE_16__* %109, %struct.TYPE_16__** %7, align 8
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = sitofp i64 %112 to double
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = sitofp i64 %116 to double
  %118 = fdiv double %113, %117
  store double %118, double* %3, align 8
  br label %154

119:                                              ; preds = %96, %85
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = mul nsw i64 %123, 64
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp sgt i64 %124, %128
  br i1 %129, label %130, label %153

130:                                              ; preds = %119
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = mul nsw i64 %138, 8
  %140 = icmp sgt i64 %134, %139
  br i1 %140, label %141, label %153

141:                                              ; preds = %130
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 0
  store %struct.TYPE_16__* %143, %struct.TYPE_16__** %7, align 8
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = sitofp i64 %146 to double
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = sitofp i64 %150 to double
  %152 = fdiv double %147, %151
  store double %152, double* %3, align 8
  br label %153

153:                                              ; preds = %141, %130, %119
  br label %154

154:                                              ; preds = %153, %107
  br label %155

155:                                              ; preds = %154, %77
  br label %156

156:                                              ; preds = %155, %55
  %157 = load double, double* %3, align 8
  %158 = fcmp une double %157, 0.000000e+00
  br i1 %158, label %224, label %159

159:                                              ; preds = %156
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 2
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %4, align 4
  %167 = mul nsw i32 %165, %166
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 2
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = icmp sgt i32 %167, %173
  br i1 %174, label %175, label %224

175:                                              ; preds = %159
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 2
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = sext i32 %181 to i64
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 2
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = sext i32 %188 to i64
  %190 = mul nsw i64 %189, 8
  %191 = icmp sgt i64 %182, %190
  br i1 %191, label %192, label %224

192:                                              ; preds = %175
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 2
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = sitofp i32 %198 to double
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 2
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = sitofp i32 %205 to double
  %207 = fdiv double %199, %206
  store double %207, double* %3, align 8
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 2
  %210 = load %struct.TYPE_13__*, %struct.TYPE_13__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = icmp sgt i32 %212, 1
  br i1 %213, label %214, label %223

214:                                              ; preds = %192
  %215 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 2
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = sitofp i32 %219 to double
  %221 = load double, double* %3, align 8
  %222 = fmul double %221, %220
  store double %222, double* %3, align 8
  br label %223

223:                                              ; preds = %214, %192
  br label %224

224:                                              ; preds = %223, %175, %159, %156
  br label %291

225:                                              ; preds = %22
  %226 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %227 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %226, i32 0, i32 2
  %228 = load %struct.TYPE_13__*, %struct.TYPE_13__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* %4, align 4
  %233 = mul nsw i32 %231, %232
  %234 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %235 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %234, i32 0, i32 2
  %236 = load %struct.TYPE_13__*, %struct.TYPE_13__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = icmp sgt i32 %233, %239
  br i1 %240, label %241, label %290

241:                                              ; preds = %225
  %242 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 2
  %244 = load %struct.TYPE_13__*, %struct.TYPE_13__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = sext i32 %247 to i64
  %249 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %250 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i32 0, i32 2
  %251 = load %struct.TYPE_13__*, %struct.TYPE_13__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = sext i32 %254 to i64
  %256 = mul nsw i64 %255, 8
  %257 = icmp sgt i64 %248, %256
  br i1 %257, label %258, label %290

258:                                              ; preds = %241
  %259 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %260 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %259, i32 0, i32 2
  %261 = load %struct.TYPE_13__*, %struct.TYPE_13__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = sitofp i32 %264 to double
  %266 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %267 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %266, i32 0, i32 2
  %268 = load %struct.TYPE_13__*, %struct.TYPE_13__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = sitofp i32 %271 to double
  %273 = fdiv double %265, %272
  store double %273, double* %3, align 8
  %274 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %275 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %274, i32 0, i32 2
  %276 = load %struct.TYPE_13__*, %struct.TYPE_13__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = icmp sgt i32 %278, 1
  br i1 %279, label %280, label %289

280:                                              ; preds = %258
  %281 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %282 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %281, i32 0, i32 2
  %283 = load %struct.TYPE_13__*, %struct.TYPE_13__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = sitofp i32 %285 to double
  %287 = load double, double* %3, align 8
  %288 = fmul double %287, %286
  store double %288, double* %3, align 8
  br label %289

289:                                              ; preds = %280, %258
  br label %290

290:                                              ; preds = %289, %241, %225
  br label %291

291:                                              ; preds = %290, %224
  %292 = load double, double* %3, align 8
  %293 = fcmp oeq double %292, 0.000000e+00
  br i1 %293, label %294, label %295

294:                                              ; preds = %291
  store double 0x3FA55ACB6F46508E, double* %3, align 8
  br label %295

295:                                              ; preds = %294, %291
  %296 = load double, double* %3, align 8
  %297 = fmul double %296, 9.000000e+04
  %298 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %299 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %298, i32 0, i32 0
  store double %297, double* %299, align 8
  %300 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %301 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %300, i32 0, i32 0
  %302 = load double, double* %301, align 8
  %303 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %304 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %303, i32 0, i32 1
  store double %302, double* %304, align 8
  %305 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %306 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %305, i32 0, i32 2
  %307 = load %struct.TYPE_13__*, %struct.TYPE_13__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  %310 = icmp sgt i32 %309, 1
  br i1 %310, label %311, label %322

311:                                              ; preds = %295
  %312 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %313 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %312, i32 0, i32 2
  %314 = load %struct.TYPE_13__*, %struct.TYPE_13__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = sitofp i32 %316 to double
  %318 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %319 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %318, i32 0, i32 1
  %320 = load double, double* %319, align 8
  %321 = fdiv double %320, %317
  store double %321, double* %319, align 8
  br label %322

322:                                              ; preds = %311, %295
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
