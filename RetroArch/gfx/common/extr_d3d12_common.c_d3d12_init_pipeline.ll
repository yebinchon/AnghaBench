; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/common/extr_d3d12_common.c_d3d12_init_pipeline.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/common/extr_d3d12_common.c_d3d12_init_pipeline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_13__, %struct.TYPE_12__, i32, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i8*, i32* }
%struct.TYPE_10__ = type { i8*, i32* }
%struct.TYPE_9__ = type { i8*, i32* }

@UINT_MAX = common dso_local global i32 0, align 4
@D3D12_FILL_MODE_SOLID = common dso_local global i32 0, align 4
@D3D12_CULL_MODE_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @d3d12_init_pipeline(i32 %0, i64 %1, i64 %2, i64 %3, %struct.TYPE_14__* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.TYPE_14__* %4, %struct.TYPE_14__** %11, align 8
  store i32* %5, i32** %12, align 8
  %13 = load i64, i64* %8, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %6
  %16 = load i64, i64* %8, align 8
  %17 = call i8* @D3DGetBufferPointer(i64 %16)
  %18 = bitcast i8* %17 to i32*
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 6
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  store i32* %18, i32** %21, align 8
  %22 = load i64, i64* %8, align 8
  %23 = call i8* @D3DGetBufferSize(i64 %22)
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 6
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  store i8* %23, i8** %26, align 8
  br label %34

27:                                               ; preds = %6
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 6
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  store i32* null, i32** %30, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 6
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  store i8* null, i8** %33, align 8
  br label %34

34:                                               ; preds = %27, %15
  %35 = load i64, i64* %9, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %34
  %38 = load i64, i64* %9, align 8
  %39 = call i8* @D3DGetBufferPointer(i64 %38)
  %40 = bitcast i8* %39 to i32*
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 5
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  store i32* %40, i32** %43, align 8
  %44 = load i64, i64* %9, align 8
  %45 = call i8* @D3DGetBufferSize(i64 %44)
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 5
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  store i8* %45, i8** %48, align 8
  br label %56

49:                                               ; preds = %34
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  store i32* null, i32** %52, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 5
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  store i8* null, i8** %55, align 8
  br label %56

56:                                               ; preds = %49, %37
  %57 = load i64, i64* %10, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %56
  %60 = load i64, i64* %10, align 8
  %61 = call i8* @D3DGetBufferPointer(i64 %60)
  %62 = bitcast i8* %61 to i32*
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  store i32* %62, i32** %65, align 8
  %66 = load i64, i64* %10, align 8
  %67 = call i8* @D3DGetBufferSize(i64 %66)
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  store i8* %67, i8** %70, align 8
  br label %78

71:                                               ; preds = %56
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  store i32* null, i32** %74, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  store i8* null, i8** %77, align 8
  br label %78

78:                                               ; preds = %71, %59
  %79 = load i32, i32* @UINT_MAX, align 4
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* @D3D12_FILL_MODE_SOLID, align 4
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  store i32 %82, i32* %85, align 4
  %86 = load i32, i32* @D3D12_CULL_MODE_NONE, align 4
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 8
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  store i32 1, i32* %91, align 8
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  store i32 1, i32* %94, align 4
  %95 = load i32, i32* %7, align 4
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %97 = load i32*, i32** %12, align 8
  %98 = call i32 @D3D12CreateGraphicsPipelineState(i32 %95, %struct.TYPE_14__* %96, i32* %97)
  ret i32 1
}

declare dso_local i8* @D3DGetBufferPointer(i64) #1

declare dso_local i8* @D3DGetBufferSize(i64) #1

declare dso_local i32 @D3D12CreateGraphicsPipelineState(i32, %struct.TYPE_14__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
