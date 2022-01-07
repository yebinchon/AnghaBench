; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_vulkan.c_vulkan_set_viewport.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_vulkan.c_vulkan_set_viewport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_ortho = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { float*, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_19__, i64 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { float, float, float, float, float, float }
%struct.TYPE_19__ = type { i32, i32, i32, i32 }

@__const.vulkan_set_viewport.ortho = private unnamed_addr constant %struct.video_ortho { i32 0, i32 1, i32 0, i32 1, i32 -1, i32 1 }, align 4
@VULKAN_DIRTY_DYNAMIC_BIT = common dso_local global i32 0, align 4
@ASPECT_RATIO_CUSTOM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32, i32)* @vulkan_set_viewport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vulkan_set_viewport(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_18__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca %struct.video_ortho, align 4
  %16 = alloca %struct.TYPE_17__*, align 8
  %17 = alloca %struct.TYPE_16__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %22 = load i32, i32* %7, align 4
  %23 = uitofp i32 %22 to float
  %24 = load i32, i32* %8, align 4
  %25 = uitofp i32 %24 to float
  %26 = fdiv float %23, %25
  store float %26, float* %14, align 4
  %27 = bitcast %struct.video_ortho* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 bitcast (%struct.video_ortho* @__const.vulkan_set_viewport.ortho to i8*), i64 24, i1 false)
  %28 = call %struct.TYPE_17__* (...) @config_get_ptr()
  store %struct.TYPE_17__* %28, %struct.TYPE_17__** %16, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = bitcast i8* %29 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %30, %struct.TYPE_16__** %17, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %18, align 4
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %19, align 4
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  store float* %14, float** %37, align 8
  %38 = load i32, i32* %7, align 4
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 1
  store i32 %38, i32* %39, align 8
  %40 = load i32, i32* %8, align 4
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 2
  store i32 %40, i32* %41, align 4
  %42 = call i32 @video_context_driver_translate_aspect(%struct.TYPE_18__* %11)
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %69

48:                                               ; preds = %5
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %69, label %51

51:                                               ; preds = %48
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 6
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call float (...) @video_driver_get_aspect_ratio()
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 7
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @video_viewport_get_scaled_integer(%struct.TYPE_19__* %53, i32 %54, i32 %55, float %56, i64 %59)
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 6
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %7, align 4
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 6
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %8, align 4
  br label %165

69:                                               ; preds = %48, %5
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 7
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %149

74:                                               ; preds = %69
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %149, label %77

77:                                               ; preds = %74
  %78 = call float (...) @video_driver_get_aspect_ratio()
  store float %78, float* %20, align 4
  %79 = load float, float* %14, align 4
  %80 = load float, float* %20, align 4
  %81 = fsub float %79, %80
  %82 = call float @llvm.fabs.f32(float %81)
  %83 = fcmp olt float %82, 0x3F1A36E2E0000000
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  br label %132

85:                                               ; preds = %77
  %86 = load float, float* %14, align 4
  %87 = load float, float* %20, align 4
  %88 = fcmp ogt float %86, %87
  br i1 %88, label %89, label %110

89:                                               ; preds = %85
  %90 = load float, float* %20, align 4
  %91 = load float, float* %14, align 4
  %92 = fdiv float %90, %91
  %93 = fsub float %92, 1.000000e+00
  %94 = fdiv float %93, 2.000000e+00
  %95 = fadd float %94, 5.000000e-01
  store float %95, float* %21, align 4
  %96 = load i32, i32* %7, align 4
  %97 = uitofp i32 %96 to float
  %98 = load float, float* %21, align 4
  %99 = fsub float 5.000000e-01, %98
  %100 = fmul float %97, %99
  %101 = call i64 @roundf(float %100)
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %7, align 4
  %104 = uitofp i32 %103 to float
  %105 = fmul float 2.000000e+00, %104
  %106 = load float, float* %21, align 4
  %107 = fmul float %105, %106
  %108 = call i64 @roundf(float %107)
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %7, align 4
  br label %131

