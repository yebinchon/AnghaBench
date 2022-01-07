; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_d3d8.c_d3d8_renderchain_create_first_pass.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_d3d8.c_d3d8_renderchain_create_first_pass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i64, i32, i32, i64 }
%struct.TYPE_7__ = type { i64 }

@D3DUSAGE_WRITEONLY = common dso_local global i32 0, align 4
@D3DFVF_XYZ = common dso_local global i32 0, align 4
@D3DFVF_TEX1 = common dso_local global i32 0, align 4
@D3DFVF_DIFFUSE = common dso_local global i32 0, align 4
@D3DPOOL_MANAGED = common dso_local global i32 0, align 4
@D3DTADDRESS_BORDER = common dso_local global i32 0, align 4
@D3DRS_LIGHTING = common dso_local global i32 0, align 4
@D3DRS_CULLMODE = common dso_local global i32 0, align 4
@D3DCULL_NONE = common dso_local global i32 0, align 4
@D3DRS_ZENABLE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_9__*, %struct.TYPE_7__*)* @d3d8_renderchain_create_first_pass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3d8_renderchain_create_first_pass(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @D3DUSAGE_WRITEONLY, align 4
  %14 = load i32, i32* @D3DFVF_XYZ, align 4
  %15 = load i32, i32* @D3DFVF_TEX1, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @D3DFVF_DIFFUSE, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @D3DPOOL_MANAGED, align 4
  %20 = call i64 @d3d8_vertex_buffer_new(i32 %12, i32 16, i32 %13, i32 %18, i32 %19, i32* null)
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 3
  store i64 %20, i64* %22, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %73

28:                                               ; preds = %3
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %28
  %41 = call i32 (...) @d3d8_get_xrgb8888_format()
  br label %44

42:                                               ; preds = %28
  %43 = call i32 (...) @d3d8_get_rgb565_format()
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  %46 = load i32, i32* @D3DPOOL_MANAGED, align 4
  %47 = call i64 @d3d8_texture_new(i32 %29, i32* null, i32 %32, i32 %35, i32 1, i32 0, i32 %45, i32 %46, i32 0, i32 0, i32 0, i32* null, i32* null, i32 0)
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %73

55:                                               ; preds = %44
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @D3DTADDRESS_BORDER, align 4
  %58 = call i32 @d3d8_set_sampler_address_u(i32 %56, i32 0, i32 %57)
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @D3DTADDRESS_BORDER, align 4
  %61 = call i32 @d3d8_set_sampler_address_v(i32 %59, i32 0, i32 %60)
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @D3DRS_LIGHTING, align 4
  %64 = call i32 @d3d8_set_render_state(i32 %62, i32 %63, i32 0)
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @D3DRS_CULLMODE, align 4
  %67 = load i32, i32* @D3DCULL_NONE, align 4
  %68 = call i32 @d3d8_set_render_state(i32 %65, i32 %66, i32 %67)
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @D3DRS_ZENABLE, align 4
  %71 = load i32, i32* @FALSE, align 4
  %72 = call i32 @d3d8_set_render_state(i32 %69, i32 %70, i32 %71)
  store i32 1, i32* %4, align 4
  br label %73

73:                                               ; preds = %55, %54, %27
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i64 @d3d8_vertex_buffer_new(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @d3d8_texture_new(i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @d3d8_get_xrgb8888_format(...) #1

declare dso_local i32 @d3d8_get_rgb565_format(...) #1

declare dso_local i32 @d3d8_set_sampler_address_u(i32, i32, i32) #1

declare dso_local i32 @d3d8_set_sampler_address_v(i32, i32, i32) #1

declare dso_local i32 @d3d8_set_render_state(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
