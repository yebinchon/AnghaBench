; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_flashsv2enc.c_mark_all_blocks.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_flashsv2enc.c_mark_all_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i64, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i32, i32)* @mark_all_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mark_all_blocks(%struct.TYPE_4__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sub nsw i32 %17, 1
  store i32 %18, i32* %9, align 4
  br label %19

19:                                               ; preds = %105, %4
  %20 = load i32, i32* %9, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %108

22:                                               ; preds = %19
  store i32 0, i32* %11, align 4
  br label %23

23:                                               ; preds = %101, %22
  %24 = load i32, i32* %11, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %104

29:                                               ; preds = %23
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sub nsw i32 %32, %33
  %35 = sub nsw i32 %34, 1
  store i32 %35, i32* %10, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 8
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = sdiv i32 %42, %45
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 %46, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %41, i64 %51
  store i32* %52, i32** %14, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %9, align 4
  %55 = mul nsw i32 %53, %54
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = mul nsw i32 %56, %59
  %61 = mul nsw i32 %60, 3
  %62 = add nsw i32 %55, %61
  store i32 %62, i32* %13, align 4
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = mul nsw i32 %65, %66
  %68 = mul nsw i32 %67, 3
  %69 = load i32, i32* %11, align 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %69, %72
  %74 = mul nsw i32 %73, 3
  %75 = add nsw i32 %68, %74
  store i32 %75, i32* %12, align 4
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %77 = load i32*, i32** %14, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = load i32, i32* %13, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 7
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %84, %86
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 6
  %90 = load i64, i64* %89, align 8
  %91 = load i32, i32* %12, align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %90, %92
  %94 = load i32, i32* %10, align 4
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = srem i32 %94, %97
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @compare_sl(%struct.TYPE_4__* %76, i32* %77, i32* %81, i64 %87, i64 %93, i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %29
  %102 = load i32, i32* %11, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %11, align 4
  br label %23

104:                                              ; preds = %23
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %9, align 4
  br label %19

108:                                              ; preds = %19
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = mul nsw i32 %111, %114
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, %115
  store i32 %119, i32* %117, align 4
  ret i32 0
}

declare dso_local i32 @compare_sl(%struct.TYPE_4__*, i32*, i32*, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