110:                                              ; preds = %85
  %111 = load float, float* %14, align 4
  %112 = load float, float* %20, align 4
  %113 = fdiv float %111, %112
  %114 = fsub float %113, 1.000000e+00
  %115 = fdiv float %114, 2.000000e+00
  %116 = fadd float %115, 5.000000e-01
  store float %116, float* %21, align 4
  %117 = load i32, i32* %8, align 4
  %118 = uitofp i32 %117 to float
  %119 = load float, float* %21, align 4
  %120 = fsub float 5.000000e-01, %119
  %121 = fmul float %118, %120
  %122 = call i64 @roundf(float %121)
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %13, align 4
  %124 = load i32, i32* %8, align 4
  %125 = uitofp i32 %124 to float
  %126 = fmul float 2.000000e+00, %125
  %127 = load float, float* %21, align 4
  %128 = fmul float %126, %127
  %129 = call i64 @roundf(float %128)
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %8, align 4
  br label %131

131:                                              ; preds = %110, %89
  br label %132

132:                                              ; preds = %131, %84
  %133 = load i32, i32* %12, align 4
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 6
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 2
  store i32 %133, i32* %136, align 4
  %137 = load i32, i32* %13, align 4
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 6
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 3
  store i32 %137, i32* %140, align 4
  %141 = load i32, i32* %7, align 4
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 6
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 0
  store i32 %141, i32* %144, align 4
  %145 = load i32, i32* %8, align 4
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 6
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 1
  store i32 %145, i32* %148, align 4
  br label %164

149:                                              ; preds = %74, %69
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 6
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %151, i32 0, i32 2
  store i32 0, i32* %152, align 4
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 6
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 3
  store i32 0, i32* %155, align 4
  %156 = load i32, i32* %7, align 4
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 6
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i32 0, i32 0
  store i32 %156, i32* %159, align 4
  %160 = load i32, i32* %8, align 4
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 6
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 1
  store i32 %160, i32* %163, align 4
  br label %164

164:                                              ; preds = %149, %132
  br label %165

165:                                              ; preds = %164, %51
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %167 = load i32, i32* %10, align 4
  %168 = call i32 @vulkan_set_projection(%struct.TYPE_16__* %166, %struct.video_ortho* %15, i32 %167)
  %169 = load i32, i32* %9, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %178, label %171

171:                                              ; preds = %165
  %172 = load i32, i32* %7, align 4
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 2
  store i32 %172, i32* %174, align 8
  %175 = load i32, i32* %8, align 4
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 3
  store i32 %175, i32* %177, align 4
  br label %178

178:                                              ; preds = %171, %165
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 6
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = sitofp i32 %182 to float
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 5
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 0
  store float %183, float* %186, align 4
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 6
  %189 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  %191 = sitofp i32 %190 to float
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 5
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 1
  store float %191, float* %194, align 4
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 6
  %197 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = uitofp i32 %198 to float
  %200 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %200, i32 0, i32 5
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 2
  store float %199, float* %202, align 4
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 6
  %205 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = uitofp i32 %206 to float
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 5
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 3
  store float %207, float* %210, align 4
  %211 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %212 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %211, i32 0, i32 5
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 4
  store float 0.000000e+00, float* %213, align 4
  %214 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %214, i32 0, i32 5
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 5
  store float 1.000000e+00, float* %216, align 4
  %217 = load i32, i32* @VULKAN_DIRTY_DYNAMIC_BIT, align 4
  %218 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %218, i32 0, i32 4
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = or i32 %221, %217
  store i32 %222, i32* %220, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.TYPE_17__* @config_get_ptr(...) #2

declare dso_local i32 @video_context_driver_translate_aspect(%struct.TYPE_18__*) #2

declare dso_local i32 @video_viewport_get_scaled_integer(%struct.TYPE_19__*, i32, i32, float, i64) #2

declare dso_local float @video_driver_get_aspect_ratio(...) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #3

declare dso_local i64 @roundf(float) #2

declare dso_local i32 @vulkan_set_projection(%struct.TYPE_16__*, %struct.video_ortho*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
