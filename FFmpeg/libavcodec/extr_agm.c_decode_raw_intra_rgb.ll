; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_agm.c_decode_raw_intra_rgb.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_agm.c_decode_raw_intra_rgb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32*, i64** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, %struct.TYPE_5__*)* @decode_raw_intra_rgb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_raw_intra_rgb(%struct.TYPE_6__* %0, i32* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %6, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i64**, i64*** %14, align 8
  %16 = getelementptr inbounds i64*, i64** %15, i64 0
  %17 = load i64*, i64** %16, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %20, 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %21, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %17, i64 %28
  store i64* %29, i64** %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  br label %30

30:                                               ; preds = %108, %3
  %31 = load i32, i32* %11, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %111

36:                                               ; preds = %30
  store i32 0, i32* %12, align 4
  br label %37

37:                                               ; preds = %95, %36
  %38 = load i32, i32* %12, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %98

43:                                               ; preds = %37
  %44 = load i32*, i32** %5, align 8
  %45 = call i64 @bytestream2_get_byte(i32* %44)
  %46 = load i64, i64* %8, align 8
  %47 = add nsw i64 %45, %46
  %48 = load i64*, i64** %7, align 8
  %49 = load i32, i32* %12, align 4
  %50 = mul nsw i32 %49, 3
  %51 = add nsw i32 %50, 0
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %48, i64 %52
  store i64 %47, i64* %53, align 8
  %54 = load i64*, i64** %7, align 8
  %55 = load i32, i32* %12, align 4
  %56 = mul nsw i32 %55, 3
  %57 = add nsw i32 %56, 0
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %54, i64 %58
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %8, align 8
  %61 = load i32*, i32** %5, align 8
  %62 = call i64 @bytestream2_get_byte(i32* %61)
  %63 = load i64, i64* %9, align 8
  %64 = add nsw i64 %62, %63
  %65 = load i64*, i64** %7, align 8
  %66 = load i32, i32* %12, align 4
  %67 = mul nsw i32 %66, 3
  %68 = add nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %65, i64 %69
  store i64 %64, i64* %70, align 8
  %71 = load i64*, i64** %7, align 8
  %72 = load i32, i32* %12, align 4
  %73 = mul nsw i32 %72, 3
  %74 = add nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %71, i64 %75
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %9, align 8
  %78 = load i32*, i32** %5, align 8
  %79 = call i64 @bytestream2_get_byte(i32* %78)
  %80 = load i64, i64* %10, align 8
  %81 = add nsw i64 %79, %80
  %82 = load i64*, i64** %7, align 8
  %83 = load i32, i32* %12, align 4
  %84 = mul nsw i32 %83, 3
  %85 = add nsw i32 %84, 2
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %82, i64 %86
  store i64 %81, i64* %87, align 8
  %88 = load i64*, i64** %7, align 8
  %89 = load i32, i32* %12, align 4
  %90 = mul nsw i32 %89, 3
  %91 = add nsw i32 %90, 2
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %88, i64 %92
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %10, align 8
  br label %95

95:                                               ; preds = %43
  %96 = load i32, i32* %12, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %12, align 4
  br label %37

98:                                               ; preds = %37
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = load i64*, i64** %7, align 8
  %105 = sext i32 %103 to i64
  %106 = sub i64 0, %105
  %107 = getelementptr inbounds i64, i64* %104, i64 %106
  store i64* %107, i64** %7, align 8
  br label %108

108:                                              ; preds = %98
  %109 = load i32, i32* %11, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %11, align 4
  br label %30

111:                                              ; preds = %30
  ret i32 0
}

declare dso_local i64 @bytestream2_get_byte(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
