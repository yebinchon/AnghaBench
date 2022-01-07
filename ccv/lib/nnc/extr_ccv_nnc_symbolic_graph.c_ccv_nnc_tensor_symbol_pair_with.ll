; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph.c_ccv_nnc_tensor_symbol_pair_with.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph.c_ccv_nnc_tensor_symbol_pair_with.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccv_nnc_tensor_symbol_pair_with(%struct.TYPE_10__* %0, i64 %1, %struct.TYPE_10__* %2, i64 %3, %struct.TYPE_10__* %4) #0 {
  %6 = alloca %struct.TYPE_8__, align 8
  %7 = alloca %struct.TYPE_8__, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = bitcast %struct.TYPE_8__* %6 to { i64, %struct.TYPE_10__* }*
  %11 = getelementptr inbounds { i64, %struct.TYPE_10__* }, { i64, %struct.TYPE_10__* }* %10, i32 0, i32 0
  store i64 %1, i64* %11, align 8
  %12 = getelementptr inbounds { i64, %struct.TYPE_10__* }, { i64, %struct.TYPE_10__* }* %10, i32 0, i32 1
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %12, align 8
  %13 = bitcast %struct.TYPE_8__* %7 to { i64, %struct.TYPE_10__* }*
  %14 = getelementptr inbounds { i64, %struct.TYPE_10__* }, { i64, %struct.TYPE_10__* }* %13, i32 0, i32 0
  store i64 %3, i64* %14, align 8
  %15 = getelementptr inbounds { i64, %struct.TYPE_10__* }, { i64, %struct.TYPE_10__* }* %13, i32 0, i32 1
  store %struct.TYPE_10__* %4, %struct.TYPE_10__** %15, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %19 = icmp eq %struct.TYPE_10__* %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sge i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %28, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = icmp eq %struct.TYPE_10__* %38, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp sge i64 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp slt i64 %51, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i64 @ccv_array_get(%struct.TYPE_11__* %64, i64 %66)
  %68 = inttoptr i64 %67 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %68, %struct.TYPE_9__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, 1
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ccv_array_get(%struct.TYPE_11__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
