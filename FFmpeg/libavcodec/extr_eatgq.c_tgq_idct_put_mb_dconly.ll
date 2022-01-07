; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_eatgq.c_tgq_idct_put_mb_dconly.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_eatgq.c_tgq_idct_put_mb_dconly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32*, i32** }

@AV_CODEC_FLAG_GRAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_9__*, i32, i32, i32*)* @tgq_idct_put_mb_dconly to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tgq_idct_put_mb_dconly(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %11, align 4
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = load i32**, i32*** %21, align 8
  %23 = getelementptr inbounds i32*, i32** %22, i64 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = mul nsw i32 %25, 16
  %27 = load i32, i32* %11, align 4
  %28 = mul nsw i32 %26, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %24, i64 %29
  %31 = load i32, i32* %8, align 4
  %32 = mul nsw i32 %31, 16
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  store i32* %34, i32** %12, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load i32**, i32*** %36, align 8
  %38 = getelementptr inbounds i32*, i32** %37, i64 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = mul nsw i32 %40, 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %41, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %39, i64 %48
  %50 = load i32, i32* %8, align 4
  %51 = mul nsw i32 %50, 8
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  store i32* %53, i32** %13, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load i32**, i32*** %55, align 8
  %57 = getelementptr inbounds i32*, i32** %56, i64 2
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = mul nsw i32 %59, 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  %65 = load i32, i32* %64, align 4
  %66 = mul nsw i32 %60, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %58, i64 %67
  %69 = load i32, i32* %8, align 4
  %70 = mul nsw i32 %69, 8
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  store i32* %72, i32** %14, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %74 = load i32*, i32** %12, align 8
  %75 = load i32, i32* %11, align 4
  %76 = load i32*, i32** %10, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @tgq_dconly(%struct.TYPE_8__* %73, i32* %74, i32 %75, i32 %78)
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %81 = load i32*, i32** %12, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 8
  %83 = load i32, i32* %11, align 4
  %84 = load i32*, i32** %10, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @tgq_dconly(%struct.TYPE_8__* %80, i32* %82, i32 %83, i32 %86)
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %89 = load i32*, i32** %12, align 8
  %90 = load i32, i32* %11, align 4
  %91 = mul nsw i32 8, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  %94 = load i32, i32* %11, align 4
  %95 = load i32*, i32** %10, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 2
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @tgq_dconly(%struct.TYPE_8__* %88, i32* %93, i32 %94, i32 %97)
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %100 = load i32*, i32** %12, align 8
  %101 = load i32, i32* %11, align 4
  %102 = mul nsw i32 8, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  %105 = getelementptr inbounds i32, i32* %104, i64 8
  %106 = load i32, i32* %11, align 4
  %107 = load i32*, i32** %10, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 3
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @tgq_dconly(%struct.TYPE_8__* %99, i32* %105, i32 %106, i32 %109)
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @AV_CODEC_FLAG_GRAY, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %142, label %119

119:                                              ; preds = %5
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %121 = load i32*, i32** %13, align 8
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32*, i32** %10, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 4
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @tgq_dconly(%struct.TYPE_8__* %120, i32* %121, i32 %126, i32 %129)
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %132 = load i32*, i32** %14, align 8
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 2
  %137 = load i32, i32* %136, align 4
  %138 = load i32*, i32** %10, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 5
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @tgq_dconly(%struct.TYPE_8__* %131, i32* %132, i32 %137, i32 %140)
  br label %142

142:                                              ; preds = %119, %5
  ret void
}

declare dso_local i32 @tgq_dconly(%struct.TYPE_8__*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
