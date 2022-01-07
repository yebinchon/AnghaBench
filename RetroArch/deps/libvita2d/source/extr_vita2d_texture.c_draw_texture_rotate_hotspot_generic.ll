; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libvita2d/source/extr_vita2d_texture.c_draw_texture_rotate_hotspot_generic.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libvita2d/source/extr_vita2d_texture.c_draw_texture_rotate_hotspot_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { float, float, float, float, float }

@_vita2d_context = common dso_local global i32 0, align 4
@SCE_GXM_PRIMITIVE_TRIANGLE_STRIP = common dso_local global i32 0, align 4
@SCE_GXM_INDEX_FORMAT_U16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, float, float, float, float, float)* @draw_texture_rotate_hotspot_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_texture_rotate_hotspot_generic(%struct.TYPE_8__* %0, float %1, float %2, float %3, float %4, float %5) #0 {
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store float %1, float* %8, align 4
  store float %2, float* %9, align 4
  store float %3, float* %10, align 4
  store float %4, float* %11, align 4
  store float %5, float* %12, align 4
  %21 = call i64 @vita2d_pool_memalign(i32 80, i32 20)
  %22 = inttoptr i64 %21 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %13, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %24 = call float @vita2d_texture_get_width(%struct.TYPE_8__* %23)
  store float %24, float* %14, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %26 = call float @vita2d_texture_get_height(%struct.TYPE_8__* %25)
  store float %26, float* %15, align 4
  %27 = load float, float* %11, align 4
  %28 = fneg float %27
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  store float %28, float* %31, align 4
  %32 = load float, float* %12, align 4
  %33 = fneg float %32
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  store float %33, float* %36, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 2
  store float 5.000000e-01, float* %39, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i64 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 3
  store float 0.000000e+00, float* %42, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 4
  store float 0.000000e+00, float* %45, align 4
  %46 = load float, float* %14, align 4
  %47 = load float, float* %11, align 4
  %48 = fsub float %46, %47
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i64 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  store float %48, float* %51, align 4
  %52 = load float, float* %12, align 4
  %53 = fneg float %52
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i64 1
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  store float %53, float* %56, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i64 1
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 2
  store float 5.000000e-01, float* %59, align 4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i64 1
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 3
  store float 1.000000e+00, float* %62, align 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i64 1
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 4
  store float 0.000000e+00, float* %65, align 4
  %66 = load float, float* %11, align 4
  %67 = fneg float %66
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i64 2
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  store float %67, float* %70, align 4
  %71 = load float, float* %15, align 4
  %72 = load float, float* %12, align 4
  %73 = fsub float %71, %72
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i64 2
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  store float %73, float* %76, align 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i64 2
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 2
  store float 5.000000e-01, float* %79, align 4
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i64 2
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 3
  store float 0.000000e+00, float* %82, align 4
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i64 2
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 4
  store float 1.000000e+00, float* %85, align 4
  %86 = load float, float* %14, align 4
  %87 = load float, float* %11, align 4
  %88 = fsub float %86, %87
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i64 3
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  store float %88, float* %91, align 4
  %92 = load float, float* %15, align 4
  %93 = load float, float* %12, align 4
  %94 = fsub float %92, %93
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i64 3
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  store float %94, float* %97, align 4
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i64 3
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 2
  store float 5.000000e-01, float* %100, align 4
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i64 3
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 3
  store float 1.000000e+00, float* %103, align 4
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i64 3
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 4
  store float 1.000000e+00, float* %106, align 4
  %107 = load float, float* %10, align 4
  %108 = call float @cosf(float %107) #3
  store float %108, float* %16, align 4
  %109 = load float, float* %10, align 4
  %110 = call float @sinf(float %109) #3
  store float %110, float* %17, align 4
  store i32 0, i32* %18, align 4
  br label %111

111:                                              ; preds = %155, %6
  %112 = load i32, i32* %18, align 4
  %113 = icmp slt i32 %112, 4
  br i1 %113, label %114, label %158

114:                                              ; preds = %111
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %116 = load i32, i32* %18, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load float, float* %119, align 4
  store float %120, float* %19, align 4
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %122 = load i32, i32* %18, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 1
  %126 = load float, float* %125, align 4
  store float %126, float* %20, align 4
  %127 = load float, float* %19, align 4
  %128 = load float, float* %16, align 4
  %129 = fmul float %127, %128
  %130 = load float, float* %20, align 4
  %131 = load float, float* %17, align 4
  %132 = fmul float %130, %131
  %133 = fsub float %129, %132
  %134 = load float, float* %8, align 4
  %135 = fadd float %133, %134
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %137 = load i32, i32* %18, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  store float %135, float* %140, align 4
  %141 = load float, float* %19, align 4
  %142 = load float, float* %17, align 4
  %143 = fmul float %141, %142
  %144 = load float, float* %20, align 4
  %145 = load float, float* %16, align 4
  %146 = fmul float %144, %145
  %147 = fadd float %143, %146
  %148 = load float, float* %9, align 4
  %149 = fadd float %147, %148
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %151 = load i32, i32* %18, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 1
  store float %149, float* %154, align 4
  br label %155

155:                                              ; preds = %114
  %156 = load i32, i32* %18, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %18, align 4
  br label %111

158:                                              ; preds = %111
  %159 = load i32, i32* @_vita2d_context, align 4
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = call i32 @sceGxmSetFragmentTexture(i32 %159, i32 0, i32* %161)
  %163 = load i32, i32* @_vita2d_context, align 4
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %165 = call i32 @sceGxmSetVertexStream(i32 %163, i32 0, %struct.TYPE_7__* %164)
  %166 = load i32, i32* @_vita2d_context, align 4
  %167 = load i32, i32* @SCE_GXM_PRIMITIVE_TRIANGLE_STRIP, align 4
  %168 = load i32, i32* @SCE_GXM_INDEX_FORMAT_U16, align 4
  %169 = call i32 (...) @vita2d_get_linear_indices()
  %170 = call i32 @sceGxmDraw(i32 %166, i32 %167, i32 %168, i32 %169, i32 4)
  ret void
}

declare dso_local i64 @vita2d_pool_memalign(i32, i32) #1

declare dso_local float @vita2d_texture_get_width(%struct.TYPE_8__*) #1

declare dso_local float @vita2d_texture_get_height(%struct.TYPE_8__*) #1

; Function Attrs: nounwind
declare dso_local float @cosf(float) #2

; Function Attrs: nounwind
declare dso_local float @sinf(float) #2

declare dso_local i32 @sceGxmSetFragmentTexture(i32, i32, i32*) #1

declare dso_local i32 @sceGxmSetVertexStream(i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @sceGxmDraw(i32, i32, i32, i32, i32) #1

declare dso_local i32 @vita2d_get_linear_indices(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
