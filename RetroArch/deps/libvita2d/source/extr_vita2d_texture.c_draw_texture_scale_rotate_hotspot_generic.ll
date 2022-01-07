; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libvita2d/source/extr_vita2d_texture.c_draw_texture_scale_rotate_hotspot_generic.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libvita2d/source/extr_vita2d_texture.c_draw_texture_scale_rotate_hotspot_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { float, float, float, float, float }

@_vita2d_context = common dso_local global i32 0, align 4
@SCE_GXM_PRIMITIVE_TRIANGLE_STRIP = common dso_local global i32 0, align 4
@SCE_GXM_INDEX_FORMAT_U16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, float, float, float, float, float, float, float)* @draw_texture_scale_rotate_hotspot_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_texture_scale_rotate_hotspot_generic(%struct.TYPE_8__* %0, float %1, float %2, float %3, float %4, float %5, float %6, float %7) #0 {
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca %struct.TYPE_7__*, align 8
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca i32, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %9, align 8
  store float %1, float* %10, align 4
  store float %2, float* %11, align 4
  store float %3, float* %12, align 4
  store float %4, float* %13, align 4
  store float %5, float* %14, align 4
  store float %6, float* %15, align 4
  store float %7, float* %16, align 4
  %27 = call i64 @vita2d_pool_memalign(i32 80, i32 20)
  %28 = inttoptr i64 %27 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %17, align 8
  %29 = load float, float* %12, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %31 = call float @vita2d_texture_get_width(%struct.TYPE_8__* %30)
  %32 = fmul float %29, %31
  store float %32, float* %18, align 4
  %33 = load float, float* %13, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %35 = call float @vita2d_texture_get_height(%struct.TYPE_8__* %34)
  %36 = fmul float %33, %35
  store float %36, float* %19, align 4
  %37 = load float, float* %12, align 4
  %38 = load float, float* %15, align 4
  %39 = fmul float %37, %38
  store float %39, float* %20, align 4
  %40 = load float, float* %13, align 4
  %41 = load float, float* %16, align 4
  %42 = fmul float %40, %41
  store float %42, float* %21, align 4
  %43 = load float, float* %20, align 4
  %44 = fneg float %43
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  store float %44, float* %47, align 4
  %48 = load float, float* %21, align 4
  %49 = fneg float %48
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  store float %49, float* %52, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 2
  store float 5.000000e-01, float* %55, align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i64 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 3
  store float 0.000000e+00, float* %58, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 4
  store float 0.000000e+00, float* %61, align 4
  %62 = load float, float* %20, align 4
  %63 = fneg float %62
  %64 = load float, float* %18, align 4
  %65 = fadd float %63, %64
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i64 1
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  store float %65, float* %68, align 4
  %69 = load float, float* %21, align 4
  %70 = fneg float %69
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i64 1
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  store float %70, float* %73, align 4
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i64 1
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 2
  store float 5.000000e-01, float* %76, align 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i64 1
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 3
  store float 1.000000e+00, float* %79, align 4
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i64 1
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 4
  store float 0.000000e+00, float* %82, align 4
  %83 = load float, float* %20, align 4
  %84 = fneg float %83
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i64 2
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  store float %84, float* %87, align 4
  %88 = load float, float* %21, align 4
  %89 = fneg float %88
  %90 = load float, float* %19, align 4
  %91 = fadd float %89, %90
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i64 2
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  store float %91, float* %94, align 4
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i64 2
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 2
  store float 5.000000e-01, float* %97, align 4
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i64 2
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 3
  store float 0.000000e+00, float* %100, align 4
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i64 2
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 4
  store float 1.000000e+00, float* %103, align 4
  %104 = load float, float* %20, align 4
  %105 = fneg float %104
  %106 = load float, float* %18, align 4
  %107 = fadd float %105, %106
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i64 3
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  store float %107, float* %110, align 4
  %111 = load float, float* %21, align 4
  %112 = fneg float %111
  %113 = load float, float* %19, align 4
  %114 = fadd float %112, %113
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i64 3
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  store float %114, float* %117, align 4
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i64 3
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 2
  store float 5.000000e-01, float* %120, align 4
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i64 3
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 3
  store float 1.000000e+00, float* %123, align 4
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i64 3
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 4
  store float 1.000000e+00, float* %126, align 4
  %127 = load float, float* %14, align 4
  %128 = call float @cosf(float %127) #3
  store float %128, float* %22, align 4
  %129 = load float, float* %14, align 4
  %130 = call float @sinf(float %129) #3
  store float %130, float* %23, align 4
  store i32 0, i32* %24, align 4
  br label %131

131:                                              ; preds = %179, %8
  %132 = load i32, i32* %24, align 4
  %133 = icmp slt i32 %132, 4
  br i1 %133, label %134, label %182

134:                                              ; preds = %131
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %136 = load i32, i32* %24, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = load float, float* %139, align 4
  store float %140, float* %25, align 4
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %142 = load i32, i32* %24, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 1
  %146 = load float, float* %145, align 4
  store float %146, float* %26, align 4
  %147 = load float, float* %25, align 4
  %148 = load float, float* %22, align 4
  %149 = fmul float %147, %148
  %150 = load float, float* %26, align 4
  %151 = load float, float* %23, align 4
  %152 = fmul float %150, %151
  %153 = fsub float %149, %152
  %154 = load float, float* %10, align 4
  %155 = fadd float %153, %154
  %156 = load float, float* %20, align 4
  %157 = fadd float %155, %156
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %159 = load i32, i32* %24, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 0
  store float %157, float* %162, align 4
  %163 = load float, float* %25, align 4
  %164 = load float, float* %23, align 4
  %165 = fmul float %163, %164
  %166 = load float, float* %26, align 4
  %167 = load float, float* %22, align 4
  %168 = fmul float %166, %167
  %169 = fadd float %165, %168
  %170 = load float, float* %11, align 4
  %171 = fadd float %169, %170
  %172 = load float, float* %21, align 4
  %173 = fadd float %171, %172
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %175 = load i32, i32* %24, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 1
  store float %173, float* %178, align 4
  br label %179

179:                                              ; preds = %134
  %180 = load i32, i32* %24, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %24, align 4
  br label %131

182:                                              ; preds = %131
  %183 = load i32, i32* @_vita2d_context, align 4
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 0
  %186 = call i32 @sceGxmSetFragmentTexture(i32 %183, i32 0, i32* %185)
  %187 = load i32, i32* @_vita2d_context, align 4
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %189 = call i32 @sceGxmSetVertexStream(i32 %187, i32 0, %struct.TYPE_7__* %188)
  %190 = load i32, i32* @_vita2d_context, align 4
  %191 = load i32, i32* @SCE_GXM_PRIMITIVE_TRIANGLE_STRIP, align 4
  %192 = load i32, i32* @SCE_GXM_INDEX_FORMAT_U16, align 4
  %193 = call i32 (...) @vita2d_get_linear_indices()
  %194 = call i32 @sceGxmDraw(i32 %190, i32 %191, i32 %192, i32 %193, i32 4)
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
