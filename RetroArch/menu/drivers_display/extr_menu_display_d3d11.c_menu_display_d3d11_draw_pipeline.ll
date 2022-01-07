; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers_display/extr_menu_display_d3d11.c_menu_display_d3d11_draw_pipeline.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers_display/extr_menu_display_d3d11.c_menu_display_d3d11_draw_pipeline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { %struct.TYPE_25__*, %struct.TYPE_22__ }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_29__ = type { i32, i32, %struct.TYPE_30__, %struct.TYPE_24__, i32, i32, i32 }
%struct.TYPE_30__ = type { float }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_27__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { i64 }

@D3D11_USAGE_IMMUTABLE = common dso_local global i32 0, align 4
@D3D11_BIND_VERTEX_BUFFER = common dso_local global i32 0, align 4
@D3D11_DEFAULT_SAMPLE_MASK = common dso_local global i32 0, align 4
@D3D11_PRIMITIVE_TOPOLOGY_TRIANGLESTRIP = common dso_local global i32 0, align 4
@D3D11_MAP_WRITE_DISCARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_28__*, %struct.TYPE_26__*)* @menu_display_d3d11_draw_pipeline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menu_display_d3d11_draw_pipeline(%struct.TYPE_28__* %0, %struct.TYPE_26__* %1) #0 {
  %3 = alloca %struct.TYPE_28__*, align 8
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca %struct.TYPE_21__, align 4
  %8 = alloca %struct.TYPE_19__, align 4
  %9 = alloca %struct.TYPE_20__, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %3, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %4, align 8
  %10 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_29__*
  store %struct.TYPE_29__* %13, %struct.TYPE_29__** %5, align 8
  %14 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %15 = icmp ne %struct.TYPE_29__* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %18 = icmp ne %struct.TYPE_28__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %2
  br label %128

20:                                               ; preds = %16
  %21 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %94 [
    i32 133, label %25
    i32 132, label %25
    i32 131, label %81
    i32 130, label %81
    i32 129, label %81
    i32 128, label %81
  ]

25:                                               ; preds = %20, %20
  %26 = call %struct.TYPE_27__* (...) @menu_display_get_coords_array()
  store %struct.TYPE_27__* %26, %struct.TYPE_27__** %6, align 8
  %27 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %57, label %31

31:                                               ; preds = %25
  %32 = bitcast %struct.TYPE_21__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %32, i8 0, i64 16, i1 false)
  %33 = load i32, i32* @D3D11_USAGE_IMMUTABLE, align 4
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 2
  store i32 %33, i32* %34, align 4
  %35 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %38, 2
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 4
  %42 = trunc i64 %41 to i32
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* @D3D11_BIND_VERTEX_BUFFER, align 4
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 1
  store i32 %44, i32* %45, align 4
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %47 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %46, align 4
  %51 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %54, i32 0, i32 5
  %56 = call i32 @D3D11CreateBuffer(i32 %53, %struct.TYPE_21__* %7, %struct.TYPE_19__* %8, i32* %55)
  br label %57

57:                                               ; preds = %31, %25
  %58 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @D3D11SetVertexBuffer(i32 %60, i32 0, i32 %63, i32 8, i32 0)
  %65 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %71, i32 0, i32 0
  store i32 %68, i32* %72, align 4
  %73 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @D3D11_DEFAULT_SAMPLE_MASK, align 4
  %80 = call i32 @D3D11SetBlendState(i32 %75, i32 %78, i32* null, i32 %79)
  br label %95

81:                                               ; preds = %20, %20, %20, %20
  %82 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @D3D11SetVertexBuffer(i32 %84, i32 0, i32 %88, i32 4, i32 0)
  %90 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %92, i32 0, i32 0
  store i32 4, i32* %93, align 4
  br label %95

94:                                               ; preds = %20
  br label %128

95:                                               ; preds = %81, %57
  %96 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @D3D11_PRIMITIVE_TOPOLOGY_TRIANGLESTRIP, align 4
  %100 = call i32 @D3D11SetPrimitiveTopology(i32 %98, i32 %99)
  %101 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %102, i32 0, i32 0
  %104 = load float, float* %103, align 4
  %105 = fadd float %104, 0x3F847AE140000000
  store float %105, float* %103, align 4
  %106 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @D3D11_MAP_WRITE_DISCARD, align 4
  %113 = call i32 @D3D11MapBuffer(i32 %108, i32 %111, i32 0, i32 %112, i32 0, %struct.TYPE_20__* %9)
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = inttoptr i64 %115 to %struct.TYPE_30__*
  %117 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %117, i32 0, i32 2
  %119 = bitcast %struct.TYPE_30__* %116 to i8*
  %120 = bitcast %struct.TYPE_30__* %118 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %119, i8* align 4 %120, i64 4, i1 false)
  %121 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @D3D11UnmapBuffer(i32 %123, i32 %126, i32 0)
  br label %128

128:                                              ; preds = %95, %94, %19
  ret void
}

declare dso_local %struct.TYPE_27__* @menu_display_get_coords_array(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @D3D11CreateBuffer(i32, %struct.TYPE_21__*, %struct.TYPE_19__*, i32*) #1

declare dso_local i32 @D3D11SetVertexBuffer(i32, i32, i32, i32, i32) #1

declare dso_local i32 @D3D11SetBlendState(i32, i32, i32*, i32) #1

declare dso_local i32 @D3D11SetPrimitiveTopology(i32, i32) #1

declare dso_local i32 @D3D11MapBuffer(i32, i32, i32, i32, i32, %struct.TYPE_20__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @D3D11UnmapBuffer(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
