; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libvita2d/source/extr_vita2d_texture.c_draw_texture_part_scale_rotate_generic.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libvita2d/source/extr_vita2d_texture.c_draw_texture_part_scale_rotate_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { float, float, float, float, float }

@_vita2d_context = common dso_local global i32 0, align 4
@SCE_GXM_PRIMITIVE_TRIANGLE_STRIP = common dso_local global i32 0, align 4
@SCE_GXM_INDEX_FORMAT_U16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, float, float, float, float, float, float, float, float, float)* @draw_texture_part_scale_rotate_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_texture_part_scale_rotate_generic(%struct.TYPE_8__* %0, float %1, float %2, float %3, float %4, float %5, float %6, float %7, float %8, float %9) #0 {
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca %struct.TYPE_7__*, align 8
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca float, align 4
  %29 = alloca float, align 4
  %30 = alloca float, align 4
  %31 = alloca float, align 4
  %32 = alloca i32, align 4
  %33 = alloca float, align 4
  %34 = alloca float, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %11, align 8
  store float %1, float* %12, align 4
  store float %2, float* %13, align 4
  store float %3, float* %14, align 4
  store float %4, float* %15, align 4
  store float %5, float* %16, align 4
  store float %6, float* %17, align 4
  store float %7, float* %18, align 4
  store float %8, float* %19, align 4
  store float %9, float* %20, align 4
  %35 = call i64 @vita2d_pool_memalign(i32 80, i32 20)
  %36 = inttoptr i64 %35 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %36, %struct.TYPE_7__** %21, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %38 = call float @vita2d_texture_get_width(%struct.TYPE_8__* %37)
  store float %38, float* %22, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %40 = call float @vita2d_texture_get_height(%struct.TYPE_8__* %39)
  store float %40, float* %23, align 4
  %41 = load float, float* %16, align 4
  %42 = load float, float* %18, align 4
  %43 = fmul float %41, %42
  %44 = fdiv float %43, 2.000000e+00
  store float %44, float* %24, align 4
  %45 = load float, float* %17, align 4
  %46 = load float, float* %19, align 4
  %47 = fmul float %45, %46
  %48 = fdiv float %47, 2.000000e+00
  store float %48, float* %25, align 4
  %49 = load float, float* %14, align 4
  %50 = load float, float* %22, align 4
  %51 = fdiv float %49, %50
  store float %51, float* %26, align 4
  %52 = load float, float* %15, align 4
  %53 = load float, float* %23, align 4
  %54 = fdiv float %52, %53
  store float %54, float* %27, align 4
  %55 = load float, float* %14, align 4
  %56 = load float, float* %16, align 4
  %57 = fadd float %55, %56
  %58 = load float, float* %22, align 4
  %59 = fdiv float %57, %58
  store float %59, float* %28, align 4
  %60 = load float, float* %15, align 4
  %61 = load float, float* %17, align 4
  %62 = fadd float %60, %61
  %63 = load float, float* %23, align 4
  %64 = fdiv float %62, %63
  store float %64, float* %29, align 4
  %65 = load float, float* %24, align 4
  %66 = fneg float %65
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i64 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  store float %66, float* %69, align 4
  %70 = load float, float* %25, align 4
  %71 = fneg float %70
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i64 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  store float %71, float* %74, align 4
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i64 0
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 2
  store float 5.000000e-01, float* %77, align 4
  %78 = load float, float* %26, align 4
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i64 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 3
  store float %78, float* %81, align 4
  %82 = load float, float* %27, align 4
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i64 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 4
  store float %82, float* %85, align 4
  %86 = load float, float* %24, align 4
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i64 1
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  store float %86, float* %89, align 4
  %90 = load float, float* %25, align 4
  %91 = fneg float %90
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i64 1
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  store float %91, float* %94, align 4
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i64 1
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 2
  store float 5.000000e-01, float* %97, align 4
  %98 = load float, float* %28, align 4
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i64 1
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 3
  store float %98, float* %101, align 4
  %102 = load float, float* %27, align 4
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i64 1
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 4
  store float %102, float* %105, align 4
  %106 = load float, float* %24, align 4
  %107 = fneg float %106
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i64 2
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  store float %107, float* %110, align 4
  %111 = load float, float* %25, align 4
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i64 2
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  store float %111, float* %114, align 4
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i64 2
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 2
  store float 5.000000e-01, float* %117, align 4
  %118 = load float, float* %26, align 4
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i64 2
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 3
  store float %118, float* %121, align 4
  %122 = load float, float* %29, align 4
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i64 2
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 4
  store float %122, float* %125, align 4
  %126 = load float, float* %24, align 4
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i64 3
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  store float %126, float* %129, align 4
  %130 = load float, float* %25, align 4
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i64 3
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 1
  store float %130, float* %133, align 4
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i64 3
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 2
  store float 5.000000e-01, float* %136, align 4
  %137 = load float, float* %28, align 4
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i64 3
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 3
  store float %137, float* %140, align 4
  %141 = load float, float* %29, align 4
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i64 3
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 4
  store float %141, float* %144, align 4
  %145 = load float, float* %20, align 4
  %146 = call float @cosf(float %145) #3
  store float %146, float* %30, align 4
  %147 = load float, float* %20, align 4
  %148 = call float @sinf(float %147) #3
  store float %148, float* %31, align 4
  store i32 0, i32* %32, align 4
  br label %149

