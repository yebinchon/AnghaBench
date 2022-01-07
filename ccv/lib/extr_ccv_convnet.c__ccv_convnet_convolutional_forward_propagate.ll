; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_convnet.c__ccv_convnet_convolutional_forward_propagate.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_convnet.c__ccv_convnet_convolutional_forward_propagate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_23__ = type { i32, i32, i32 }

@CCV_32F = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_24__*, %struct.TYPE_23__*, %struct.TYPE_23__**)* @_ccv_convnet_convolutional_forward_propagate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ccv_convnet_convolutional_forward_propagate(%struct.TYPE_24__* %0, %struct.TYPE_23__* %1, %struct.TYPE_23__** %2) #0 {
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_23__**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_23__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  store %struct.TYPE_23__** %2, %struct.TYPE_23__*** %6, align 8
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ccv_convnet_make_output(%struct.TYPE_24__* %20, i32 %23, i32 %26, i32* %7, i32* %8, i32* %9)
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %10, align 4
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %11, align 4
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %12, align 4
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %13, align 4
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %14, align 4
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* @CCV_32F, align 4
  %59 = load i32, i32* %11, align 4
  %60 = or i32 %58, %59
  store i32 %60, i32* %16, align 4
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @CCV_GET_CHANNEL(i32 %63)
  %65 = load i32, i32* %10, align 4
  %66 = icmp eq i32 %64, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @CCV_GET_DATA_TYPE(i32 %71)
  %73 = load i32, i32* @CCV_32F, align 4
  %74 = icmp eq i32 %72, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @assert(i32 %75)
  %77 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %6, align 8
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %16, align 4
  %82 = load i32, i32* %16, align 4
  %83 = call %struct.TYPE_23__* @ccv_dense_matrix_renew(%struct.TYPE_23__* %78, i32 %79, i32 %80, i32 %81, i32 %82, i32 0)
  %84 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %6, align 8
  store %struct.TYPE_23__* %83, %struct.TYPE_23__** %84, align 8
  store %struct.TYPE_23__* %83, %struct.TYPE_23__** %17, align 8
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %9, align 4
  %87 = sdiv i32 %85, %86
  store i32 %87, i32* %18, align 4
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %9, align 4
  %90 = sdiv i32 %88, %89
  store i32 %90, i32* %19, align 4
  %91 = load i32, i32* %19, align 4
  %92 = srem i32 %91, 4
  %93 = icmp eq i32 %92, 0
  %94 = zext i1 %93 to i32
  %95 = call i32 @assert(i32 %94)
  %96 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* %14, align 4
  %106 = load i32, i32* %15, align 4
  %107 = load i32, i32* %18, align 4
  %108 = load i32, i32* %19, align 4
  %109 = call i32 @_ccv_convnet_convolutional_forward_propagate_fallback(%struct.TYPE_24__* %96, %struct.TYPE_23__* %97, %struct.TYPE_23__* %98, i32 %99, i32 %100, i32 %101, i32 %102, i32 %103, i32 %104, i32 %105, i32 %106, i32 %107, i32 %108)
  ret void
}

declare dso_local i32 @ccv_convnet_make_output(%struct.TYPE_24__*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @CCV_GET_CHANNEL(i32) #1

declare dso_local i32 @CCV_GET_DATA_TYPE(i32) #1

declare dso_local %struct.TYPE_23__* @ccv_dense_matrix_renew(%struct.TYPE_23__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @_ccv_convnet_convolutional_forward_propagate_fallback(%struct.TYPE_24__*, %struct.TYPE_23__*, %struct.TYPE_23__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
