; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/common/extr_d3d12_common.c_d3d12_create_fullscreen_quad_vbo.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/common/extr_d3d12_common.c_d3d12_create_fullscreen_quad_vbo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { float, float, float, float }
%struct.TYPE_11__ = type { float, float }
%struct.TYPE_10__ = type { float, float }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }

@d3d12_create_fullscreen_quad_vbo.vertices = internal constant [4 x %struct.TYPE_13__] [%struct.TYPE_13__ { %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ { float 0.000000e+00, float 1.000000e+00 }, %struct.TYPE_10__ { float 1.000000e+00, float 1.000000e+00 } }, %struct.TYPE_13__ { %struct.TYPE_12__ { float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ { float 1.000000e+00, float 1.000000e+00 } }, %struct.TYPE_13__ { %struct.TYPE_12__ { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00 }, %struct.TYPE_11__ { float 1.000000e+00, float 1.000000e+00 }, %struct.TYPE_10__ { float 1.000000e+00, float 1.000000e+00 } }, %struct.TYPE_13__ { %struct.TYPE_12__ { float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, %struct.TYPE_11__ { float 1.000000e+00, float 0.000000e+00 }, %struct.TYPE_10__ { float 1.000000e+00, float 1.000000e+00 } }], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @d3d12_create_fullscreen_quad_vbo(i32 %0, %struct.TYPE_14__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_15__, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  store i32 128, i32* %10, align 4
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  store i32 32, i32* %12, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @d3d12_create_buffer(i32 %13, i32 %16, i32* %17)
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = bitcast %struct.TYPE_15__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %21, i8 0, i64 8, i1 false)
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @D3D12Map(i32 %23, i32 0, %struct.TYPE_15__* %8, i8** %7)
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @memcpy(i8* %25, %struct.TYPE_13__* getelementptr inbounds ([4 x %struct.TYPE_13__], [4 x %struct.TYPE_13__]* @d3d12_create_fullscreen_quad_vbo.vertices, i64 0, i64 0), i32 128)
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @D3D12Unmap(i32 %28, i32 0, i32* null)
  ret void
}

declare dso_local i32 @d3d12_create_buffer(i32, i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @D3D12Map(i32, i32, %struct.TYPE_15__*, i8**) #1

declare dso_local i32 @memcpy(i8*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @D3D12Unmap(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
