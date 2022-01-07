; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/extr_video_layout.c_video_layout_view_fit_bounds.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/extr_video_layout.c_video_layout_view_fit_bounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i32, %struct.TYPE_28__*, %struct.TYPE_23__, %struct.TYPE_17__*, %struct.TYPE_21__ }
%struct.TYPE_28__ = type { float, float, i32, i32 }
%struct.TYPE_23__ = type { float, float, float, float }
%struct.TYPE_17__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_25__, %struct.TYPE_19__*, %struct.TYPE_22__ }
%struct.TYPE_25__ = type { float, float, i32, i32 }
%struct.TYPE_19__ = type { i64, %struct.TYPE_28__, %struct.TYPE_27__, %struct.TYPE_24__ }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_24__ = type { i32, i32, i32, i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }

@video_layout_state = common dso_local global %struct.TYPE_20__* null, align 8
@VIDEO_LAYOUT_C_SCREEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @video_layout_view_fit_bounds(i64 %0) #0 {
  %2 = alloca %struct.TYPE_16__, align 4
  %3 = alloca %struct.TYPE_29__*, align 8
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = bitcast %struct.TYPE_16__* %2 to i64*
  store i64 %0, i64* %13, align 4
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** @video_layout_state, align 8
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  store %struct.TYPE_29__* %16, %struct.TYPE_29__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sdiv i32 %18, %22
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = sdiv i32 %25, %29
  %31 = call float @MIN(i32 %23, i32 %30)
  store float %31, float* %4, align 4
  %32 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sitofp i32 %35 to float
  %37 = load float, float* %4, align 4
  %38 = fmul float %36, %37
  store float %38, float* %5, align 4
  %39 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sitofp i32 %42 to float
  %44 = load float, float* %4, align 4
  %45 = fmul float %43, %44
  store float %45, float* %6, align 4
  %46 = load float, float* %5, align 4
  %47 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %48, i32 0, i32 0
  store float %46, float* %49, align 8
  %50 = load float, float* %6, align 4
  %51 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 1
  store float %50, float* %53, align 4
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sitofp i32 %55 to float
  %57 = load float, float* %5, align 4
  %58 = fsub float %56, %57
  %59 = fdiv float %58, 2.000000e+00
  %60 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 2
  store float %59, float* %62, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = sitofp i32 %64 to float
  %66 = load float, float* %6, align 4
  %67 = fsub float %65, %66
  %68 = fdiv float %67, 2.000000e+00
  %69 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 3
  store float %68, float* %71, align 4
  store i32 0, i32* %7, align 4
  br label %72

72:                                               ; preds = %263, %1
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %266

78:                                               ; preds = %72
  %79 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %79, i32 0, i32 3
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i64 %83
  store %struct.TYPE_17__* %84, %struct.TYPE_17__** %10, align 8
  store i32 0, i32* %8, align 4
  br label %85

85:                                               ; preds = %259, %78
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %262

91:                                               ; preds = %85
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i64 %96
  store %struct.TYPE_18__* %97, %struct.TYPE_18__** %11, align 8
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sitofp i32 %101 to float
  %103 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %104, i32 0, i32 0
  %106 = load float, float* %105, align 8
  %107 = fmul float %102, %106
  %108 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 2
  %111 = load float, float* %110, align 8
  %112 = fadd float %107, %111
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %114, i32 0, i32 0
  store float %112, float* %115, align 4
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = sitofp i32 %119 to float
  %121 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %122, i32 0, i32 1
  %124 = load float, float* %123, align 4
  %125 = fmul float %120, %124
  %126 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %127, i32 0, i32 3
  %129 = load float, float* %128, align 4
  %130 = fadd float %125, %129
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %132, i32 0, i32 1
  store float %130, float* %133, align 4
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = sitofp i32 %137 to float
  %139 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i32 0, i32 0
  %142 = load float, float* %141, align 8
  %143 = fmul float %138, %142
  %144 = fptosi float %143 to i32
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %146, i32 0, i32 2
  store i32 %144, i32* %147, align 4
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = sitofp i32 %151 to float
  %153 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %154, i32 0, i32 1
  %156 = load float, float* %155, align 4
  %157 = fmul float %152, %156
  %158 = fptosi float %157 to i32
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %160, i32 0, i32 3
  store i32 %158, i32* %161, align 4
  store i32 0, i32* %9, align 4
  br label %162

162:                                              ; preds = %255, %91
  %163 = load i32, i32* %9, align 4
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp slt i32 %163, %166
  br i1 %167, label %168, label %258

168:                                              ; preds = %162
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 2
  %171 = load %struct.TYPE_19__*, %struct.TYPE_19__** %170, align 8
  %172 = load i32, i32* %9, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %171, i64 %173
  store %struct.TYPE_19__* %174, %struct.TYPE_19__** %12, align 8
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %176 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %175, i32 0, i32 3
  %177 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = mul nsw i32 %178, %182
  %184 = sitofp i32 %183 to float
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %186, i32 0, i32 0
  %188 = load float, float* %187, align 4
  %189 = fadd float %184, %188
  %190 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %191 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %191, i32 0, i32 0
  store float %189, float* %192, align 8
  %193 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %194 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %193, i32 0, i32 3
  %195 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 4
  %201 = mul nsw i32 %196, %200
  %202 = sitofp i32 %201 to float
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %204, i32 0, i32 1
  %206 = load float, float* %205, align 4
  %207 = fadd float %202, %206
  %208 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %209 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %209, i32 0, i32 1
  store float %207, float* %210, align 4
  %211 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %212 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %211, i32 0, i32 3
  %213 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 4
  %219 = mul nsw i32 %214, %218
  %220 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %221 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %221, i32 0, i32 2
  store i32 %219, i32* %222, align 8
  %223 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %224 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %223, i32 0, i32 3
  %225 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %228 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 4
  %231 = mul nsw i32 %226, %230
  %232 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %233 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %233, i32 0, i32 3
  store i32 %231, i32* %234, align 4
  %235 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %236 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* @VIDEO_LAYOUT_C_SCREEN, align 8
  %239 = icmp eq i64 %237, %238
  br i1 %239, label %240, label %254

240:                                              ; preds = %168
  %241 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %242 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %241, i32 0, i32 1
  %243 = load %struct.TYPE_28__*, %struct.TYPE_28__** %242, align 8
  %244 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %245 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %244, i32 0, i32 2
  %246 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %243, i64 %248
  %250 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %251 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %250, i32 0, i32 1
  %252 = bitcast %struct.TYPE_28__* %249 to i8*
  %253 = bitcast %struct.TYPE_28__* %251 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %252, i8* align 8 %253, i64 16, i1 false)
  br label %254

254:                                              ; preds = %240, %168
  br label %255

255:                                              ; preds = %254
  %256 = load i32, i32* %9, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %9, align 4
  br label %162

258:                                              ; preds = %162
  br label %259

259:                                              ; preds = %258
  %260 = load i32, i32* %8, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %8, align 4
  br label %85

262:                                              ; preds = %85
  br label %263

263:                                              ; preds = %262
  %264 = load i32, i32* %7, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %7, align 4
  br label %72

266:                                              ; preds = %72
  ret void
}

declare dso_local float @MIN(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
