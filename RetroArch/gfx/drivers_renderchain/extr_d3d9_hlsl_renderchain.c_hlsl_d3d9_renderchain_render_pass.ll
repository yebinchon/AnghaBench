; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_renderchain/extr_d3d9_hlsl_renderchain.c_hlsl_d3d9_renderchain_render_pass.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_renderchain/extr_d3d9_hlsl_renderchain.c_hlsl_d3d9_renderchain_render_pass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_17__, %struct.TYPE_15__*, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.shader_pass = type { i32, i32, i32, i32, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }

@D3DPT_TRIANGLESTRIP = common dso_local global i32 0, align 4
@D3DTEXF_POINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, %struct.shader_pass*, i32)* @hlsl_d3d9_renderchain_render_pass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hlsl_d3d9_renderchain_render_pass(%struct.TYPE_16__* %0, %struct.shader_pass* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.shader_pass*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.shader_pass* %1, %struct.shader_pass** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.shader_pass*, %struct.shader_pass** %5, align 8
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @d3d9_hlsl_bind_program(%struct.shader_pass* %8, i32 %12)
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.shader_pass*, %struct.shader_pass** %5, align 8
  %19 = getelementptr inbounds %struct.shader_pass, %struct.shader_pass* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @d3d9_set_texture(i32 %17, i32 0, i32 %20)
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.shader_pass*, %struct.shader_pass** %5, align 8
  %27 = getelementptr inbounds %struct.shader_pass, %struct.shader_pass* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @d3d_translate_filter(i32 %31)
  %33 = call i32 @d3d9_set_sampler_minfilter(i32 %25, i32 0, i32 %32)
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.shader_pass*, %struct.shader_pass** %5, align 8
  %39 = getelementptr inbounds %struct.shader_pass, %struct.shader_pass* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @d3d_translate_filter(i32 %43)
  %45 = call i32 @d3d9_set_sampler_magfilter(i32 %37, i32 0, i32 %44)
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.shader_pass*, %struct.shader_pass** %5, align 8
  %51 = getelementptr inbounds %struct.shader_pass, %struct.shader_pass* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @d3d9_set_vertex_declaration(i32 %49, i32 %52)
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %67, %3
  %55 = load i32, i32* %7, align 4
  %56 = icmp ult i32 %55, 4
  br i1 %56, label %57, label %70

57:                                               ; preds = %54
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.shader_pass*, %struct.shader_pass** %5, align 8
  %64 = getelementptr inbounds %struct.shader_pass, %struct.shader_pass* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @d3d9_set_stream_source(i32 %61, i32 %62, i32 %65, i32 0, i32 4)
  br label %67

67:                                               ; preds = %57
  %68 = load i32, i32* %7, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %54

70:                                               ; preds = %54
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @D3DPT_TRIANGLESTRIP, align 4
  %76 = call i32 @d3d9_draw_primitive(i32 %74, i32 %75, i32 0, i32 2)
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @D3DTEXF_POINT, align 4
  %82 = call i32 @d3d9_set_sampler_minfilter(i32 %80, i32 0, i32 %81)
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @D3DTEXF_POINT, align 4
  %88 = call i32 @d3d9_set_sampler_magfilter(i32 %86, i32 0, i32 %87)
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = call i32 @d3d9_renderchain_unbind_all(%struct.TYPE_17__* %90)
  ret void
}

declare dso_local i32 @d3d9_hlsl_bind_program(%struct.shader_pass*, i32) #1

declare dso_local i32 @d3d9_set_texture(i32, i32, i32) #1

declare dso_local i32 @d3d9_set_sampler_minfilter(i32, i32, i32) #1

declare dso_local i32 @d3d_translate_filter(i32) #1

declare dso_local i32 @d3d9_set_sampler_magfilter(i32, i32, i32) #1

declare dso_local i32 @d3d9_set_vertex_declaration(i32, i32) #1

declare dso_local i32 @d3d9_set_stream_source(i32, i32, i32, i32, i32) #1

declare dso_local i32 @d3d9_draw_primitive(i32, i32, i32, i32) #1

declare dso_local i32 @d3d9_renderchain_unbind_all(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
