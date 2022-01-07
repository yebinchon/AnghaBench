; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_scpr3.c_decode_units3.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_scpr3.c_decode_units3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32**, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32*, i32*, i32*, i32*)* @decode_units3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_units3(%struct.TYPE_5__* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %14, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32**, i32*** %20, align 8
  %22 = getelementptr inbounds i32*, i32** %21, i64 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32*, i32** %12, align 8
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %13, align 8
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %25, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %23, i64 %29
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 4095
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @decode_unit3(%struct.TYPE_5__* %18, i32* %30, i32 %34, i32* %35)
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %15, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %6
  %40 = load i32, i32* %15, align 4
  store i32 %40, i32* %7, align 4
  br label %117

41:                                               ; preds = %6
  %42 = load i32*, i32** %12, align 8
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 %43, 6
  %45 = and i32 %44, 4032
  %46 = load i32*, i32** %13, align 8
  store i32 %45, i32* %46, align 4
  %47 = load i32*, i32** %9, align 8
  %48 = load i32, i32* %47, align 4
  %49 = ashr i32 %48, 2
  %50 = load i32*, i32** %12, align 8
  store i32 %49, i32* %50, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32**, i32*** %53, align 8
  %55 = getelementptr inbounds i32*, i32** %54, i64 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32*, i32** %12, align 8
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %13, align 8
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %58, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %56, i64 %62
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 4095
  %68 = load i32*, i32** %10, align 8
  %69 = call i32 @decode_unit3(%struct.TYPE_5__* %51, i32* %63, i32 %67, i32* %68)
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %15, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %41
  %73 = load i32, i32* %15, align 4
  store i32 %73, i32* %7, align 4
  br label %117

74:                                               ; preds = %41
  %75 = load i32*, i32** %12, align 8
  %76 = load i32, i32* %75, align 4
  %77 = shl i32 %76, 6
  %78 = and i32 %77, 4032
  %79 = load i32*, i32** %13, align 8
  store i32 %78, i32* %79, align 4
  %80 = load i32*, i32** %10, align 8
  %81 = load i32, i32* %80, align 4
  %82 = ashr i32 %81, 2
  %83 = load i32*, i32** %12, align 8
  store i32 %82, i32* %83, align 4
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32**, i32*** %86, align 8
  %88 = getelementptr inbounds i32*, i32** %87, i64 2
  %89 = load i32*, i32** %88, align 8
  %90 = load i32*, i32** %12, align 8
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %13, align 8
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %91, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %89, i64 %95
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, 4095
  %101 = load i32*, i32** %11, align 8
  %102 = call i32 @decode_unit3(%struct.TYPE_5__* %84, i32* %96, i32 %100, i32* %101)
  store i32 %102, i32* %15, align 4
  %103 = load i32, i32* %15, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %74
  %106 = load i32, i32* %15, align 4
  store i32 %106, i32* %7, align 4
  br label %117

107:                                              ; preds = %74
  %108 = load i32*, i32** %12, align 8
  %109 = load i32, i32* %108, align 4
  %110 = shl i32 %109, 6
  %111 = and i32 %110, 4032
  %112 = load i32*, i32** %13, align 8
  store i32 %111, i32* %112, align 4
  %113 = load i32*, i32** %11, align 8
  %114 = load i32, i32* %113, align 4
  %115 = ashr i32 %114, 2
  %116 = load i32*, i32** %12, align 8
  store i32 %115, i32* %116, align 4
  store i32 0, i32* %7, align 4
  br label %117

117:                                              ; preds = %107, %105, %72, %39
  %118 = load i32, i32* %7, align 4
  ret i32 %118
}

declare dso_local i32 @decode_unit3(%struct.TYPE_5__*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
