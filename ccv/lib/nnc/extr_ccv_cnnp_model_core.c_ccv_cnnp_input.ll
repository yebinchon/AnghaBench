; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_cnnp_model_core.c_ccv_cnnp_input.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_cnnp_model_core.c_ccv_cnnp_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, %struct.TYPE_6__*, i64, i64, i64 }
%struct.TYPE_6__ = type { i32, i32*, i32, i32* }

@ccv_cnnp_input_isa = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @ccv_cnnp_input() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = call i64 @cccalloc(i32 1, i32 36)
  %4 = inttoptr i64 %3 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** %1, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 3
  store i32* @ccv_cnnp_input_isa, i32** %6, align 8
  %7 = call i32 @ccv_array_new(i32 8, i32 1, i32 0)
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  store i32 %7, i32* %9, align 8
  %10 = call %struct.TYPE_7__* @ccmalloc(i32 8)
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %2, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 4
  store i64 0, i64* %12, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 3
  store i64 0, i64* %14, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 2
  store i64 0, i64* %16, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %19, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i64 1
  %22 = bitcast %struct.TYPE_7__* %21 to i32*
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  store i32* %22, i32** %24, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @ccv_array_push(i32 %27, %struct.TYPE_7__** %2)
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 1
  %31 = bitcast %struct.TYPE_6__* %30 to i32*
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  store i32* %31, i32** %33, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  ret %struct.TYPE_7__* %36
}

declare dso_local i64 @cccalloc(i32, i32) #1

declare dso_local i32 @ccv_array_new(i32, i32, i32) #1

declare dso_local %struct.TYPE_7__* @ccmalloc(i32) #1

declare dso_local i32 @ccv_array_push(i32, %struct.TYPE_7__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
