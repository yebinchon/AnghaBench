; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mss12.c_ff_mss12_decode_rect.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mss12.c_ff_mss12_decode_rect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i64, i32 (%struct.TYPE_15__*, i32*)* }

@MAX_OVERREAD = common dso_local global i64 0, align 8
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_mss12_decode_rect(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %8, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MAX_OVERREAD, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %6
  %22 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %22, i32* %7, align 4
  br label %121

23:                                               ; preds = %6
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 1
  %26 = load i32 (%struct.TYPE_15__*, i32*)*, i32 (%struct.TYPE_15__*, i32*)** %25, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 1
  %30 = call i32 %26(%struct.TYPE_15__* %27, i32* %29)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  switch i32 %31, label %119 [
    i32 128, label %32
    i32 130, label %64
    i32 129, label %96
  ]

32:                                               ; preds = %23
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %35 = load i32, i32* %13, align 4
  %36 = call i32 @decode_pivot(%struct.TYPE_14__* %33, %struct.TYPE_15__* %34, i32 %35)
  store i32 %36, i32* %15, align 4
  %37 = icmp slt i32 %36, 1
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 -1, i32* %7, align 4
  br label %121

39:                                               ; preds = %32
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %15, align 4
  %46 = call i32 @ff_mss12_decode_rect(%struct.TYPE_14__* %40, %struct.TYPE_15__* %41, i32 %42, i32 %43, i32 %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  store i32 -1, i32* %7, align 4
  br label %121

49:                                               ; preds = %39
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %15, align 4
  %55 = add nsw i32 %53, %54
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %15, align 4
  %59 = sub nsw i32 %57, %58
  %60 = call i32 @ff_mss12_decode_rect(%struct.TYPE_14__* %50, %struct.TYPE_15__* %51, i32 %52, i32 %55, i32 %56, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %49
  store i32 -1, i32* %7, align 4
  br label %121

63:                                               ; preds = %49
  br label %120

64:                                               ; preds = %23
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @decode_pivot(%struct.TYPE_14__* %65, %struct.TYPE_15__* %66, i32 %67)
  store i32 %68, i32* %15, align 4
  %69 = icmp slt i32 %68, 1
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  store i32 -1, i32* %7, align 4
  br label %121

71:                                               ; preds = %64
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* %13, align 4
  %78 = call i32 @ff_mss12_decode_rect(%struct.TYPE_14__* %72, %struct.TYPE_15__* %73, i32 %74, i32 %75, i32 %76, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %71
  store i32 -1, i32* %7, align 4
  br label %121

81:                                               ; preds = %71
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %15, align 4
  %86 = add nsw i32 %84, %85
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %15, align 4
  %90 = sub nsw i32 %88, %89
  %91 = load i32, i32* %13, align 4
  %92 = call i32 @ff_mss12_decode_rect(%struct.TYPE_14__* %82, %struct.TYPE_15__* %83, i32 %86, i32 %87, i32 %90, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %81
  store i32 -1, i32* %7, align 4
  br label %121

95:                                               ; preds = %81
  br label %120

96:                                               ; preds = %23
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %96
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* %13, align 4
  %110 = call i32 @decode_region_intra(%struct.TYPE_14__* %104, %struct.TYPE_15__* %105, i32 %106, i32 %107, i32 %108, i32 %109)
  store i32 %110, i32* %7, align 4
  br label %121

111:                                              ; preds = %96
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* %13, align 4
  %118 = call i32 @decode_region_inter(%struct.TYPE_14__* %112, %struct.TYPE_15__* %113, i32 %114, i32 %115, i32 %116, i32 %117)
  store i32 %118, i32* %7, align 4
  br label %121

119:                                              ; preds = %23
  store i32 -1, i32* %7, align 4
  br label %121

120:                                              ; preds = %95, %63
  store i32 0, i32* %7, align 4
  br label %121

121:                                              ; preds = %120, %119, %111, %103, %94, %80, %70, %62, %48, %38, %21
  %122 = load i32, i32* %7, align 4
  ret i32 %122
}

declare dso_local i32 @decode_pivot(%struct.TYPE_14__*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @decode_region_intra(%struct.TYPE_14__*, %struct.TYPE_15__*, i32, i32, i32, i32) #1

declare dso_local i32 @decode_region_inter(%struct.TYPE_14__*, %struct.TYPE_15__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
