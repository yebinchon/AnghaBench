; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/cmd/convolution/extr_ccv_nnc_convolution.c__ccv_nnc_conv_tensor_auto_forw.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/cmd/convolution/extr_ccv_nnc_convolution.c__ccv_nnc_conv_tensor_auto_forw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_14__*, i32, i32, %struct.TYPE_14__*, i32)* @_ccv_nnc_conv_tensor_auto_forw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ccv_nnc_conv_tensor_auto_forw(i32 %0, %struct.TYPE_14__* %1, i32 %2, i32 %3, %struct.TYPE_14__* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_15__, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  store i32 %0, i32* %15, align 4
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_14__* %4, %struct.TYPE_14__** %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = icmp eq i32 %16, 1
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 3
  store i32 %23, i32* %26, align 4
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 2
  store i32 %30, i32* %33, align 4
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 4
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i64 1
  %43 = bitcast %struct.TYPE_14__* %42 to { i64, i64 }*
  %44 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 4
  %46 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %43, i32 0, i32 1
  %47 = load i64, i64* %46, align 4
  %48 = call i32 @ccv_nnc_tensor_get_n(i64 %45, i64 %47)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %49, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i64 0
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ccv_nnc_tensor_nd(i32 %60)
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @ccv_nnc_tensor_set_c(%struct.TYPE_14__* %56, i32 %61, i32 %62)
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i64 0
  %67 = bitcast %struct.TYPE_14__* %66 to { i64, i64 }*
  %68 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 4
  %70 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %67, i32 0, i32 1
  %71 = load i64, i64* %70, align 4
  %72 = call i32 @ccv_nnc_tensor_get_n(i64 %69, i64 %71)
  %73 = call i32 @ccv_nnc_tensor_set_n(%struct.TYPE_14__* %64, i32 %72)
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i64 0
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = bitcast %struct.TYPE_14__* %75 to { i64, i64 }*
  %82 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 4
  %84 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %81, i32 0, i32 1
  %85 = load i64, i64* %84, align 4
  %86 = call i32 @ccv_nnc_hint_tensor_forward(i32 %80, i64 %83, i64 %85, i32 %76, %struct.TYPE_14__* %77)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ccv_nnc_tensor_get_n(i64, i64) #1

declare dso_local i32 @ccv_nnc_tensor_set_c(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @ccv_nnc_tensor_nd(i32) #1

declare dso_local i32 @ccv_nnc_tensor_set_n(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @ccv_nnc_hint_tensor_forward(i32, i64, i64, i32, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