149:                                              ; preds = %193, %10
  %150 = load i32, i32* %32, align 4
  %151 = icmp slt i32 %150, 4
  br i1 %151, label %152, label %196

152:                                              ; preds = %149
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %154 = load i32, i32* %32, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  %158 = load float, float* %157, align 4
  store float %158, float* %33, align 4
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %160 = load i32, i32* %32, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 1
  %164 = load float, float* %163, align 4
  store float %164, float* %34, align 4
  %165 = load float, float* %33, align 4
  %166 = load float, float* %30, align 4
  %167 = fmul float %165, %166
  %168 = load float, float* %34, align 4
  %169 = load float, float* %31, align 4
  %170 = fmul float %168, %169
  %171 = fsub float %167, %170
  %172 = load float, float* %12, align 4
  %173 = fadd float %171, %172
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %175 = load i32, i32* %32, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 0
  store float %173, float* %178, align 4
  %179 = load float, float* %33, align 4
  %180 = load float, float* %31, align 4
  %181 = fmul float %179, %180
  %182 = load float, float* %34, align 4
  %183 = load float, float* %30, align 4
  %184 = fmul float %182, %183
  %185 = fadd float %181, %184
  %186 = load float, float* %13, align 4
  %187 = fadd float %185, %186
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %189 = load i32, i32* %32, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 1
  store float %187, float* %192, align 4
  br label %193

193:                                              ; preds = %152
  %194 = load i32, i32* %32, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %32, align 4
  br label %149

196:                                              ; preds = %149
  %197 = load i32, i32* @_vita2d_context, align 4
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 0
  %200 = call i32 @sceGxmSetFragmentTexture(i32 %197, i32 0, i32* %199)
  %201 = load i32, i32* @_vita2d_context, align 4
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %203 = call i32 @sceGxmSetVertexStream(i32 %201, i32 0, %struct.TYPE_7__* %202)
  %204 = load i32, i32* @_vita2d_context, align 4
  %205 = load i32, i32* @SCE_GXM_PRIMITIVE_TRIANGLE_STRIP, align 4
  %206 = load i32, i32* @SCE_GXM_INDEX_FORMAT_U16, align 4
  %207 = call i32 (...) @vita2d_get_linear_indices()
  %208 = call i32 @sceGxmDraw(i32 %204, i32 %205, i32 %206, i32 %207, i32 4)
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
