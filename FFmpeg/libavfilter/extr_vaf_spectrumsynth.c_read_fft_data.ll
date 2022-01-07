; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vaf_spectrumsynth.c_read_fft_data.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vaf_spectrumsynth.c_read_fft_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__**, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32, i32, i32)* @read_fft_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_fft_data(%struct.TYPE_9__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %9, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %20, i64 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %10, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %8, align 4
  %28 = sub nsw i32 %26, %27
  %29 = mul nsw i32 %23, %28
  %30 = sub nsw i32 %29, 1
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %8, align 4
  %36 = sub nsw i32 %34, %35
  %37 = sub nsw i32 %36, 1
  %38 = mul nsw i32 %31, %37
  store i32 %38, i32* %12, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %128 [
    i32 128, label %42
    i32 129, label %85
  ]

42:                                               ; preds = %4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %84 [
    i32 131, label %46
    i32 134, label %46
    i32 130, label %65
    i32 132, label %65
    i32 133, label %65
  ]

46:                                               ; preds = %42, %42
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %48

48:                                               ; preds = %59, %46
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp sge i32 %49, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %48
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @read16_fft_bin(%struct.TYPE_7__* %53, i32 %54, i32 %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %52
  %60 = load i32, i32* %13, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %14, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %14, align 4
  br label %48

64:                                               ; preds = %48
  br label %84

65:                                               ; preds = %42, %42, %42
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %67

67:                                               ; preds = %78, %65
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp sge i32 %68, %69
  br i1 %70, label %71, label %83

71:                                               ; preds = %67
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %14, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @read8_fft_bin(%struct.TYPE_7__* %72, i32 %73, i32 %74, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %71
  %79 = load i32, i32* %13, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %14, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %14, align 4
  br label %67

83:                                               ; preds = %67
  br label %84

84:                                               ; preds = %42, %83, %64
  br label %128

85:                                               ; preds = %4
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  switch i32 %88, label %127 [
    i32 131, label %89
    i32 134, label %89
    i32 130, label %108
    i32 132, label %108
    i32 133, label %108
  ]

89:                                               ; preds = %85, %85
  %90 = load i32, i32* %12, align 4
  store i32 %90, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %91

91:                                               ; preds = %102, %89
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %11, align 4
  %94 = icmp sle i32 %92, %93
  br i1 %94, label %95, label %107

95:                                               ; preds = %91
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @read16_fft_bin(%struct.TYPE_7__* %96, i32 %97, i32 %98, i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %95
  %103 = load i32, i32* %13, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %13, align 4
  %105 = load i32, i32* %14, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %14, align 4
  br label %91

107:                                              ; preds = %91
  br label %127

108:                                              ; preds = %85, %85, %85
  %109 = load i32, i32* %12, align 4
  store i32 %109, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %110

110:                                              ; preds = %121, %108
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* %11, align 4
  %113 = icmp sle i32 %111, %112
  br i1 %113, label %114, label %126

114:                                              ; preds = %110
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* %14, align 4
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @read8_fft_bin(%struct.TYPE_7__* %115, i32 %116, i32 %117, i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %114
  %122 = load i32, i32* %13, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %13, align 4
  %124 = load i32, i32* %14, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %14, align 4
  br label %110

126:                                              ; preds = %110
  br label %127

127:                                              ; preds = %85, %126, %107
  br label %128

128:                                              ; preds = %4, %127, %84
  ret void
}

declare dso_local i32 @read16_fft_bin(%struct.TYPE_7__*, i32, i32, i32, i32) #1

declare dso_local i32 @read8_fft_bin(%struct.TYPE_7__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
