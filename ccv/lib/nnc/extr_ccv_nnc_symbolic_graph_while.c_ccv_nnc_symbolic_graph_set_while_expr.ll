; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph_while.c_ccv_nnc_symbolic_graph_set_while_expr.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph_while.c_ccv_nnc_symbolic_graph_set_while_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8*, i32*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccv_nnc_symbolic_graph_set_while_expr(%struct.TYPE_10__* %0, i32 %1, i8* %2, i32* %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_11__*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %15, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %7
  %25 = load i32, i32* %15, align 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %25, %32
  br label %34

34:                                               ; preds = %24, %7
  %35 = phi i1 [ false, %7 ], [ %33, %24 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %41, align 8
  %43 = load i32, i32* %15, align 4
  %44 = call i64 @ccv_array_get(%struct.TYPE_12__* %42, i32 %43)
  %45 = inttoptr i64 %44 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %45, %struct.TYPE_11__** %16, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  store i8* %46, i8** %49, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 3
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %96

56:                                               ; preds = %34
  %57 = load i32*, i32** %11, align 8
  %58 = ptrtoint i32* %57 to i32
  %59 = call i32 @assert(i32 %58)
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = mul i64 4, %61
  %63 = trunc i64 %62 to i32
  %64 = call i64 @ccmalloc(i32 %63)
  %65 = inttoptr i64 %64 to i32*
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  store i32* %65, i32** %68, align 8
  store i32 0, i32* %17, align 4
  br label %69

69:                                               ; preds = %88, %56
  %70 = load i32, i32* %17, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %91

73:                                               ; preds = %69
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %75 = load i32*, i32** %11, align 8
  %76 = load i32, i32* %17, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ccv_nnc_tensor_symbol_map_raw(%struct.TYPE_10__* %74, i32 %79)
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %17, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 %80, i32* %87, align 4
  br label %88

88:                                               ; preds = %73
  %89 = load i32, i32* %17, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %17, align 4
  br label %69

91:                                               ; preds = %69
  %92 = load i32, i32* %12, align 4
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 2
  store i32 %92, i32* %95, align 8
  br label %96

96:                                               ; preds = %91, %34
  %97 = load i32, i32* %14, align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %123

99:                                               ; preds = %96
  %100 = load i32*, i32** %13, align 8
  %101 = ptrtoint i32* %100 to i32
  %102 = call i32 @assert(i32 %101)
  %103 = load i32, i32* %14, align 4
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* %14, align 4
  %107 = sext i32 %106 to i64
  %108 = mul i64 4, %107
  %109 = trunc i64 %108 to i32
  %110 = call i64 @ccmalloc(i32 %109)
  %111 = inttoptr i64 %110 to i32*
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 2
  store i32* %111, i32** %113, align 8
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = load i32*, i32** %13, align 8
  %118 = load i32, i32* %14, align 4
  %119 = sext i32 %118 to i64
  %120 = mul i64 4, %119
  %121 = trunc i64 %120 to i32
  %122 = call i32 @memcpy(i32* %116, i32* %117, i32 %121)
  br label %123

123:                                              ; preds = %99, %96
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ccv_array_get(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @ccmalloc(i32) #1

declare dso_local i32 @ccv_nnc_tensor_symbol_map_raw(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
