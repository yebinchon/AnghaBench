; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_svq1enc.c_init_block_index.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_svq1enc.c_init_block_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @init_block_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_block_index(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = mul nsw i32 %8, 2
  %10 = mul nsw i32 %5, %9
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = mul nsw i32 %13, 2
  %15 = add nsw i32 %10, %14
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 %15, i32* %19, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %25, 2
  %27 = mul nsw i32 %22, %26
  %28 = add nsw i32 %27, 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = mul nsw i32 %31, 2
  %33 = add nsw i32 %28, %32
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  store i32 %33, i32* %37, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %43, 2
  %45 = add nsw i32 %44, 1
  %46 = mul nsw i32 %40, %45
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = mul nsw i32 %49, 2
  %51 = add nsw i32 %46, %50
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  store i32 %51, i32* %55, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = mul nsw i32 %61, 2
  %63 = add nsw i32 %62, 1
  %64 = mul nsw i32 %58, %63
  %65 = add nsw i32 %64, 1
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = mul nsw i32 %68, 2
  %70 = add nsw i32 %65, %69
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 3
  store i32 %70, i32* %74, align 4
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  %82 = mul nsw i32 %77, %81
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 8
  %89 = mul nsw i32 %85, %88
  %90 = mul nsw i32 %89, 2
  %91 = add nsw i32 %82, %90
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %91, %94
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 4
  store i32 %95, i32* %99, align 4
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %105, %108
  %110 = add nsw i32 %109, 2
  %111 = mul nsw i32 %102, %110
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 8
  %118 = mul nsw i32 %114, %117
  %119 = mul nsw i32 %118, 2
  %120 = add nsw i32 %111, %119
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %120, %123
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 5
  store i32 %124, i32* %128, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
