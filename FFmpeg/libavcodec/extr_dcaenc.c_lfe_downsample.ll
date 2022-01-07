; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dcaenc.c_lfe_downsample.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dcaenc.c_lfe_downsample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i64*, i32*, i32** }

@lfe_index = common dso_local global i32* null, align 8
@DCA_LFE_SAMPLES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i64*)* @lfe_downsample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lfe_downsample(%struct.TYPE_3__* %0, i64* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [512 x i64], align 16
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i64* %1, i64** %4, align 8
  %12 = load i32*, i32** @lfe_index, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %5, align 4
  store i32 0, i32* %11, align 4
  %18 = getelementptr inbounds [512 x i64], [512 x i64]* %9, i64 0, i64 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 4
  %21 = load i32**, i32*** %20, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32*, i32** %21, i64 %26
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = call i32 @memcpy(i64* %18, i32* %29, i32 4096)
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %123, %2
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @DCA_LFE_SAMPLES, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %126

35:                                               ; preds = %31
  store i64 0, i64* %10, align 8
  %36 = load i32, i32* %11, align 4
  store i32 %36, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %55, %35
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 512
  br i1 %39, label %40, label %60

40:                                               ; preds = %37
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [512 x i64], [512 x i64]* %9, i64 0, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @mul32(i64 %44, i32 %51)
  %53 = load i64, i64* %10, align 8
  %54 = add nsw i64 %53, %52
  store i64 %54, i64* %10, align 8
  br label %55

55:                                               ; preds = %40
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %37

60:                                               ; preds = %37
  store i32 0, i32* %6, align 4
  br label %61

61:                                               ; preds = %80, %60
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %85

65:                                               ; preds = %61
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [512 x i64], [512 x i64]* %9, i64 0, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 3
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @mul32(i64 %69, i32 %76)
  %78 = load i64, i64* %10, align 8
  %79 = add nsw i64 %78, %77
  store i64 %79, i64* %10, align 8
  br label %80

80:                                               ; preds = %65
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %7, align 4
  br label %61

85:                                               ; preds = %61
  %86 = load i64, i64* %10, align 8
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 2
  %89 = load i64*, i64** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  store i64 %86, i64* %92, align 8
  store i32 0, i32* %6, align 4
  br label %93

93:                                               ; preds = %116, %85
  %94 = load i32, i32* %6, align 4
  %95 = icmp slt i32 %94, 64
  br i1 %95, label %96, label %119

96:                                               ; preds = %93
  %97 = load i64*, i64** %4, align 8
  %98 = load i32, i32* %8, align 4
  %99 = mul nsw i32 %98, 64
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %99, %100
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = mul nsw i32 %101, %104
  %106 = load i32, i32* %5, align 4
  %107 = add nsw i32 %105, %106
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %97, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* %11, align 4
  %113 = add nsw i32 %111, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [512 x i64], [512 x i64]* %9, i64 0, i64 %114
  store i64 %110, i64* %115, align 8
  br label %116

116:                                              ; preds = %96
  %117 = load i32, i32* %6, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %6, align 4
  br label %93

119:                                              ; preds = %93
  %120 = load i32, i32* %11, align 4
  %121 = add nsw i32 %120, 64
  %122 = and i32 %121, 511
  store i32 %122, i32* %11, align 4
  br label %123

123:                                              ; preds = %119
  %124 = load i32, i32* %8, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %8, align 4
  br label %31

126:                                              ; preds = %31
  ret void
}

declare dso_local i32 @memcpy(i64*, i32*, i32) #1

declare dso_local i64 @mul32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
