; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_d3d8.c_d3d8_renderchain_render_pass.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_d3d8.c_d3d8_renderchain_render_pass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@D3DTEXF_LINEAR = common dso_local global i32 0, align 4
@D3DTEXF_POINT = common dso_local global i32 0, align 4
@D3DFVF_XYZ = common dso_local global i32 0, align 4
@D3DFVF_TEX1 = common dso_local global i32 0, align 4
@D3DFVF_DIFFUSE = common dso_local global i32 0, align 4
@D3DPT_TRIANGLESTRIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32, %struct.TYPE_11__*, i32, i32)* @d3d8_renderchain_render_pass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d3d8_renderchain_render_pass(%struct.TYPE_10__* %0, i32 %1, %struct.TYPE_11__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = call %struct.TYPE_9__* (...) @config_get_ptr()
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %11, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @d3d8_set_texture(i32 %18, i32 0, i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i32, i32* @D3DTEXF_LINEAR, align 4
  br label %31

29:                                               ; preds = %5
  %30 = load i32, i32* @D3DTEXF_POINT, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  %33 = call i32 @d3d8_set_sampler_magfilter(i32 %23, i32 %24, i32 %32)
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* @D3DTEXF_LINEAR, align 4
  br label %42

40:                                               ; preds = %31
  %41 = load i32, i32* @D3DTEXF_POINT, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  %44 = call i32 @d3d8_set_sampler_minfilter(i32 %34, i32 %35, i32 %43)
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 2
  %50 = call i32 @d3d8_set_viewports(i32 %47, i32* %49)
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @D3DFVF_XYZ, align 4
  %53 = load i32, i32* @D3DFVF_TEX1, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @D3DFVF_DIFFUSE, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @d3d8_set_vertex_shader(i32 %51, i32 %56, i32* null)
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @d3d8_set_stream_source(i32 %58, i32 0, i32 %61, i32 0, i32 4)
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = call i32 @d3d8_set_mvp(i32 %65, i32* %67)
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @D3DPT_TRIANGLESTRIP, align 4
  %71 = call i32 @d3d8_draw_primitive(i32 %69, i32 %70, i32 0, i32 2)
  ret void
}

declare dso_local %struct.TYPE_9__* @config_get_ptr(...) #1

declare dso_local i32 @d3d8_set_texture(i32, i32, i32) #1

declare dso_local i32 @d3d8_set_sampler_magfilter(i32, i32, i32) #1

declare dso_local i32 @d3d8_set_sampler_minfilter(i32, i32, i32) #1

declare dso_local i32 @d3d8_set_viewports(i32, i32*) #1

declare dso_local i32 @d3d8_set_vertex_shader(i32, i32, i32*) #1

declare dso_local i32 @d3d8_set_stream_source(i32, i32, i32, i32, i32) #1

declare dso_local i32 @d3d8_set_mvp(i32, i32*) #1

declare dso_local i32 @d3d8_draw_primitive(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
